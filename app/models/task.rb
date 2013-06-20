class Task < ActiveRecord::Base
  attr_accessible :description, :name, :percentage_complete
end
