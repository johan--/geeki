Ext.define 'Rwiki.controller.tree.ContextMenu',
  extend: 'Ext.app.Controller'

  views: [
    'tree.ContextMenu'
  ]

  refs: [
    ref: 'menu'
    selector: 'rwikiTreeContextMenu'
  ]

  init: ->
    console.log('TreeNodeMenu#init', arguments)

    @control
      'menu #create':
        click: ->
          @application.fireEvent(RwikiEvent.createPage, @getPageNode())

      'menu #edit':
        click: ->
          @application.fireEvent(RwikiEvent.editPage, @getPageNode())

      'menu #rename':
        click: ->
          @application.fireEvent(RwikiEvent.notImplemented)

      'menu #delete':
        click: ->
          @application.fireEvent(RwikiEvent.notImplemented)

  getPageNode: ->
    @getMenu().getPageNode()
