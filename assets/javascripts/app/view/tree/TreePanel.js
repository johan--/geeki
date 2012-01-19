Ext.define('Rwiki.view.tree.TreePanel', {
  extend: 'Ext.tree.Panel',
  alias: 'widget.rwikiTreePanel',

  title: 'Rwiki Pages',
  width: 300,
  collapsible: true,
  resizable: true,
  store: Ext.create('Rwiki.store.PageNodes'),

  rootVisible: false
});
