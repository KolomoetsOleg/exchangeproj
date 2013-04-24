# encoding : utf-8

ActiveAdmin.register Bank do
  menu :label => "Банки"
  index do
 	  column "Название", :name
    column "Короткое название", :short_name
    column "Телефон", :telephone
    column "Факс", :fax
    column "E-mail", :email
    column "Web", :web
    #column :index #индекс
    column "Город", :sortable => :city_id do |bank|
      link_to bank.city.name, admin_bank_path(bank)
    end
    # column :address_in_city
    # column :cash_dispenser #банкомат
    # column :subsidiary #филиал
    # column :additional_office #дополнительный офис
    # column :exchange_point #обменный пункт
    # column :date_of_entering_into_the_BSR #дата внесения в кГР
    # column :address_from_statute #адрес из устава
    column "Адрес", :actual_address #фактический адрес
    # column :corresponding_account #корсчет
    # column :bic #БИК
    # column :tin #ИНН
    # column :rcco #ОКПО
    # column :account_in_rubles
    # column :account_in_dollar
    # column :account_in_euro
    # column :cash_transfers #денежные переводы
    # column :office_hours #часы работы
    # column :chairman_of_the_council #председательсовета
    # column :statute #устав
    # column :chartered_capital #уставной капитал
    # column :members_of_council #члены совета банка

    # column :created_at
    # column :updated_at
    #column :version
    default_actions
  end

  form do |f|
    f.inputs "Details" do
      f.input :name, :label => "Название"
      f.input :short_name, :label => "Короткое название"
      f.input :email, :label => "E-mail"
      f.input :telephone, :label => "Телефон"
      f.input :fax, :label => "Факс"
      f.input :web, :label => "Web"
      f.input :city, :label => "Город"
      f.input :actual_address, :label => "Адрес"
    end
    f.buttons
  end

  show do |ad|
      attributes_table do
        row :name
        row :short_name
        row :email
        row :telephone
        row :fax
        row :web
        row :city
        row :actual_address
      end
      active_admin_comments
    end
end
