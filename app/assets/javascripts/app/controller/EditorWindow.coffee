Ext.define 'Geeki.controller.EditorWindow',
  extend: 'Ext.app.Controller',

  views: [
    'EditorWindow'
  ]

  refs: [
    ref: 'editorWindow'
    selector: 'geekiEditorWindow'
  ]

  init: ->
    @control
      'geekiEditorWindow #save':
        click: ->
          console.log('Save clicked!')

      'geekiEditorWindow #save-and-continue':
        click: ->
          console.log('Save and continue clicked!')

      'geekiEditorWindow #cancel':
        click: ->
          win = @getEditorWindow()
          win.close()
