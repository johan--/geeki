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
          console.log('TreeNodeMenu#create', arguments)
          @application.fireEvent(RwikiEvent.createPage, @getPageNode())

      'menu #edit':
        click: ->
          @application.fireEvent(RwikiEvent.editPage, @getPageNode())

      'menu #rename':
        click: ->
          console.log('TreeNodeMenu#rename', arguments)

      'menu #delete':
        click: ->
          console.log('TreeNodeMenu#delete', arguments)

  getPageNode: ->
    @getMenu().getPageNode()
