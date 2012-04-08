#= require_tree ./app/model
#= require_tree ./app/store
#
#= require ./app/view/tree/context_menu
#= require ./app/view/tree/panel
#= require ./app/view/tab/page_tab
#= require ./app/view/tab/toolbar
#= require ./app/view/tab/statusbar
#= require ./app/view/tab/panel
#= require ./app/view/editor_window
#= require ./app/view/about_dialog
#= require ./app/view/not_implemented_dialog
#= require ./app/view/viewport
#
#= require ./app/controller/tree/context_menu
#= require ./app/controller/tree/panel
#= require ./app/controller/tab/page_tab
#= require ./app/controller/tab/toolbar
#= require ./app/controller/tab/panel
#= require ./app/controller/editor_window
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
