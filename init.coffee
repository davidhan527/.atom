atom.packages.onDidActivatePackage (pack) ->
  if pack.name == 'ex-mode'
    Ex = pack.mainModule.provideEx()
    editorElement = atom.views.getView(atom.workspace.getActiveTextEditor())
    Ex.registerCommand 'R', -> atom.commands.dispatch(editorElement, 'rails-transporter:open-view')
