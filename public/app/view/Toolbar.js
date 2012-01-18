Ext.define('Rwiki.view.Toolbar', {
  extend: 'Ext.toolbar.Toolbar',
    alias: 'widget.rwikiToolbar',

  page: null,

  editPageButton: Ext.create('Ext.Button', {
    id: 'edit-page',
    text: 'Edit page',
    iconCls: 'icon-edit',
    disabled: true
  }),

  printPageButton: Ext.create('Ext.Button', {
    id: 'print-page',
    text: 'Print page',
    iconCls: 'icon-print',
    disabled: true
  }),

  constructor: function(options) {
    this.items = [
      this.editPageButton,
      this.printPageButton,
      '-', {
        text: 'Find page',
        iconCls: 'icon-search'
      }, {
        text: 'Find text',
        iconCls: 'icon-search'
      }, '->', {
        text: 'About',
        iconCls: 'icon-about'
      }];
    this.callParent(options);
  },

  enablePageButtons: function(enabled) {
    this.editPageButton.enable(enabled);
    this.printPageButton.enable(enabled);
  },

  setPage: function(page) {
    this.page = page;
    this.enablePageButtons(this.page !== null);
  },

  getPage: function() {
    return this.page;
  }
});
