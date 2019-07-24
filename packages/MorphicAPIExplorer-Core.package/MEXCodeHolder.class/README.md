I'm a specialized CodeHolder. Besides displaying and storing code like my superclass does, I offer individual buttons and their corresponding functionality in addition to automatically generate code for the user. 

To ensure my functionality, I'm in close contact to a MEXToolExplorationView. Whenever it tells me it has a new selection of methods, I must update my content accordingly. To properly update my contents, I ask for the selected methods and what kind of morph class will be created.

If you want to update my contents manually, just call #updateCodeForCurrentSelection. If you want my contents after a user typed something into my morph's window, make sure to call #save before calling #contents, otherwise they will be outdated.