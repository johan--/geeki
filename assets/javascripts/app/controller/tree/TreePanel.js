Ext.define('Rwiki.controller.tree.TreePanel', {
  extend: 'Ext.app.Controller',

  views: [
    'tree.TreePanel'
  ],

  stores: [
    'PageNodes',
    'Pages'
  ],

  refs: [{
    selector: 'rwikiTreePanel',
    ref: 'treePanel'
  }, {
    selector: 'rwikiTabPanel',
    ref: 'tabPanel'
  }],

  init: function() {
    console.log('TreePanel#init', arguments);

    this.control({
      rwikiTreePanel: {
        select: this._onNodeSelect,
        itemcontextmenu: this._onNodeContextMenu
      }
    });
  },

  _onNodeSelect: function(rowModel, record, index, opts) {
    var self = this;
    console.log('TreePanel#_onNodeSelect', arguments);

    var id = record.getId();
    Rwiki.model.Page.load(id, {
      success: function(page) {
        console.log('Page#load', arguments);
        self.application.fireEvent('rwiki:pageLoaded', page);

        Rwiki.model.Page.setCurrentPage(page);

        var panel = self.getTabPanel();
        var tab = panel.findPageTabById(id);
        if (tab === null) {
          tab = Ext.create('Rwiki.view.tab.PageTab', { page: page });
          panel.add(tab);
        }
        panel.setActiveTab(tab);
      }
    });
  },

  _onNodeContextMenu: function(view, pageNode, item, index, event) {
    console.log('TreePanel#_onNodeContextMenu', arguments);

    // display the context menu
    var menu = this._getContextMenu();
    menu.showFor(pageNode, event.getXY());

    event.stopEvent();
  },

  _getContextMenu: function() {
    this._contextMenu = this._contextMenu || Ext.create('Rwiki.view.tree.TreeNodeMenu');
    return this._contextMenu;
  }
});
