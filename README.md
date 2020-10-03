
- User sign up
- User logs in

	- get: /cafes/

			- get: /cafes/:id, cafes#show  >> shows cafes/:id/images, cafes/:id/links, cafes/:id/timings
				-  get: cafes/:id/images, images#index  ?? do I need?
				-  get: cafes/:id/timings, timings#index  ?? do I need?

			- get: cafes/:id/edit, cafes#edit  >> nested_attributes :links, :images, :timings

			- get: /cafes/new, cafes#new   >> nested_attributes :links, :images, :timings  

			- post: /cafes/create, cafes#create         
			- delete: /cafes/create, cafes#delete    

	- get: /user/:id, users#show  >> show details of a user and his cafes and edit button

		- get: /user/:id/edit 

		- patch: /user/:id/

		<!-- - get: /users/:id/cafes/new, cafes#new  >> like '/cafes/new' but it will directly add the cafe to user's cafe -->

		- get: /users/:id/visits, visits#index >> shows list of all cafes to pick from

		- get: /users/:id/visits/new, visits#new

		- post: /visits, visits#create, visits#delete
 
		- path: /visits/:id,  visits#update  >> updates user last visit time

		- delete: visits/:id, visits#delete







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