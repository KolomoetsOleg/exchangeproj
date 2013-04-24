# encoding : utf-8

ActiveAdmin.register AdminUser do
   index do
    column "E-mail", :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    
    default_actions
  end

   form do |f|
    f.inputs "Admin Details" do
      f.input :email, :label => "E-mail"
    end
    f.buttons
  end
end
