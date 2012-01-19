Ext.define 'Rwiki.controller.tab.Toolbar',
  extend: 'Ext.app.Controller'

  views: [
    'tab.Toolbar'
  ]

  refs: [
    selector: 'rwikiToolbar'
    ref: 'toolbar'
  ]

  init: ->
    @application.on 'rwiki:pageLoaded', (page) =>
      @getToolbar().setPage(page)

    @control
      'rwikiToolbar #edit-page':
        click: (button, event) ->
          page = @getToolbar().getPage()
          @application.fireEvent(RwikiEvent.editPage, page)
