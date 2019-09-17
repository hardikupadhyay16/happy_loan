class CreateEmpRequisitions < ActiveRecord::Migration[6.0]
  def change
    create_table :emp_requisitions do |t|
      t.string :title
      t.string :job_hours
      t.date :start_date
      t.integer :position
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
