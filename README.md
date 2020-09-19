
- User sign up
- User logs in

	- get: /cafes/

			- get: /cafes/:id, cafes#show           
				(shows links,images and public notes)

			- get: cafes/:id/edit, cafes#edit          

			- get: /cafes/new, cafes#new            

    
	- get: /users/:id/cafes               
		(shows user list of fav cafes, in last visit order)

		- get: /users/:id/cafes/id, cafes#show       

			- get: /users/:id/cafes/:id/edit, cafes#edit

	- get: /users/:id/edit
		(form: whows list of all cafes to pick from)


	- post: /goings, goings#create



- User can edit a Cafe by adding images or links
- User can see its list of Cafes in /user/:id/cafes
- User can make notes of a Cafe in /user/:id/cafe/:id




today: 30/07

----list
cafe4, visited: 17/03, skip_on: null
cafe3, visited: 29/05, skip_on: null
cafe1, visited: 30/06, skip_on: null 
cafe0, visited: 30/06, skip_on: null
----list
action: skip!

----list
cafe3, visited: 29/05, skip_on: null
cafe1, visited: 30/06, skip_on: null
cafe0, visited: 30/06, skip_on: null
----list
----out
cafe4, visited: 17/03, skip_on: 30/07
----out
action: visit!

today: 31/07

----list
cafe4, visited: 17/03, skip_on: 30/07
cafe0, visited: 30/06, skip_on: null
cafe1, visited: 30/06, skip_on: null
cafe3, visited: 30/07, skip_on: null
----list
action: visit!

----list
cafe4, visited: 17/03, skip_on: 30/07
cafe0, visited: 30/06, skip_on: null
cafe1, visited: 30/06, skip_on: null
cafe3, visited: 30/07, skip_on: null
----list
action: visit!