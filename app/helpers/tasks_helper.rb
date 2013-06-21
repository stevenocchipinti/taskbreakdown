module TasksHelper
  def back_path(task)
    task.parent ? task_path(task.parent) : tasks_path
  end
end
