class CreateCreditCards < ActiveRecord::Migration[5.2]
  def change
    create_table :credit_cards do |t|
      t.string :card_id
      t.string :customer_id
      t.references :user, null: false, index: true, foreign_key: true
      t.timestamps
    end
  end
end
