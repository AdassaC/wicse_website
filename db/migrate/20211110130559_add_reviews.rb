class AddReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :rating, null: false
      t.integer :year, null: false
      t.string :semester, null: false
      t.string :summary, null: false
    end
    #ADD ELEMENTS FROM OTHER TABLES
    add_reference :reviews, :course
    add_reference :reviews, :user
  end
end
