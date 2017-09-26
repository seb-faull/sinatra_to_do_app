class ToDoManager
  
  @@todos = ["Buy some milk!", "Feed the cat"]        #class variable
  
  
  def self.index
    @@todos.join(" | ")
  end
  
  
  
  def self.show (id)
    @@todos[id]
  end
  
  
  
  def self.create (new_todo)
    @@todos.push(new_todo)
    #@@todos << new_todo
    @@todos.join(" | ")
  end
  
  
  
  def self.delete (id)
    @@todos.delete_at(id)
  end
  
  
  
  def self.update (id, new_todo)
    @@todos[id] = new_todo
    @@todos.join(" | ")
  end
  
end







