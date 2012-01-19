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
          console.log('PageTab#show', arguments);
        },
        close: function(tab) {
          console.log('PageTab#close', arguments);
          this.application.fireEvent('rwiki:tabClose', tab);
        }
      }
    });
  }
});
