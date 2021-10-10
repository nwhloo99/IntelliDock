IntelliDock
IntelliDock is an intelligent docking solution to improve docking traffic

Introduction
With the goal of improving visibility of the availability of docking bays and 
showing expected timings of hauliers to arrive at the docks, IntelliDock aims 
to achieve this using a clear front end app to be installed on mobile devices 
such as phones or tablets, and an assisting server side to manage the processes, 
as well as allowing managers to monitor the situation on the ground more effectively.

Cautions
Currently, the application only runs on devices without server-side support, 
however if the project is to be developed on, server-side support would create 
a more effective system

==================================

Using the App
When users first enter the application, they will be greeted with a login page 
prompting users to select either warehouse user or haulier user.

==================================

Warehouse Users
If `Warehouse` is selected, the Warehouse User page will be displayed

Docking bays have 3 states
* Available (Green border)
* Awaiting (Yellow border)
* Occupied (Red border)

Available
If the docking bay is available, the Warehouse User can hit `Request` to send a 
request to the hauliers indicating that the warehouse is ready to either unload 
or load based on the type of docking bay.

Awaiting
If the docking bay is awaiting, that Docking Bay is currently waiting for Hauler 
with the specified number to arrive

Occupied
If the docking bay is occupied, that Docking bay is currently unloading or loading 
cargo, however, if the Warehouse User sees that the current unloading or loading 
process is completing, the Warehouse User can choose to send a request using 
`Request` for a Hauler to come to the Docking Bay

Making Requests
After hitting request, Warehouse Users will be prompted to confirm the creation 
of the request so as to avoid overloading the queue

==================================

Haulier Users
If `Hauler` is selected, the Haulier User page will be displayed

Here, Hauliers can view the requests sent by the Warehouse Users and hit the 
`right arrow button` on the request to select that request to add to their list 
of current request. They will then be brought to a confirmation page, where Hauliers 
can hit `accept` to confirm the acceptance of the job. This will update the overall 
request list and remove it so other Hauliers will not take the same request

The Haulier will then hit `Start` under current to begin performing this request.

When the job is complete, the Haulier can just hit `Finish` to indicate that the job 
is complete and move on to the next request.

Next Steps
* Put Model on to Webserver
* Count the jobs each Haulier has taken
* Have a third login option for Managers to view overvieew