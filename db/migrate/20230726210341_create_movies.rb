class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name, null: false
      t.date :release_date, null: false
      t.string :rate, default: 'G', null: false

      t.timestamps
    end
  end
end
