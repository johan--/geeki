Ext.define 'Geeki.view.EditorWindow',
  extend: 'Ext.window.Window'
  alias: 'widget.geekiEditorWindow'

  title: 'Editing page'
  modal: true
  maximizable: true
  closeAction: 'hide'
  width: 800
  minWidth: 350
  height: 400

  layout: 'border'

  constructor: (options  = {}) ->
    @htmlEditor = Ext.create 'Ext.form.HtmlEditor',
      region: 'center'

    options.items = [@htmlEditor]

    @callParent([options])

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

  setPage: (page) ->
    @page = page
    @htmlEditor.setValue(@page.get('body'))
