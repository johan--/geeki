Ext.define('Rwiki.model.PageNode', {
  extend: 'Ext.data.Model',
  fields: [
    { name: 'id', type: 'int' },
    { name: 'text', type: 'string' }
  ],

  isRoot: function() {
    return this.id === 1;
  }
});
