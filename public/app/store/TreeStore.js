Ext.define('Rwiki.store.TreeStore', {
  extend: 'Ext.data.TreeStore',

  autoLoad: true,
  proxy: {
    type: 'ajax',
    url: 'app/data/tree.json',
    reader: {
      type: 'json',
      root: 'pages'
    }
  },
  root: { expanded: true }
});

