class CreateScales < ActiveRecord::Migration
  def change
    create_table :scales do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
