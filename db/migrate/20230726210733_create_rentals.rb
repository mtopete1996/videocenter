class CreateRentals < ActiveRecord::Migration[7.0]
  def change
    create_table :rentals do |t|
      t.belongs_to :customer, null: false, foreign_key: true
      t.belongs_to :movie, null: false, foreign_key: true
      t.decimal :price, null: false, default: 0
      t.date :borrow_date, null: false, default: -> { 'CURRENT_TIMESTAMP' }
      t.date :return_date, null: false

      t.timestamps
    end
  end
end
