class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.decimal :percentage_complete

      t.timestamps
    end
  end
end
