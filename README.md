
User sign up
User logs in
	- cafes/index
		links to:
			- cafes/id      (shows links,images and public notes)
			- cafes/id/edit (if you are a user)
			- cafes/new     (if you are a user)
	- user/id/cafes
		- user/id/cafes/id (also shows user's cafe notes)
			- user/id/cafes/id/edit
	- User can edit a Cafe by adding images or links
	- User can see its list of Cafes in user/:id/cafes
	- User can make notes of a Cafe in user/:id/cafe/:id



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