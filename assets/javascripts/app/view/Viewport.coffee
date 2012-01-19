Ext.define 'Rwiki.view.Viewport',
  extend: 'Ext.container.Viewport'

  layout: 'border'
  items: [
    Ext.create 'Rwiki.view.tree.Panel',
      region: 'west'

    Ext.create 'Rwiki.view.tab.Panel',
      region: 'center'
  ]
