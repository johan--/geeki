Ext.define('Rwiki.store.TreeStore', {
  extend: 'Ext.data.TreeStore',
  requires: [
    'Rwiki.model.Page'
  ],

  model: 'Rwiki.model.Page',
  autoLoad: true,
  proxy: {
    type: 'ajax',
    url: 'app/data/tree.json',
    reader: {
      type: 'json'
    }
  }
});
