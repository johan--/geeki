Ext.define('Rwiki.controller.TreePanel', {
  extend: 'Ext.app.Controller',
  requires: [
    'Rwiki.view.TreeNodeMenu'
  ],

  views: [
    'TreePanel'
  ],

  stores: [
    'Tree'
  ],

  refs: [{
    selector: 'rwikiTreePanel',
    ref: 'treePanel'
  }, {
    selector: 'rwikiTabPanel',
    ref: 'tabPanel'
  }],

  init: function() {
    Rwiki.logMethodCall('TreePanel#init', arguments);

    this.control({
      rwikiTreePanel: {
        select: this._onNodeSelect,
        itemcontextmenu: this._onNodeContextMenu
      }
    });
  },

  onLaunch: function() {
    var store = this.getTreeStore();
    store.load({
      callback: function() {
        Rwiki.logMethodCall('TreeStore#load', arguments);
      }
    });
  },

  _onNodeSelect: function(rowModel, record, index, opts) {
    Rwiki.logMethodCall('TreePanel#_onNodeSelect', arguments);

    var panel = this.getTabPanel();
    var tab = panel.findPageTabById(record.getId());
    if (tab === null) {
      tab = Ext.create('Rwiki.view.PageTab', { pageRecord: record });
      panel.add(tab);
    }
    panel.setActiveTab(tab);
  },

  _onNodeContextMenu: function(view, record, item, index, event) {
    Rwiki.logMethodCall('TreePanel#_onNodeContextMenu', arguments);

    // set the context menu record
    var menuController = this.getController('TreeNodeMenu');
    menuController.setPageRecord(record);

    // display the context menu
    var menu = this._getContextMenu();
    menu.showAt(event.getXY());

    event.stopEvent();
  },

  _getContextMenu: function() {
    this._contextMenu = this._contextMenu || Ext.create('Rwiki.view.TreeNodeMenu');
    return this._contextMenu;
  }
});
