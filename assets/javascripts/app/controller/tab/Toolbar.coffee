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
        @application.fireEvent(RwikiEvent.lastPageClosed)

    @control
      'rwikiToolbar #edit-page':
        click: ->
          page = @getToolbar().getPage()
          @application.fireEvent(RwikiEvent.editPage, page)

      'rwikiToolbar #reload-page':
        click: ->
          page = @getToolbar().getPage()

          Ext.getBody().mask("Lading page #{page.get('text')}")
          Rwiki.model.Page.load page.getId(),
            success: (page) =>
              @getPanel().getActiveTab().setPage(page)
              Ext.getBody().unmask()
