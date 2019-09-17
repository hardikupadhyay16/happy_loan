class CreatePositionApprovals < ActiveRecord::Migration[6.0]
  def change
    create_table :position_approvals do |t|
      t.integer :annual_compensation
      t.string :phone
      t.string :email
      t.boolean :approved
      t.text :comment
      t.references :emp_requisition, null: false, foreign_key: true

      t.timestamps
    end
  end
end
