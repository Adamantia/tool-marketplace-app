class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :rate
      t.string :make
      t.text :description
      t.string :location
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
