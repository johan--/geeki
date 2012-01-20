Ext.define 'Geeki.view.tab.Toolbar',
  extend: 'Ext.toolbar.Toolbar'
  alias: 'widget.geekiToolbar'

  page: null

  constructor: (options = {}) ->
    @editPageButton = Ext.create 'Ext.Button',
      id: 'edit-page'
      text: 'Edit page'
      iconCls: 'icon-edit'
      disabled: true

    @printPageButton = Ext.create 'Ext.Button',
      id: 'print-page'
      text: 'Print page'
      iconCls: 'icon-print'
      disabled: true

    @reloadPageButton = Ext.create 'Ext.Button',
      id: 'reload-page'
      text: 'Reload page'
      iconCls: 'icon-reload'
      disabled: true

    @findPageButton = Ext.create 'Ext.Button',
      id: 'find-page'
      text: 'Find page'
      iconCls: 'icon-search'

    @findTextButton = Ext.create 'Ext.Button',
      id: 'find-text'
      text: 'Find text'
      iconCls: 'icon-search'

    @aboutButton = Ext.create 'Ext.Button',
      id: 'about'
      text: 'About'
      iconCls: 'icon-about'

    options.items = [
      @editPageButton
      @reloadPageButton
      @printPageButton
      '-'
      @findPageButton
      @findTextButton
      '->'
      @aboutButton
    ]

    @callParent([options])

  disablePageButtons: (disabled) ->
    @editPageButton.setDisabled(disabled)
    @reloadPageButton.setDisabled(disabled)
    @printPageButton.setDisabled(disabled)

  setPage: (page) ->
    @page = page

    disabled = @page == null
    @disablePageButtons(disabled)

  getPage: ->
    @page
