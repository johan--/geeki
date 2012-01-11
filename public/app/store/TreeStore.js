Ext.define('Rwiki.store.TreeStore', {
  extend: 'Ext.data.TreeStore',

  root: {
    text: 'Root',
    expanded: true,
    children: [{
      text: 'Child 1',
      leaf: true
    }, {
      text: 'Child 2',
      leaf: true
    }]
  }
});

