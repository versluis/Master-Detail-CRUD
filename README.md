Master-Detail-CRUD
==================

iOS Master/Detail project, demonstrating classic CRUD behaviour (Create, Read, Update, Delete)

Overview
========

The Table View is powered by Core Data and is user editable, thanks to a dynamic index in each object which rebuilt every time a new object is added. 

The Detail View serves for displaying data from the master cell and can also be sent into "editing mode" so data can be changed.

Before adding a new object the AddViewController asks the user for data. 

Note that both the Add View and the Detail View are implementing their own Protocols so that the Master View can be in charge of displaying and dismissing them. We do this so that the Master View can handle data that has been changed by the other views.
