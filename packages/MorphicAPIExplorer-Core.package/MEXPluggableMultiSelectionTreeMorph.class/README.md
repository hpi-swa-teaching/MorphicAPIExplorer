I'm the actual morph that will be displayed for the tree. Also you can select multiple items instead of a single selection in my superclass which are items contained in ListItemWrappers. 

When the user selects a method I give a new list of selected methods to the MEXToolExplorationView by using #listSelectionFor:with:.

My most important methods are ones to draw the tree with its selection correctly. The handling of events (mouseDown, mouseUp) and the actual selection of methods are also significant.

I inherit from PluggableTreeMorph but only implement the most needed functionality to display and select multiple items. Any other method will throw a MEXUnsupportedError.