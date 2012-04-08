Ext.define 'Geeki.view.Viewport',
  extend: 'Ext.container.Viewport'

  layout: 'border'
  items: [
    Ext.create 'Geeki.view.tree.Panel',
      region: 'west'

    Ext.create 'Geeki.view.tab.Panel',
      region: 'center'
  ]
