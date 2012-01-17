Ext.define('Rwiki.view.PageTab', {
  extend: 'Ext.tab.Tab',

  constructor: function(options) {
    this.pageRecord = options.pageRecord;

    options.title = this.pageRecord.get('text');
    options.text = this.pageRecord.get('body');

    this.callParent([options]);
  },

  getPageRecord: function() {
    return this.pageRecord;
  }
});
