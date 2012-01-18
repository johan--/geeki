Ext.define('Rwiki.controller.Toolbar', {
  extend: 'Ext.app.Controller',

  views: [
    'Toolbar'
  ],

  refs: [{
    selector: 'rwikiToolbar',
    ref: 'toolbar'
  }],

  init: function() {
    var self = this;

    this.application.on('rwiki:pageLoaded', function(page) {
      self.getToolbar().setPage(page);
    });

    this.control({
      'rwikiToolbar #edit-page': {
        click: function(button, event) {
          Rwiki.logMethodCall('Toolbar#editPage', arguments);
          var page = this.getToolbar().getPage();
          console.log(page);
        }
      }
    });
  }
});
