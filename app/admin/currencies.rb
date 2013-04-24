# encoding : utf-8

ActiveAdmin.register Currency do
	menu :label => "Валюты"
  index do
 	  column "Название", :name
    column "Короткое название", :short_name

    default_actions
  end

  form do |f|
    f.inputs "Детали" do
      f.input :name , :label => "Название"
      f.input :short_name, :label => "Короткое название"
    end
    f.buttons
  end
end
