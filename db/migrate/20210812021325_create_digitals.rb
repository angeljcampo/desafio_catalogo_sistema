class CreateDigitals < ActiveRecord::Migration[5.2]
  def change
    create_table :digitals do |t|

      t.timestamps
    end
  end
end
