Ext.define 'Geeki.controller.tab.Panel',
  extend: 'Ext.app.Controller'

  views: [
    'tree.Panel'
    'tab.Panel'
  ],

  refs: [
      ref: 'tabPanel'
      selector: 'geekiTabPanel'
    ,
      ref: 'treePanel'
      selector: 'geekiTreePanel'
  ]

  init: ->
    console.log('TabPanel#init', arguments)

    @control
      geekiTabPanel:
        tabchange: (tabPanel, tab, oldTab) ->
          console.log('TabPanel#tabchange', arguments)
          treePanel = @getTreePanel()
          treePanel.selectNodeById(tab.getPage().getId())

        add: (tabPanel, tab) ->
          console.log('TabPanel#add', arguments)
