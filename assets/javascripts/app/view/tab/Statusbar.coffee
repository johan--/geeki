Ext.define 'Geeki.view.tab.Statusbar',
  extend: 'Ext.ux.StatusBar'
  alias: 'widget.geekiTabStatusbar'

  id: 'geeki-status-bar'

  constructor: (options = {}) ->
    options.text = options.defaultText = 'Ready'
    options.iconCls = options.defaultIconCls = 'ready-icon'

    @callParent([options])
