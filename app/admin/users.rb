ActiveAdmin.register User do

  action_item :go_to_some_path, only: :index do
    link_to 'UsersHome', users_path
  end


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :email, :address, :age
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :email, :address, :age, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end


  
  index do 

    column :id
    column :name
    column :email
    column :address
    column :age 
    actions
  
  end
end
