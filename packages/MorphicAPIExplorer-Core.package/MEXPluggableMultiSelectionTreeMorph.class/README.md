I'm the actual morph that will be displayed for the tree. Also you can select multiple items which are MEXMethods contained in MEXMethodListItemWrappers. When the user selects a method the selected methods will be updated in the MEXExplorationView since it's a mediator to share the selected methods with MEXCodeHolder as well.

My most important methods are ones to draw the tree with it's selection correctly. Also the handling of events (mouseDown, mouseUp) and the actual selection of methods are significant.

I inherit from PluggableTreeMorph but only implement the most needed functionality to display and select multiple items. Any other method will throw a MEXUnsupportedError.