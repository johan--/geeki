Ext.define('Rwiki.view.Viewport', {
  extend: 'Ext.container.Viewport',

  requires: [
    'Rwiki.view.TabPanel',
    'Rwiki.view.TreePanel'
  ],

  layout: 'border',
  items: [{
    region: 'center',
    xtype: 'tabPanel'
  }, {
    region: 'west',
    xtype: 'treePanel'
  }]
});

