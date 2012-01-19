Ext.Loader.setConfig({
  enabled: true
});

Ext.application({
  appFolder: '/app',
  name: 'Rwiki',

  controllers: [
    'TreePanel',
    'TreeNodeMenu',
    'TabPanel',
    'PageTab',
    'Toolbar'
  ],

  models: ['PageNode', 'Page'],
  stores: ['PageNodes', 'Pages'],

  autoCreateViewport: true,

  launch: function() {
    console.log('Initialize the application..');

    this.on('rwiki:tabClose', function(tab) {
      console.log("on rwiki:tabClose", arguments);
    });

    this.on('rwiki:createPage', function(parentPageNode) {
      console.log("on rwiki:createPage", arguments);
    })
  }
});
