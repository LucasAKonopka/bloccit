class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :severity
      t.belongs_to :rateable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
