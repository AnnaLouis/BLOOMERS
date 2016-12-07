ActiveAdmin.register Bloomer do

  permit_params :name, :city, :website, :category, :email, :address, :speciality, :date_creation, :description, :twitter_account, :logo, photos: []

  index do
    selectable_column
    column :name
    column :city
    column :category
    column :email
    column :speciality
    actions
  end

  form do |f|
    f.inputs "Identity" do
      f.input :name
      f.input :city
      f.input :address
      f.input :email
      f.input :website
      f.input :twitter_account
      f.input :date_creation
      f.input :category
      f.input :speciality
      f.input :description
      f.input :photos, as: :formtastic_attachinary
    end
    # f.inputs "Admin" do
    #   f.input :admin
    # end
    f.actions
  end


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

