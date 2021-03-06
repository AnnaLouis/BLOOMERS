ActiveAdmin.register Startup do

  permit_params :name, :short_description, :description, :date_creation, :twitter_account, :website

  index do
    selectable_column
    column :name
    column :date_creation
    column :website
    column :short_description
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
