class Task < ActiveRecord::Base
  attr_accessible :description, :name, :percentage_complete, :parent_id
  has_ancestry

  def percentage_complete
    if has_children?
      calculate_completion subtree.arrange
    else
      read_attribute :percentage_complete
    end
  end

  private

  def calculate_completion(subtree)
    subtree.inject(0) do |a, (task,subtasks)|
      if subtasks.size > 0
        a += calculate_completion(subtasks)
      else
        a += task.read_attribute(:percentage_complete)
      end
    end / subtree.size
  end

end
