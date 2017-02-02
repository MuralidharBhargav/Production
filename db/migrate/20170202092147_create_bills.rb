class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.text :Title
      t.text :description
      t.text :Amount

      t.timestamps
    end
  end
end
