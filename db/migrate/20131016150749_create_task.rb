class CreateTask < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.datetime :deadline
    end
  end
end
