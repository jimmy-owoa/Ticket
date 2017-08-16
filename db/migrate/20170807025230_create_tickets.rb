class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :description
      t.integer :status, default: 0
      t.integer :user_assigned

      t.timestamps null: false
    end
  end
end
