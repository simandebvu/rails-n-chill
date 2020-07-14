class CreateFilms < ActiveRecord::Migration[6.0]
  def change
    create_table :films do |t|
      t.string :title
      t.text :synposis

      t.timestamps
    end
  end
end
