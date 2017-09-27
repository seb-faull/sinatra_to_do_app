require 'sinatra'
require 'sinatra/reloader' if development?
require_relative "./ToDoManager.rb"


#INDEX - all the data - get request
get '/todos' do
	ToDoManager.index
end



#CREATE - create a new todo (resource name) - post request
post '/todos' do
	new_todo = params[:todo]
	ToDoManager.create(new_todo)
end


#SHOW - show a single record
get '/todos/:id' do
	id = params[:id].to_i		#dynamic url attributes
	ToDoManager.show(id)
end



#UPDATE - update a single record
put '/todos/:id' do
	id = params[:id].to_i
	updated_todo = params[:todo]
	ToDoManager.update(id, updated_todo)

end



#DESTROY - delete a single record
delete '/todos/:id' do
	id = params[:id].to_i
	ToDoManager.delete(id)
end


#Each resource (ie photos, todo, blog posts etc), needs the 7 RESTful routes. 
#RESTful routes allows us to do the 4 things of CRUD.