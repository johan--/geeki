Ext.define 'Rwiki.view.EditorWindow',
  extend: 'Ext.window.Window'

  title: 'Editor'
  width: 600
  minWidth: 350
  height: 350

  layout: 'border'
  items: [
    Ext.create 'Ext.form.HtmlEditor',
      region: 'center'
  ]
