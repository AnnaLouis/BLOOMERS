ActiveAdmin.register Bloomer do

  permit_params :name, :city, :country, :country, :website, :category, :email, :address, :speciality, :date_creation, :description, :twitter_account

  index do
    selectable_column
    column :name
    column :city
    column :category
    column :email
    column :speciality
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
