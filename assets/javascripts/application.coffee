#= require_tree ./app/model
#= require_tree ./app/store
#
#= require ./app/view/tree/ContextMenu
#= require ./app/view/tree/Panel
#= require ./app/view/tab/PageTab
#= require ./app/view/tab/Toolbar
#= require ./app/view/tab/Panel
#= require ./app/view/EditorWindow
#= require ./app/view/AboutDialog
#= require ./app/view/NotImplementedDialog
#= require ./app/view/Viewport
#
#= require ./app/controller/tree/ContextMenu
#= require ./app/controller/tree/Panel
#= require ./app/controller/tab/PageTab
#= require ./app/controller/tab/Toolbar
#= require ./app/controller/tab/Panel
#= require ./app/controller/EditorWindow
#
#= require_self

window.GeekiEvent =
  pageClosed: 'geeki:pageClosed'
  lastPageClosed: 'geeki:lastPageClosed'
  createPage: 'geeki:createPage'
  editPage: 'geeki:editPage'

  notImplemented: 'geeki:notImplemented'

Ext.Loader.setConfig
  enabled: false

Ext.application
  appFolder: '/assets/app'
  name: 'Geeki'

  controllers: [
    'tree.Panel'
    'tree.ContextMenu'

    'tab.Panel'
    'tab.PageTab'
    'tab.Toolbar'

    'EditorWindow'
  ]

  stores: ['PageNodes', 'Pages']
  models: ['PageNode', 'Page']

  autoCreateViewport: true

  launch: ->
    console.log('Initialize the application..')

    @on GeekiEvent.pageClosed, (tab) ->
      console.log("on #{GeekiEvent.pageClosed}", arguments)

    @on GeekiEvent.editPage, (page) ->
      console.log("on #{GeekiEvent.editPage}", arguments)

      id = page.getId()
      Geeki.model.Page.load id,
        success: (page) ->
          @editorWindow ||= Ext.create('Geeki.view.EditorWindow')
          @editorWindow.setPage(page)
          @editorWindow.show()

    @on GeekiEvent.createPage, (parentPageNode) ->
      console.log("on #{GeekiEvent.createPage}", arguments)

    @on GeekiEvent.notImplemented, ->
      @notImplementedNotification ||= Ext.create('Geeki.NotImplementedDialog')
      @notImplementedNotification.show()
