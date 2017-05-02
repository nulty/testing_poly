class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.string :description
      t.integer :account_id
      t.integer :statementable_id
      t.string :statementable_type
      t.timestamps null: false
    end

    create_table :payments do |t|
      t.string :name
      t.timestamps null: false
    end

    create_table :purchases do |t|
      t.string :name
      t.integer :line_item_id

      t.timestamps null: false
    end

    create_table :cards do |t|
      t.string :name
      t.integer :payment_id

      t.timestamps null: false
    end

    create_table :buyers do |t|
      t.string :name
      t.integer :purchase_id

      t.timestamps null: false
    end

    create_table :accounts do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
