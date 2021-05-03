ActiveAdmin.register Mp do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :name2, :surname, :gender, :birthdate, :deaddate, :detail, job_ids: [], 
                elections_attributes:[:id, :period_id, :party_id, :province, :other_province_name, :_destroy]
                
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
      input :gender, as: :radio, collection: ["Erkek", "Kadın"]
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
      input :jobs
    end
    inputs "Elections" do
      has_many :elections,
                new_record: "Add Election",
                remove_election: "Remove Election",
                allow_destroy: -> (e) {e} do |b|
                b.input :period, as: :select, collection: Period.all
                b.input :party, as: :select, collection: Party.all
                b.input :province
                b.input :other_province_name
      end  
    end

    
    f.actions
  end
  
end
