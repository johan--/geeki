Ext.define 'Rwiki.controller.tab.PageTab',
  extend: 'Ext.app.Controller'

  views: [
    'tab.PageTab'
  ]

  refs: [
    ref: 'tab',
    selector: 'rwikiPageTab'
  ],

  init: ->
    @control
      rwikiPageTab: ->
        show: (tab) ->
          console.log('PageTab#show', arguments)

  close: (tab)->
    console.log('PageTab#close', arguments)
    @application.fireEvent('rwiki:tabClose', tab)
