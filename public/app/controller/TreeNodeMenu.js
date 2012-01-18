Ext.define('Rwiki.controller.TreeNodeMenu', {
  extend: 'Ext.app.Controller',

  views: [
    'TreeNodeMenu'
  ],

  refs: [{
    ref: 'menu',
    selector: 'rwikiTreeNodeMenu'
  }],

  pageRecord: null,

  init: function() {
    Rwiki.logMethodCall('TreeNodeMenu#init', arguments);

    this.control({
      'menu #create': {
        click: function() {
          Rwiki.logMethodCall('TreeNodeMenu#create', arguments);
        }
      },
      'menu #edit': {
        click: function() {
          Rwiki.logMethodCall('TreeNodeMenu#edit', arguments);
        }
      },
      'menu #rename': {
        click: function() {
          Rwiki.logMethodCall('TreeNodeMenu#rename', arguments);
        }
      },
      'menu #delete': {
        click: function() {
          Rwiki.logMethodCall('TreeNodeMenu#delete', arguments);
        }
      }
    });
  },

  setPageRecord: function(record) {
    this.pageRecord = record;
  }
});
