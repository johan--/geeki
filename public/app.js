window.Rwiki = {
  logMethodCall: function(name, args) {
    console.log(name, args);
  }
};

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

  autoCreateViewport: true
});
