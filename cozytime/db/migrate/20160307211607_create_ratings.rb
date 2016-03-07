class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.integer :value
      t.references :ratable, polymorphic: true, index: true
      t.timestamps(null: false)
    end
  end
end
