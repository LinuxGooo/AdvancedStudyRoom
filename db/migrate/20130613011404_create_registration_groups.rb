class CreateRegistrationGroups < ActiveRecord::Migration
  def change
    create_table :registration_groups do |t|
      t.integer :event_id
      t.integer :parent_id
      t.string  :registration_group_type_id
      t.string  :integer
      t.string  :name, limit: 100
      t.integer :min_registrations
      t.integer :max_registrations

      t.timestamps
    end

    add_index :registration_groups, :event_id
    add_index :registration_groups, :parent_id
  end
end
