class CreateClients < ActiveRecord::Migration[5.2]
  def up
    create_table :clients do |t|
      t.string :name
      t.string :code

      t.timestamps
    end

    change_column :clients, :name, :string, limit: 15
    change_column :clients, :code, :string, limit: 30

    change_column_null :clients, :name, false
    change_column_null :clients, :code, false
  end

  def down
    drop_table :clients
  end
end
