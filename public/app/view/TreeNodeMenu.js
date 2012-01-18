Ext.define('Rwiki.view.TreeNodeMenu', {
  extend: 'Ext.menu.Menu',
  alias: 'widget.rwikiTreeNodeMenu',

  items: [{
    id: 'create',
    text: 'Create page',
    iconCls: 'icon-add-page'
  }, '-', {
    id: 'edit',
    text: 'Edit page',
    iconCls: 'icon-edit'
  }, {
    id: 'rename',
    text: 'Rename page',
    iconCls: 'icon-rename-page'
  }, {
    id: 'delete',
    text: 'Delete page',
    iconCls: 'icon-delete-page'
  }]
});
