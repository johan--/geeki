Ext.define('Rwiki.controller.TabPanel', {
  extend: 'Ext.app.Controller',

  views: [
    'TabPanel'
  ],

  refs: [{
    ref: 'tabPanel',
    selector: 'rwikiTabPanel'
  }],

  createTab: function(name, content) {
    console.log('Creating a new tab (name: ', name, ', content: ', content, ')');

    var tab = this.getTabPanel();
    console.log(tab);
  }
});

