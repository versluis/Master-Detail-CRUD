Master/Detail CRUD
==================

iOS Master/Detail project, demonstrating classic CRUD behaviour (Create, Read, Update, Delete).


Overview
========

The Table View is powered by Core Data and is user editable, thanks to a dynamic index in each object which is rebuilt every time a new object is added. It's just an Integer16 property (so no more than 32000 entries please). The index serves as an arbitrary Sort Descriptor so that our Fetched Results Controller can display a user defined order of data.

The index is rebuilt every time a new object is added, and when objects have been moved to a new row. It is not called when an object is deleted, which is the only time the index is disturbed. Rebuilding the index is very simple: it's a for loop through all fetched objects, taking an incrementing counter from the loop and passing it as the new index.

Note that we do not update the table view - all we do is update each object with a new index, then saving the context. The Fetched Results Controller notices this, re-fetches its data and reloads the Table View. 

The Detail View displays data from the master cell and can also be sent into "editing mode" so data can be changed.

Before adding a new object the AddViewController asks the user for data.

Both the Add View and the Detail View are implementing their own Protocols so that the Master View can be in charge of displaying and dismissing them. We do this so that the Master View can handle data that has been changed by the other views. Both views are initiated in the prepareForSegue:sender method. 
