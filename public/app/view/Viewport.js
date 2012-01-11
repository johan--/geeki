Ext.define('Rwiki.view.Viewport', {
  extend: 'Ext.container.Viewport',

  requires: [
    'Rwiki.view.TabPanel',
    'Rwiki.view.TreePanel'
  ],

  layout: 'border',
  items: [{
    region: 'center',
    xtype: 'rwiki.tabPanel'
  }, {
    region: 'west',
    xtype: 'rwiki.treePanel'
  }]
});

