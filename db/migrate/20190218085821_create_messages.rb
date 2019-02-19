class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :name
      t.text :text
      t.text :image
      t.timestamps null: false
    end
  end
end
