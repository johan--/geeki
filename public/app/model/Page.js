Ext.define('Rwiki.model.Page', {
  extend: 'Ext.data.Model',
  fields: [
    { name: 'id', type: 'int' },
    { name: 'text', type: 'string' },
    { name: 'body', type: 'string' }
  ],

  idProperty: 'id',
  proxy: {
    url: '/pages',
    type: 'rest',
    format: 'json'
  }
});
