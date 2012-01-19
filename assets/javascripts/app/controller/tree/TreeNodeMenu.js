Ext.define('Rwiki.controller.tree.TreeNodeMenu', {
  extend: 'Ext.app.Controller',

  views: [
    'tree.TreeNodeMenu'
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
          this.application.fireEvent(RwikiEvent.createPage, this.getPageNode());
        }
      },
      'menu #edit': {
        click: function() {
          this.application.fireEvent(RwikiEvent.editPage, this.getPageNode());
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
