Ext.define('Rwiki.view.Viewport', {
  extend: 'Ext.container.Viewport',
  layout: 'border',
  items: [{
    region: 'center',
    xtype: 'panel',
    title: 'Test',
    html: '<b>This</b> is a test'
  }]
});

