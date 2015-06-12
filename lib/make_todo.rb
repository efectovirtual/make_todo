require "make_todo/version"
require 'httparty'

class Tarea
  include HTTParty
  base_uri "http://makeitreal-todo.herokuapp.com"


  def self.create(titulo)
    response = self.post("/todo_items?todo_item[title]=#{titulo}")
    return JSON.parse(response.body)
  end

  def self.all
    response = self.get("/todo_items")
    return JSON.parse(response.body)
  end

  def self.find(id)
    response = self.get("/todo_items/#{id}")
    return JSON.parse(response.body)
  end

  def self.destroy(id)
    self.delete("/todo_items/#{id}")
    return "Tarea Destruida"
  end

  def self.update(id)
    self.patch("/todo_items/#{id}?todo_item[done]=true")
    return "Tarea Completada"
  end


end

