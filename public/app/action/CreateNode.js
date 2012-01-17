Ext.define('Rwiki.action.CreateNode', {
  extend: 'Ext.Action',

  text: 'Create a new page',
  disabled: false,
  handler: function(widget, event) {
    console.log('CreateNode widget:', widget, ', event:', event);
  }
});

