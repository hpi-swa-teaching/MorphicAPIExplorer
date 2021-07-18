I'm a data class responsible for storing the name and explicit example parameters of Squeak methods in addition to displaying them nicely as a code line through #asString. 

I contain information about my dependencies and my MEXCategory.

Since I'm being used as an item in MEXMethodListItemWrapper, I furthermore must provide accessors if I was selected. To make myself expandable, I just save a Collection of other MEXMethods.

