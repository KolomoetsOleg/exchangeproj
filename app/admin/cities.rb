# encoding : utf-8

ActiveAdmin.register City do
	menu :label => "Города"
  index do
 	  column "Название города", :name
    
    default_actions
  end

  form do |f|
    f.inputs "Детали" do
      f.input :name, :label => "Название города"
    end
    f.buttons
  end
end
