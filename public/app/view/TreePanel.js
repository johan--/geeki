Ext.define('Rwiki.view.TreePanel', {
  requires: ['Rwiki.store.TreeStore'],

  extend: 'Ext.tree.Panel',
  alias: 'widget.rwiki.treePanel',
  store: Ext.create('Rwiki.store.TreeStore')
});

