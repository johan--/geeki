Ext.define 'Geeki.controller.tab.Toolbar',
  extend: 'Ext.app.Controller'

  views: [
    'tab.Toolbar'
  ]

  refs: [
      selector: 'geekiToolbar'
      ref: 'toolbar'
    ,
      selector: 'geekiTabPanel'
      ref: 'panel'
  ]

  init: ->
    @application.on 'geeki:pageLoaded', (page) =>
      @getToolbar().setPage(page)

    @application.on GeekiEvent.pageClosed, (page) =>
      unless @getPanel().hasTabs()
        @getToolbar().setPage(null)
        @application.fireEvent(GeekiEvent.lastPageClosed)

    @control
      'geekiToolbar #edit-page':
        click: ->
          page = @getToolbar().getPage()
          @application.fireEvent(GeekiEvent.editPage, page)

      'geekiToolbar #reload-page':
        click: ->
          page = @getToolbar().getPage()

          Ext.getBody().mask("Lading page #{page.get('text')}")
          Geeki.model.Page.load page.getId(),
            success: (page) =>
              @getPanel().getActiveTab().updateContent(page.get('body'))
              Ext.getBody().unmask()

      'geekiToolbar #find-page':
        click: ->
          @application.fireEvent(GeekiEvent.notImplemented)

      'geekiToolbar #find-text':
        click: ->
          @application.fireEvent(GeekiEvent.notImplemented)

      'geekiToolbar #about':
        click: ->
          @aboutDialog ||= Ext.create('Geeki.AboutDialog')
          @aboutDialog.show()
