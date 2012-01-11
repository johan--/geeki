Ext.define('Rwiki.view.Viewport', {
  extend: 'Ext.container.Viewport',

  requires: [
    'Rwiki.view.TabPanel'
  ],

  layout: 'border',
  items: [{
    region: 'center',
    xtype: 'tabPanel'
  }]
});

