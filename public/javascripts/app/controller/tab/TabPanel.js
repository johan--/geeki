Ext.define('Rwiki.controller.tab.TabPanel', {
  extend: 'Ext.app.Controller',

  views: [
    'tree.TreePanel',
    'tab.TabPanel'
  ],

  refs: [{
    ref: 'tabPanel',
    selector: 'rwikiTabPanel'
  }, {
    ref: 'treePanel',
    selector: 'rwikiTreePanel'
  }],

  init: function() {
    console.log('TabPanel#init', arguments);

    this.control({
      rwikiTabPanel: {
        tabchange: function(tabPanel, tab, oldTab) {
          console.log('TabPanel#tabchange', arguments);
          var treePanel = this.getTreePanel();
          treePanel.getSelectionModel().select(tab.getPage());
        },
        add: function(tabPanel, tab) {
          console.log('TabPanel#add', arguments);
        }
      }
    });
  }
});
