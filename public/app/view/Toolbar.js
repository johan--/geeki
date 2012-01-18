Ext.define('Rwiki.view.Toolbar', {
  items: [{
    text: 'Edit page',
    iconCls: 'icon-edit',
    disabled: true
  }, {
    text: 'Print page',
    iconCls: 'icon-print',
    disabled: true
  }, '-', {
    text: 'Find page',
    iconCls: 'icon-search'
  }, {
    text: 'Find text',
    iconCls: 'icon-search'
  }, '->', {
    text: 'About',
    iconCls: 'icon-about'
  }]
});
