Ext.define 'Rwiki.view.EditorWindow',
  extend: 'Ext.window.Window'
  alias: 'widget.rwikiEditorWindow'

  title: 'Editing page'
  modal: true
  maximizable: true
  closeAction: 'hide'
  width: 800
  minWidth: 350
  height: 400

  layout: 'border'

  items: [
    Ext.create 'Ext.form.HtmlEditor',
      region: 'center'
  ]

  buttons: [
    Ext.create 'Ext.Button',
      text: 'Save',
      id: 'save'

    Ext.create 'Ext.Button',
      text: 'Save and continue',
      id: 'save-and-continue'

    Ext.create 'Ext.Button',
      text: 'Cancel',
      id: 'cancel'
  ]
