class AddUserReferenceToTask < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.foreign_key :users, column: 'created_by_id'
    end
  end
end
