class CreateYourboxes < ActiveRecord::Migration
  def change
    create_table :yourboxes do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
