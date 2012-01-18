Ext.define('Rwiki.store.Pages', {
  extend: 'Ext.data.Store',
  requires: [
    'Rwiki.model.Page'
  ],

  model: 'Rwiki.model.Page',
  autoLoad: false
});
