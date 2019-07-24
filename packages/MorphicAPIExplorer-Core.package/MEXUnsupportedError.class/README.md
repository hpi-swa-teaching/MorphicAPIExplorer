Since MEXPluggableMultiSelectionTree builds upon PluggableTree, there are operations that don't work for MEXPluggableMultiSelectionTree like keyevents.
To warn users about using these unsupported operations, I give them an error message.

If an operation isn't supported, just message me 'signal' for a generic error message,
If an operation just needs to use another API, use 'signal:' with the corresponding method name to guide users to which method they have to use.

