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
    console.log('TreeNodeMenu#init', arguments);

    this.control({
      'menu #create': {
        click: function() {
          console.log('TreeNodeMenu#create', arguments);
          this.application.fireEvent('rwiki:createPage', this.getPageNode());
        }
      },
      'menu #edit': {
        click: function() {
          console.log('TreeNodeMenu#edit', arguments);
        }
      },
      'menu #rename': {
        click: function() {
          console.log('TreeNodeMenu#rename', arguments);
        }
      },
      'menu #delete': {
        click: function() {
          console.log('TreeNodeMenu#delete', arguments);
        }
      }
    });
  },

  getPageNode: function() {
    return this.getMenu().getPageNode();
  }
});
