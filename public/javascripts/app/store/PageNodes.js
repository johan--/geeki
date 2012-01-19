Ext.define('Rwiki.store.PageNodes', {
  extend: 'Ext.data.TreeStore',
  requires: 'Rwiki.model.PageNode',
  model: 'Rwiki.model.PageNode',

  autoLoad: true,
  proxy: {
    url: '/data/tree.json',
    type: 'ajax'
  }
});
