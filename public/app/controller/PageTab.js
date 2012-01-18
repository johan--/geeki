Ext.define('Rwiki.controller.PageTab', {
  extend: 'Ext.app.Controller',

  views: [
    'PageTab'
  ],

  refs: [{
    ref: 'tab',
    selector: 'rwikiPageTab'
  }],

  init: function() {
    this.control({
      rwikiPageTab: {
        show: function(tab) {
          Rwiki.logMethodCall('PageTab#show', arguments);
        },
        close: function(tab) {
          Rwiki.logMethodCall('PageTab#close', arguments);
          this.application.fireEvent('rwiki:tabClose', tab);
        }
      }
    });
  }
});
