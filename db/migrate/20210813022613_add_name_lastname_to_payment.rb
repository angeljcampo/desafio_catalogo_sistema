class AddNameLastnameToPayment < ActiveRecord::Migration[5.2]
  def change
    add_column :payments, :name, :string
    add_column :payments, :lastname, :string
  end
end
