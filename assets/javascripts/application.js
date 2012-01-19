/**
 *= require_tree ./app/model
 *= require_tree ./app/store
 *
 *= require ./app/view/tree/TreeNodeMenu
 *= require ./app/view/tree/TreePanel
 *= require ./app/view/tab/PageTab
 *= require ./app/view/tab/Toolbar
 *= require ./app/view/tab/TabPanel
 *= require ./app/view/Viewport
 *
 *= require ./app/controller/tree/TreeNodeMenu
 *= require ./app/controller/tree/TreePanel
 *= require ./app/controller/tab/PageTab
 *= require ./app/controller/tab/Toolbar
 *= require ./app/controller/tab/TabPanel
 *
 *= require_self
 */

Ext.Loader.setConfig({
  enabled: false
});

Ext.application({
  appFolder: '/assets/app',
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
