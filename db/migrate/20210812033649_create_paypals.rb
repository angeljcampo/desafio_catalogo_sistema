class CreatePaypals < ActiveRecord::Migration[5.2]
  def change
    create_table :paypals do |t|
      t.string :cardnumber

      t.timestamps
    end
  end
end
