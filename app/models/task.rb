class Task < ActiveRecord::Base
  attr_accessible :description, :name, :percentage_complete, :parent_id
  has_ancestry
end
