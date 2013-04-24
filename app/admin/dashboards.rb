# encoding : utf-8

ActiveAdmin::Dashboards.build do

  section "Последние курсы валют" do
    table_for Exchange.order("created_at desc").limit(10) do
    column "Название банка", :bank
    column "Валюта", :currency
    column "Покупка", :buy
    column "Продажа", :sell
    column "Дата", :date

    end
    strong { link_to "Все курсы валют", admin_exchanges_path }
  end

end
