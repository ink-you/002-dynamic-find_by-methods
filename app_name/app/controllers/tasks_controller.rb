class TasksController < ApplicationController

  def incomplete
    # @tasks = Task.find(:all, :conditions => ['complete = ?', false])
    @tasks = Task.find_all_by_complete(false)
  end

  def last_incomplete
    # @tasks = Task.find(:all, :conditions => ['complete = ?', false], :order => 'created_at DESC')
    @tasks = Task.find_all_by_complete(false, :order => 'created_at DESC')
  end
end
