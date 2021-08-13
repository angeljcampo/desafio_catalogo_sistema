class CreateStripes < ActiveRecord::Migration[5.2]
  def change
    create_table :stripes do |t|
      t.string :cardnumber

      t.timestamps
    end
  end
end
