Ext.application
  appFolder: '/assets/app'
  name: 'Geeki'

  controllers: [
    'tree.Panel'
    'tree.ContextMenu'

    'tab.Panel'
    'tab.PageTab'
    'tab.Toolbar'

    'EditorWindow'
  ]

  stores: ['PageNodes', 'Pages']
  models: ['PageNode', 'Page']

  autoCreateViewport: true

  launch: ->
    console.log('Initialize the application..')

    @on GeekiEvent.pageClosed, (tab) ->
      console.log("on #{GeekiEvent.pageClosed}", arguments)

    @on GeekiEvent.editPage, (page) ->
      console.log("on #{GeekiEvent.editPage}", arguments)

      id = page.getId()
      Geeki.model.Page.load id,
        success: (page) ->
          @editorWindow ||= Ext.create('Geeki.view.EditorWindow')
          @editorWindow.setPage(page)
          @editorWindow.show()

    @on GeekiEvent.createPage, (parentPageNode) ->
      console.log("on #{GeekiEvent.createPage}", arguments)

    @on GeekiEvent.notImplemented, ->
      @notImplementedNotification ||= Ext.create('Geeki.NotImplementedDialog')
      @notImplementedNotification.show()
