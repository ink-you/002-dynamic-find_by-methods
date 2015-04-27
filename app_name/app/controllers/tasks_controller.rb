class TasksController < ApplicationController

  def incomplete
    @tasks = Task.find(:all, :conditions => ['complete = ?', false])
  end

  def last_incomplete
    @tasks = Task.find(:all, :conditions => ['complete = ?', false], :order => 'created_at DESC')
  end
end
