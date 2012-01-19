Ext.define('Rwiki.view.Viewport', {
  extend: 'Ext.container.Viewport',

  layout: 'border',
  items: [
    Ext.create('Rwiki.view.tree.TreePanel', { region: 'west' }),
    Ext.create('Rwiki.view.tab.TabPanel', { region: 'center' })
  ]
});
