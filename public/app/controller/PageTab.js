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
      tab: {
        show: function(tab) {
          Rwiki.logMethodCall('PageTab#show', arguments);
        },
        close: function(tab) {
          Rwiki.logMethodCall('PageTab#close', arguments);
        }
      }
    });
  }
});
