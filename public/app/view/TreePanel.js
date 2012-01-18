Ext.define('Rwiki.view.TreePanel', {
  extend: 'Ext.tree.Panel',
  alias: 'widget.rwikiTreePanel',

  requires: [
    'Rwiki.store.PageNodes'
  ],

  title: 'Rwiki Pages',
  width: 300,
  collapsible: true,
  resizable: true,
  store: Ext.create('Rwiki.store.PageNodes'),

  rootVisible: false
});
