I'm responsible for providing an easy interface for ToolBuilders to build MEXPluggableMultiSelectionTreeMorphs.

In comparison to my superclass, I must provide additional accessors to any instance variables that only support single selection, e.g.: #setSelectionList for #setSelected.

If a user tries to message me with methods corresponding to functionalities that are not supported in MEXPluggableMultiSelectionTreeMorph, I throw a MEXUnsupportedError and, if possible, tell them which method to use instead.

My most important methods are my accessors and #buildWith:.

