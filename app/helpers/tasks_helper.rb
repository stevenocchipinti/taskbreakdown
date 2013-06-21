module TasksHelper

  def back_path(task)
    task.parent ? task_path(task.parent) : tasks_path
  end

  def percentage_span_for(task)
    content_tag :span,
      "#{((task.percentage_complete||0)*100).to_i}%",
      :class => task.percentage_complete == 1 ? "count-positive" : "count"
  end

end
