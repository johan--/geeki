Ext.define('Rwiki.view.Viewport', {
  extend: 'Ext.container.Viewport',

  requires: [
    'Rwiki.view.tree.TreePanel',
    'Rwiki.view.tree.TreeNodeMenu',

    'Rwiki.view.tab.TabPanel',
    'Rwiki.view.tab.PageTab',
    'Rwiki.view.tab.Toolbar'
  ],

  layout: 'border',
  items: [
    Ext.create('Rwiki.view.tree.TreePanel', { region: 'west' }),
    Ext.create('Rwiki.view.tab.TabPanel', { region: 'center' })
  ]
});
