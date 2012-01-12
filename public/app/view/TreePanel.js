Ext.define('Rwiki.view.TreePanel', {
  extend: 'Ext.tree.Panel',
  alias: 'widget.rwikiTreePanel',
  requires: [
    'Rwiki.store.TreeStore'
  ],

  title: 'Rwiki Pages',
  width: 300,
  collapsible: true,
  resizable: true,
  store: Ext.create('Rwiki.store.TreeStore'),
  root: {}
});

