Ext.define('Rwiki.view.TreeNodeMenu', {
  extend: 'Ext.menu.Menu',
  alias: 'widget.rwikiTreeNodeMenu',

  pageNode: null,

  constructor: function(options) {
    this.createMenuItem = Ext.create('Ext.menu.Item', {
      id: 'create',
      text: 'Create page',
      iconCls: 'icon-add-page'
    });

    this.editMenuItem = Ext.create('Ext.menu.Item', {
      id: 'edit',
      text: 'Edit page',
      iconCls: 'icon-edit'
    });

    this.renameMenuItem = Ext.create('Ext.menu.Item', {
      id: 'rename',
      text: 'Rename page',
      iconCls: 'icon-rename-page'
    });

    this.deleteMenuItem = Ext.create('Ext.menu.Item', {
      id: 'delete',
      text: 'Delete page',
      iconCls: 'icon-delete-page'
    });

    this.items = [
      this.createMenuItem,
      '-',
      this.editMenuItem,
      this.renameMenuItem,
      this.deleteMenuItem
    ];

    this.callParent(options);
  },

  showFor: function(pageNode, xy) {
    this.setPageNode(pageNode);
    return this.showAt(xy);
  },

  getPageNode: function() {
    return this.pageNode;
  },

  setPageNode: function(pageNode) {
    this.pageNode = pageNode;
  }
});
