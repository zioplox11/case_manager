class CreateCases < ActiveRecord::Migration[5.1]
  def change
    create_table :cases do |t|
      t.string :status

      t.timestamps
    end
  end
end
