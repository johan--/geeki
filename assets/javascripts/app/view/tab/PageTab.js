Ext.define('Rwiki.view.tab.PageTab', {
  extend: 'Ext.tab.Tab',
  alias: 'widget.rwikiPageTab',

  page: null,

  constructor: function(options) {
    this.page = options.page;

    options.title = this.page.get('text');
    options.text = this.page.get('body');

    this.callParent([options]);
  },

  getPage: function() {
    return this.page;
  }
});
