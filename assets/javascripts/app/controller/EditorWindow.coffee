Ext.define 'Rwiki.controller.EditorWindow',
  extend: 'Ext.app.Controller',

  views: [
    'EditorWindow'
  ]

  refs: [
    ref: 'editorWindow'
    selector: 'rwikiEditorWindow'
  ]

  init: ->
    @control
      'rwikiEditorWindow #save':
        click: ->
          console.log('Save clicked!')

      'rwikiEditorWindow #save-and-continue':
        click: ->
          console.log('Save and continue clicked!')

      'rwikiEditorWindow #cancel':
        click: ->
          win = @getEditorWindow()
          win.close()
