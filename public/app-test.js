Ext.require('Ext.app.Application');

var Application = null;

Ext.onReady(function () {
  Application = Ext.create('Ext.app.Application', {
    name: 'Geeki',

    controllers: [
      'tree.Panel',
      'tree.ContextMenu',

      'tab.Panel',
      'tab.PageTab',
      'tab.Toolbar',

      'EditorWindow'
    ],

    launch:function () {
      //include the tests in the test.html head
      jasmine.getEnv().addReporter(new jasmine.TrivialReporter());
      jasmine.getEnv().execute();
    }
  });
});
