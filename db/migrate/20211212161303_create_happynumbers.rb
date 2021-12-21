class CreateHappynumbers < ActiveRecord::Migration[6.0]
  def change
    create_table :happynumbers do |t|
      t.integer :number
      t.text :result

      t.timestamps
    end
  end
end
