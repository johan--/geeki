Ext.define 'Rwiki.AboutDialog',
  extend: 'Ext.Window'

  title: 'About'
  width: 400
  height: 200
  plain: true
  modal: true
  closeAction: 'hide'

  constructor: (options  = {}) ->
    @closeButton = Ext.create 'Ext.Button',
      text: 'Close'
      handler: =>
        @close()

    options.buttons = [@closeButton]

    @callParent([options])
