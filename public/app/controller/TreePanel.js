Ext.define('Rwiki.controller.TreePanel', {
  extend: 'Ext.app.Controller',

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
        select: function(rowModel, record, index, opts) {
          console.log('select rowModel: ', rowModel, ', record:', record, ', index:', index, ', opts:', opts);

          var panel = this.getTabPanel();
          var title = record.data.text;
          var tab = Ext.create('Ext.tab.Tab', { title: title, text: 'This is a content for: ' + title })
          panel.add(tab);
          panel.setActiveTab(tab);
        }
      }
    });
  }
});


