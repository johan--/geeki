#= require_tree ./app/model
#= require_tree ./app/store
#
#= require ./app/view/tree/TreeNodeMenu
#= require ./app/view/tree/TreePanel
#= require ./app/view/tab/PageTab
#= require ./app/view/tab/Toolbar
#= require ./app/view/tab/TabPanel
#= require ./app/view/EditorWindow
#= require ./app/view/Viewport
#
#= require ./app/controller/tree/TreeNodeMenu
#= require ./app/controller/tree/TreePanel
#= require ./app/controller/tab/PageTab
#= require ./app/controller/tab/Toolbar
#= require ./app/controller/tab/TabPanel
#= require ./app/controller/EditorWindow
#
#= require_self

window.RwikiEvent =
  createPage: 'rwiki:createPage'
  editPage: 'rwiki:editPage'

Ext.Loader.setConfig
  enabled: false

Ext.application
  appFolder: '/assets/app'
  name: 'Rwiki'

  controllers: [
    'tree.TreePanel'
    'tree.TreeNodeMenu'

    'tab.TabPanel'
    'tab.PageTab'
    'tab.Toolbar'

    'EditorWindow'
  ]

  stores: ['PageNodes', 'Pages']
  models: ['PageNode', 'Page']

  autoCreateViewport: true

  launch: ->
    console.log('Initialize the application..')

    @on 'rwiki:tabClose', (tab) ->
      console.log("on rwiki:tabClose", arguments)

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
