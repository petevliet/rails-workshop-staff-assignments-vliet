class ChangeLocationsPeopleTableName < ActiveRecord::Migration
  def change
    rename_table :locations_people, :assignments
  end
end
