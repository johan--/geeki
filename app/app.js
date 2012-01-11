Ext.application({
  appFolder: 'app',
  name: 'Rwiki',

  launch: function() {
    Ext.create('Ext.container.Viewport', {
      layout: 'border',
      items: [{
        xtype: 'panel',
        title: 'Test',
        html: '<b>This</b> is a test'
      }]
    });
  }
});

