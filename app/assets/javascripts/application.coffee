#= require_tree ./app/model
#= require_tree ./app/store
#
#= require ./app/view/tree/ContextMenu
#= require ./app/view/tree/Panel
#= require ./app/view/tab/PageTab
#= require ./app/view/tab/Toolbar
#= require ./app/view/tab/Statusbar
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
