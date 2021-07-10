As MEXToolExplorationView I provide the main view to the user. So I display a tree where the user can select multiple methods, a container where a morph will be displayed before any methods are executed on the morph, a container where the morph will be displayed after the methods are executed on the morph and a code panel where the user can customize the code, copy it or run and test the changes they made.

I'm mainly used as a mediator to delegate information and communication between the seperated components MEXPluggableMultiSelectionTreeMorph, MEXCodeHolder and the playground.

I provide a button to save the morphs the user has built. I display these morphs together with the standardMorphs in the morphBox.

For my specs asking for the contents I opened on, e.g. the contained methods, I must save it and provide methods to access its contents. For the same reason I have to save the selected methods. Since I have to set contents for the playground I have to save it too.

Since I hold the selected methods I send a signal #selectedMethods to my dependents whenever they changed. So you can change the selected methods by using #setSelectionFor:with:. In order to update the playground contents the corresponding method #updatePlaygroundContents: could be called.

