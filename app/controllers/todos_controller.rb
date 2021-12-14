class TodosController < ApplicationController
  before_action :authenticate
  
  def index
    @todos = Todo.from_user(session[:current_email])
  end

  def new
    @todo = Todo.new
  end

  def create 
    @todo = Todo.new(todo_params.merge(email: session[:current_email]))
    @todo.save
    redirect_to root_path
  end

  private 

  def todo_params
    params.require(:todo).permit(:title)
  end
end