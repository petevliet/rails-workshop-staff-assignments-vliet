class AddAssignmentsTable < ActiveRecord::Migration
  def change
    create_join_table :people, :locations do |t|
      t.index :person_id
      t.index :location_id
      t.string :role
    end
  end
end
