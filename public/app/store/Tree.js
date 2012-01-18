Ext.define('Rwiki.store.Tree', {
  extend: 'Ext.data.TreeStore',
  requires: [
    'Rwiki.model.PageNode'
  ],

  model: 'Rwiki.model.PageNode',
  autoLoad: true,
  proxy: {
    url: 'app/data/tree.json',
    type: 'ajax'
  }
});
