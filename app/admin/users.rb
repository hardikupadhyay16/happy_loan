ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :first_name, :last_name, :role

  form do |f|
    f.inputs do
      f.input :email
      f.input :password if f.object.new_record?
      f.input :password_confirmation if f.object.new_record?
      f.input :first_name
      f.input :last_name
      f.input :role
    end
    f.actions
  end

  filter :email
  filter :first_name
  filter :last_name
  filter :role

  index do
    selectable_column
    id_column
    column :email
    column :first_name
    column :last_name
    column :role
    column :created_at
    actions
  end
end
