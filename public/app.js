Ext.application({
  appFolder: 'app',
  name: 'Rwiki',

  controllers: [
    'TreePanel',
    'TreeNodeMenu',
    'TabPanel',
    'PageTab'
  ],

  models: ['Page'],
  stores: ['TreeStore'],

  autoCreateViewport: true
});
