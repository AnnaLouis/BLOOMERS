ActiveAdmin.register User do

  permit_params :email, :encrypted_password, :first_name, :last_name, :admin, :startup_admin, :bloomer_admin

  index do
    selectable_column
    column :first_name
    column :last_name
    column :email
    column :admin
    column :startup_admin
    column :bloomer_admin
    actions
  end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
