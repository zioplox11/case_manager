class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :status
      t.string :image_url
      t.string :redacted_url
      t.belongs_to :case, index: true, foreign_key: true

      t.timestamps
    end
  end
end
