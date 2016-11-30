ActiveAdmin.register Program do

  permit_params :name, :short_description, :description, :duration, :price, :equity

  index do
    selectable_column
    column :name
    column :short_description
    column :duration
    column :equity
    column :price
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
