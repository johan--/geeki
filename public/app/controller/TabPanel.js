Ext.define('Rwiki.controller.TabPanel', {
  extend: 'Ext.app.Controller',

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
    console.log('Initialize Rwiki.controller.TabPanel');

    this.control({
      rwikiTabPanel: {
        tabchange: function(tabPanel, tab, oldTab) {
          console.log('tabchange tab:', tab, ', oldTab:', oldTab);
          var treePanel = this.getTreePanel();
          treePanel.getSelectionModel().select(tab.getPageRecord());
        }
      }
    });
  }
});
