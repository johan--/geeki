Ext.Loader.setConfig({
  enabled: false
});

Ext.application({
  appFolder: '/javascripts/app',
  name: 'Rwiki',

  controllers: [
    'tree.TreePanel',
    'tree.TreeNodeMenu',

    'tab.TabPanel',
    'tab.PageTab',
    'tab.Toolbar'
  ],

  stores: ['PageNodes', 'Pages'],
  models: ['PageNode', 'Page'],

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
