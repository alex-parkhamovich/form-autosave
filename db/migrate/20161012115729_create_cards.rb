class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :title
      t.string :desc
      t.integer :hours
      t.text :recomendations

      t.timestamps
    end
  end
end
