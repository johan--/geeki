Ext.define('Rwiki.controller.TreePanel', {
  extend: 'Ext.app.Controller',
  requires: [
    'Rwiki.view.TreeNodeMenu'
  ],

  views: [
    'TreePanel'
  ],

  refs: [{
    ref: 'tabPanel',
    selector: 'rwikiTabPanel'
  }],

  init: function() {
    console.log('Initialize Rwiki.controller.TreePanel');

    this.control({
      'rwikiTreePanel': {
        render: function() {
          console.log('rwikiTreePanel was rendered');
        },
        select: this.onNodeSelect,
        itemcontextmenu: this.onNodeContextMenu
      }
    });
  },

  onNodeSelect: function(rowModel, record, index, opts) {
    console.log('select rowModel: ', rowModel, ', record:', record, ', index:', index, ', opts:', opts);

    var panel = this.getTabPanel();
    var title = record.data.text;
    var body = record.data.body;

    var tab = Ext.create('Ext.tab.Tab', { title: title, text: body });
    panel.add(tab);
    panel.setActiveTab(tab);
  },

  onNodeContextMenu: function(view, record, item, index, event) {
    console.log('itemcontextmenu, record: ', record);

    var x = event.browserEvent.clientX;
    var y = event.browserEvent.clientY;
    this.contextMenu =  this.contextMenu || Ext.create('Rwiki.view.TreeNodeMenu');
    this.contextMenu.showAt([x, y]);

    event.stopEvent();
  }
});


