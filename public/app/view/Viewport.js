Ext.define('Rwiki.view.Viewport', {
  extend: 'Ext.container.Viewport',

  requires: [
    'Rwiki.view.TabPanel',
    'Rwiki.view.PageTab',
    'Rwiki.view.Toolbar',

    'Rwiki.view.TreePanel',
    'Rwiki.view.TreeNodeMenu'
  ],

  layout: 'border',
  items: [{
    region: 'center',
    xtype: 'rwikiTabPanel'
  }, {
    region: 'west',
    xtype: 'rwikiTreePanel'
  }]
});
