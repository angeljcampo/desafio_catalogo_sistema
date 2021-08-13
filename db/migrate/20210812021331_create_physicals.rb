class CreatePhysicals < ActiveRecord::Migration[5.2]
  def change
    create_table :physicals do |t|

      t.timestamps
    end
  end
end
