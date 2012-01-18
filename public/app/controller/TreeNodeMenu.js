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
    console.log('Initialize Rwiki.controller.TreeNodeMenu');

    this.control({
      'menu #create': {
        click: function() {
          console.log('Create clicked, page: ', this.pageRecord);
        }
      },
      'menu #edit': {
        click: function() {
          console.log('Edit clicked, page: ', this.pageRecord);
        }
      },
      'menu #rename': {
        click: function() {
          console.log('Rename clicked, page: ', this.pageRecord);
        }
      },
      'menu #delete': {
        click: function() {
          console.log('Delete clicked, page: ', this.pageRecord);
        }
      }
    });
  },

  setPageRecord: function(record) {
    this.pageRecord = record;
  }
});
