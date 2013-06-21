class Task < ActiveRecord::Base
  attr_accessible :description, :name, :percentage_complete
  has_ancestry
end
