window.Rwiki = {
  logMethodCall: function(name, args) {
    console.log(name, args);
  }
};

Ext.Loader.setConfig({
  enabled: true
});

Ext.application({
  appFolder: 'app',
  name: 'Rwiki',

  controllers: [
    'TreePanel',
    'TreeNodeMenu',
    'TabPanel',
    'PageTab',
    'Toolbar'
  ],

  models: ['Page'],
  stores: ['Tree'],

  autoCreateViewport: true,

  launch: function() {
    console.log('Initialize the application..');
    this.on('rwiki:tabClose', function(tab) {
      console.log('closing...', tab);
    });
  }
});
