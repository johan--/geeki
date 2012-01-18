Ext.define('Rwiki.controller.TabPanel', {
  extend: 'Ext.app.Controller',
  requires: [
    'Rwiki.view.PageTab'
  ],

  views: [
    'TabPanel',
    'TreePanel'
  ],

  refs: [{
    ref: 'tabPanel',
    selector: 'rwikiTabPanel'
  }, {
    ref: 'treePanel',
    selector: 'rwikiTreePanel'
  }],

  init: function() {
    Rwiki.logMethodCall('TabPanel#init', arguments);

    this.control({
      rwikiTabPanel: {
        tabchange: function(tabPanel, tab, oldTab) {
          Rwiki.logMethodCall('TabPanel#tabchange', arguments);
          var treePanel = this.getTreePanel();
          treePanel.getSelectionModel().select(tab.getPageRecord());
        },
        add: function(tabPanel, tab) {
          Rwiki.logMethodCall('TabPanel#add', arguments);
        }
      }
    });
  }
});
