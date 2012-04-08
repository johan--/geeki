Ext.define 'Geeki.controller.tree.ContextMenu',
  extend: 'Ext.app.Controller'

  views: [
    'tree.ContextMenu'
  ]

  refs: [
    ref: 'menu'
    selector: 'geekiTreeContextMenu'
  ]

  init: ->
    console.log('TreeNodeMenu#init', arguments)

    @control
      'menu #create':
        click: ->
          @application.fireEvent(GeekiEvent.createPage, @getPageNode())

      'menu #edit':
        click: ->
          @application.fireEvent(GeekiEvent.editPage, @getPageNode())

      'menu #rename':
        click: ->
          @application.fireEvent(GeekiEvent.notImplemented)

      'menu #delete':
        click: ->
          @application.fireEvent(GeekiEvent.notImplemented)

  getPageNode: ->
    @getMenu().getPageNode()
