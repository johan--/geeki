Ext.define 'Geeki.AboutDialog',
  extend: 'Ext.Window'

  title: 'About'
  width: 400
  height: 200
  plain: true
  modal: true
  closeAction: 'hide'
  layout: 'border'

  constructor: (options  = {}) ->
    @closeButton = Ext.create 'Ext.Button',
      text: 'Close'
      handler: =>
        @close()

    options.items = [
      Ext.create 'Ext.tab.Panel',
        region: 'center'
        items: [
            title: 'Version'
            html: '<p>foo</p>'
          ,
            title: 'Author'
            html: '<p>Łukasz Bandzarewicz</p>'
        ]
    ]

    options.buttons = [@closeButton]

    @callParent([options])
