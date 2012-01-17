Ext.define('Rwiki.controller.PageTab', {
  extend: 'Ext.app.Controller',

  views: [
    'PageTab',
  ],

  refs: [{
    ref: 'tab',
    selector: 'rwikiPageTab'
  }],

  init: function() {
    this.control({
      tab: {
        show: function(tab) {
          console.log('show tab: ', tab);
        },
        close: function(tab) {
          console.log('closing tab: ', tab);
        }
      }
    });
  }
});
