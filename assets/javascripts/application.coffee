#= require_tree ./app/model
#= require_tree ./app/store
#
#= require ./app/view/tree/ContextMenu
#= require ./app/view/tree/Panel
#= require ./app/view/tab/PageTab
#= require ./app/view/tab/Toolbar
#= require ./app/view/tab/Panel
#= require ./app/view/EditorWindow
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

window.RwikiEvent =
  pageClosed: 'rwiki:pageClosed'
  createPage: 'rwiki:createPage'
  editPage: 'rwiki:editPage'

Ext.Loader.setConfig
  enabled: false

Ext.application
  appFolder: '/assets/app'
  name: 'Rwiki'

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

    @on RwikiEvent.pageClosed, (tab) ->
      console.log("on #{RwikiEvent.pageClosed}", arguments)

    @on RwikiEvent.editPage, (page) ->
      console.log("on #{RwikiEvent.editPage}", arguments)

      id = page.getId()
      Rwiki.model.Page.load id,
        success: (page) ->
          @editorWindow ||= Ext.create('Rwiki.view.EditorWindow')
          @editorWindow.setPage(page)
          @editorWindow.show()

    @on RwikiEvent.createPage, (parentPageNode) ->
      console.log("on #{RwikiEvent.createPage}", arguments)
