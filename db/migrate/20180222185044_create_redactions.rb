class CreateRedactions < ActiveRecord::Migration[5.1]
  def change
    create_table :redactions do |t|
      t.integer :h
      t.integer :w
      t.string :axis
      t.belongs_to :image, index: true, foreign_key: true

      t.timestamps
    end
  end
end
