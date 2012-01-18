Ext.define('Rwiki.store.Tree', {
  extend: 'Ext.data.TreeStore',
  requires: [
    'Rwiki.model.PageNode'
  ],

  model: 'Rwiki.model.PageNode',
  autoLoad: true,
  proxy: {
    type: 'ajax',
    url: 'app/data/tree.json',
    reader: {
      type: 'json'
    }
  }
});
