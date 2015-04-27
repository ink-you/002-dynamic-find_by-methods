class TasksController < ApplicationController

  def incomplete
    @tasks = Task.where('complete = ?', false)
  end

  def last_incomplete
    @tasks = Task.where('complete = ?', false).order('created_at DESC')
  end
end
