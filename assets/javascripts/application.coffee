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

    @on 'rwiki:editPage', (page) ->
      console.log('on rwiki:editPage', arguments)

      @editorWindow ||= Ext.create('Rwiki.view.EditorWindow')
      @editorWindow.show()

    @on 'rwiki:createPage', (parentPageNode) ->
      console.log("on rwiki:createPage", arguments)
