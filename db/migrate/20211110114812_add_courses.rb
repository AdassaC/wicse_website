class AddCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :course_id, null: false
      t.string :name, null: false
    end
    add_reference :courses, :college
  end 
end
