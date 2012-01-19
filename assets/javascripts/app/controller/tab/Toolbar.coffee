Ext.define 'Rwiki.controller.tab.Toolbar',
  extend: 'Ext.app.Controller'

  views: [
    'tab.Toolbar'
  ]

  refs: [
      selector: 'rwikiToolbar'
      ref: 'toolbar'
    ,
      selector: 'rwikiTabPanel'
      ref: 'panel'
  ]

  init: ->
    @application.on 'rwiki:pageLoaded', (page) =>
      @getToolbar().setPage(page)

    @application.on RwikiEvent.pageClosed, (page) =>
      unless @getPanel().hasTabs()
        @getToolbar().setPage(null)

    @control
      'rwikiToolbar #edit-page':
        click: (button, event) ->
          page = @getToolbar().getPage()
          @application.fireEvent(RwikiEvent.editPage, page)
