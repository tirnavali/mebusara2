ActiveAdmin.register Party do

  show do
    attributes_table do
      row :logo do |img|
        image_tag img.logo
      end
      row :name
      row :shortname
      row :establishdate
      
      row :created_at
      row :updated_at
    end
    party.name
  end
  permit_params :name, :shortname, :establishdate, :logo

  # permit_params do
  #   permitted = [:name, :shortname, :establishdate, :logo]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
