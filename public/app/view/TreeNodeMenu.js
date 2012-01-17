Ext.define('Rwiki.view.TreeNodeMenu', {
  extend: 'Ext.menu.Menu',
  requires: ['Rwiki.action.CreateNode'],

  alias: 'widget.rwikiTreeNodeMenu',

  items: [{
    id: 'create',
    text: 'Create a new page'
  }, '-', {
    id: 'edit',
    text: 'Edit page'
  }, {
    id: 'rename',
    text: 'Rename page'
  }, {
    id: 'delete',
    text: 'Delete page'
  }]
});

