Ext.define('Rwiki.controller.TreeNodeMenu', {
  extend: 'Ext.app.Controller',

  views: [
    'TreeNodeMenu'
  ],

  refs: [{
    ref: 'menu',
    selector: 'rwikiTreeNodeMenu'
  }],

  init: function() {
    console.log('Initialize Rwiki.controller.TreeNodeMenu');

    this.control({
      'menu #create': {
        click: function() {
          console.log('Create clicked!');
        }
      },
      'menu #edit': {
        click: function() {
          console.log('Edit clicked!');
        }
      },
      'menu #rename': {
        click: function() {
          console.log('Rename clicked!');
        }
      },
      'menu #delete': {
        click: function() {
          console.log('Delete clicked!');
        }
      }
    });
  }
});
