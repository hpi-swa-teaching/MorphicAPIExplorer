As a MEXToolOverView I provide the user an overview of all possible categories methods of the Morphic framework could be grouped by.

My important methods are #changeToExplorationViewFor: to switch the view to MEXToolExplorationView for a specific MEXCategory. The MEXToolOverview class>>category* contain hardcoded information about which methods (MEXMethod) with which parameters are contained in a MEXCategory. Those are the categories that will be displayed in the OverView Window.

I provide a text box for searching for MEXMethods and MEXCategories and switch to the corresponding entry via clicking.
