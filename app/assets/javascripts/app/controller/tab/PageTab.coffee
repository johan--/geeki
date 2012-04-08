Ext.define 'Geeki.controller.tab.PageTab',
  extend: 'Ext.app.Controller'

  views: [
    'tab.PageTab'
  ]

  refs: [
    ref: 'tab',
    selector: 'geekiPageTab'
  ]

  init: ->
    @control
      geekiPageTab:
        show: (tab) ->
          console.log('PageTab#show', arguments)

        destroy: (tab)->
          @application.fireEvent(GeekiEvent.pageClosed, tab)
