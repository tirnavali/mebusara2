ActiveAdmin.register Mp do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :name2, :surname, :gender, :birthdate, :deaddate, :detail
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :name2, :surname, :gender, :birthdate, :deaddate, :detail]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form title: 'New Mp' do |f|
    inputs do
      input :name
      input :name2
      input :surname
      input :gender
      input :birthdate, as: :datepicker,
                            datepicker_options: {
                              min_date: "1850-01-01",
                              max_date: Time.now,
                              changeMonth: true,
                              changeYear: true,
                              yearRange: "1850:#{Time.now.year}"                            
                            }
      input :deaddate, as: :datepicker,
                            datepicker_options: {
                              min_date: "1850-01-01",
                              max_date: Time.now,
                              changeMonth: true,
                              changeYear: true,
                              yearRange: "1850:#{Time.now.year}"
                            }
      input :detail
    end
    
    f.actions
  end
  
end
