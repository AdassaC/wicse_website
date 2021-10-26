class AddColleges < ActiveRecord::Migration[6.1]
  def change
    create_table :colleges do |t|
      t.string :name, null: false
      t.string :state, null: false
      t.string :city, null: false
    end
  end
end
