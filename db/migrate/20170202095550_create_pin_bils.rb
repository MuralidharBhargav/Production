class CreatePinBils < ActiveRecord::Migration[5.0]
  def change
    create_table :pin_bils do |t|
      t.text :Title
      t.text :Date_of_payment
      t.text :Description
      t.text :amount

      t.timestamps
    end
  end
end
