# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# City.create(:name => "City1")
# City.create(:name => "City2")

# Bank.create(:name => "Bank1", :short_name => "B1", :telephone => "123456789", :fax => "111111111", "web" => "http://", :email => "Bank1@mail.ru", :index => "", :city_id => 1, :address_in_city => "", :cash_dispenser => 0, :subsidiary => 0, :additional_office => 0, :exchange_point => 0, :date_of_entering_into_the_BSR => "", :address_from_statute => "", :actual_address => "City1", :corresponding_account => 0.00, :bic => "", :tin => "", :rcco => "", :account_in_rubles => "", :account_in_dollar => "", :account_in_euro => "", :cash_transfers => "", :office_hours => "", :chairman_of_the_council => "", :statute => "", :chartered_capital => "", :members_of_council => "")
# Bank.create(:name => "Bank2", :short_name => "B2", :telephone => "987654321", :fax => "222222222", "web" => "http://", :email => "Bank2@mail.ru", :index => "", :city_id => 2, :address_in_city => "", :cash_dispenser => 0, :subsidiary => 0, :additional_office => 0, :exchange_point => 0, :date_of_entering_into_the_BSR => "", :address_from_statute => "", :actual_address => "City2", :corresponding_account => 0.00, :bic => "", :tin => "", :rcco => "", :account_in_rubles => "", :account_in_dollar => "", :account_in_euro => "", :cash_transfers => "", :office_hours => "", :chairman_of_the_council => "", :statute => "", :chartered_capital => "", :members_of_council => "")

# Currency.create(:name => "Dollar", :short_name => "$")
# Currency.create(:name => "Euro", :short_name => "Eu")

# #month

# Exchange.create(:bank_id => 1, :currency_id => 1, :buy => 8.98, :sell => 9.01, :date => "2012-11-05")
# Exchange.create(:bank_id => 1, :currency_id => 1, :buy => 8.98, :sell => 9.01, :date => "2012-11-06")
# Exchange.create(:bank_id => 1, :currency_id => 1, :buy => 8.98, :sell => 9.02, :date => "2012-11-07")
# Exchange.create(:bank_id => 1, :currency_id => 1, :buy => 8.98, :sell => 9.05, :date => "2012-11-08")
# Exchange.create(:bank_id => 1, :currency_id => 1, :buy => 8.98, :sell => 9.06, :date => "2012-11-09")
# Exchange.create(:bank_id => 1, :currency_id => 1, :buy => 8.98, :sell => 9.01, :date => "2012-11-10")
# Exchange.create(:bank_id => 1, :currency_id => 1, :buy => 8.98, :sell => 9.01, :date => "2012-11-11")
# Exchange.create(:bank_id => 1, :currency_id => 1, :buy => 8.98, :sell => 9.02, :date => "2012-11-12")
# Exchange.create(:bank_id => 1, :currency_id => 1, :buy => 8.98, :sell => 9.03, :date => "2012-11-13")
# Exchange.create(:bank_id => 1, :currency_id => 1, :buy => 8.98, :sell => 9.02, :date => "2012-11-14")
# Exchange.create(:bank_id => 1, :currency_id => 1, :buy => 8.98, :sell => 9.01, :date => "2012-11-15")
# Exchange.create(:bank_id => 1, :currency_id => 1, :buy => 8.98, :sell => 9.10, :date => "2012-11-16")
# Exchange.create(:bank_id => 1, :currency_id => 1, :buy => 8.98, :sell => 9.05, :date => "2012-11-17")
# Exchange.create(:bank_id => 1, :currency_id => 1, :buy => 8.98, :sell => 9.01, :date => "2012-11-18")
# Exchange.create(:bank_id => 1, :currency_id => 1, :buy => 8.98, :sell => 9.01, :date => "2012-11-19")
# Exchange.create(:bank_id => 1, :currency_id => 1, :buy => 8.98, :sell => 9.03, :date => "2012-11-20")
# Exchange.create(:bank_id => 1, :currency_id => 1, :buy => 8.98, :sell => 9.03, :date => "2012-11-21")
# Exchange.create(:bank_id => 1, :currency_id => 1, :buy => 8.98, :sell => 9.04, :date => "2012-11-22")
# Exchange.create(:bank_id => 1, :currency_id => 1, :buy => 8.98, :sell => 9.01, :date => "2012-11-23")
# Exchange.create(:bank_id => 1, :currency_id => 1, :buy => 8.98, :sell => 9.03, :date => "2012-11-24")
# Exchange.create(:bank_id => 1, :currency_id => 1, :buy => 8.98, :sell => 9.03, :date => "2012-11-25")
# Exchange.create(:bank_id => 1, :currency_id => 1, :buy => 8.98, :sell => 9.01, :date => "2012-11-26")
# Exchange.create(:bank_id => 1, :currency_id => 1, :buy => 8.98, :sell => 9.02, :date => "2012-11-27")
# Exchange.create(:bank_id => 1, :currency_id => 1, :buy => 8.98, :sell => 9.08, :date => "2012-11-28")
# Exchange.create(:bank_id => 1, :currency_id => 1, :buy => 8.98, :sell => 9.05, :date => "2012-11-29")
# Exchange.create(:bank_id => 1, :currency_id => 1, :buy => 8.98, :sell => 9.03, :date => "2012-11-30")

# Exchange.create(:bank_id => 1, :currency_id => 2, :buy => 10.98, :sell => 11.01, :date => "2012-11-05")
# Exchange.create(:bank_id => 1, :currency_id => 2, :buy => 10.99, :sell => 11.03, :date => "2012-11-06")
# Exchange.create(:bank_id => 1, :currency_id => 2, :buy => 10.98, :sell => 11.02, :date => "2012-11-07")
# Exchange.create(:bank_id => 1, :currency_id => 2, :buy => 10.85, :sell => 11.01, :date => "2012-11-08")
# Exchange.create(:bank_id => 1, :currency_id => 2, :buy => 10.98, :sell => 11.01, :date => "2012-11-09")
# Exchange.create(:bank_id => 1, :currency_id => 2, :buy => 10.99, :sell => 11.01, :date => "2012-11-10")
# Exchange.create(:bank_id => 1, :currency_id => 2, :buy => 10.90, :sell => 11.05, :date => "2012-11-11")
# Exchange.create(:bank_id => 1, :currency_id => 2, :buy => 10.88, :sell => 11.01, :date => "2012-11-12")
# Exchange.create(:bank_id => 1, :currency_id => 2, :buy => 10.80, :sell => 11.01, :date => "2012-11-13")
# Exchange.create(:bank_id => 1, :currency_id => 2, :buy => 10.85, :sell => 11.02, :date => "2012-11-14")
# Exchange.create(:bank_id => 1, :currency_id => 2, :buy => 10.99, :sell => 11.01, :date => "2012-11-15")
# Exchange.create(:bank_id => 1, :currency_id => 2, :buy => 10.96, :sell => 11.01, :date => "2012-11-16")
# Exchange.create(:bank_id => 1, :currency_id => 2, :buy => 10.98, :sell => 11.01, :date => "2012-11-17")
# Exchange.create(:bank_id => 1, :currency_id => 2, :buy => 10.98, :sell => 11.01, :date => "2012-11-18")
# Exchange.create(:bank_id => 1, :currency_id => 2, :buy => 10.98, :sell => 11.10, :date => "2012-11-19")
# Exchange.create(:bank_id => 1, :currency_id => 2, :buy => 10.98, :sell => 11.01, :date => "2012-11-20")
# Exchange.create(:bank_id => 1, :currency_id => 2, :buy => 10.98, :sell => 11.01, :date => "2012-11-21")
# Exchange.create(:bank_id => 1, :currency_id => 2, :buy => 10.98, :sell => 11.01, :date => "2012-11-22")
# Exchange.create(:bank_id => 1, :currency_id => 2, :buy => 10.98, :sell => 11.01, :date => "2012-11-23")
# Exchange.create(:bank_id => 1, :currency_id => 2, :buy => 10.98, :sell => 11.09, :date => "2012-11-24")
# Exchange.create(:bank_id => 1, :currency_id => 2, :buy => 10.98, :sell => 11.08, :date => "2012-11-25")
# Exchange.create(:bank_id => 1, :currency_id => 2, :buy => 10.98, :sell => 11.05, :date => "2012-11-26")
# Exchange.create(:bank_id => 1, :currency_id => 2, :buy => 10.98, :sell => 11.01, :date => "2012-11-27")
# Exchange.create(:bank_id => 1, :currency_id => 2, :buy => 10.98, :sell => 11.01, :date => "2012-11-28")
# Exchange.create(:bank_id => 1, :currency_id => 2, :buy => 10.98, :sell => 11.01, :date => "2012-11-29")
# Exchange.create(:bank_id => 1, :currency_id => 2, :buy => 10.98, :sell => 11.01, :date => "2012-11-30")




# Exchange.create(:bank_id => 2, :currency_id => 1, :buy => 8.98, :sell => 9.01, :date => "2012-11-05")
# Exchange.create(:bank_id => 2, :currency_id => 1, :buy => 8.98, :sell => 9.01, :date => "2012-11-06")
# Exchange.create(:bank_id => 2, :currency_id => 1, :buy => 8.98, :sell => 9.02, :date => "2012-11-07")
# Exchange.create(:bank_id => 2, :currency_id => 1, :buy => 8.98, :sell => 9.05, :date => "2012-11-08")
# Exchange.create(:bank_id => 2, :currency_id => 1, :buy => 8.98, :sell => 9.06, :date => "2012-11-09")
# Exchange.create(:bank_id => 2, :currency_id => 1, :buy => 8.98, :sell => 9.01, :date => "2012-11-10")
# Exchange.create(:bank_id => 2, :currency_id => 1, :buy => 8.98, :sell => 9.01, :date => "2012-11-11")
# Exchange.create(:bank_id => 2, :currency_id => 1, :buy => 8.98, :sell => 9.02, :date => "2012-11-12")
# Exchange.create(:bank_id => 2, :currency_id => 1, :buy => 8.98, :sell => 9.03, :date => "2012-11-13")
# Exchange.create(:bank_id => 2, :currency_id => 1, :buy => 8.98, :sell => 9.02, :date => "2012-11-14")
# Exchange.create(:bank_id => 2, :currency_id => 1, :buy => 8.98, :sell => 9.01, :date => "2012-11-15")
# Exchange.create(:bank_id => 2, :currency_id => 1, :buy => 8.98, :sell => 9.10, :date => "2012-11-16")
# Exchange.create(:bank_id => 2, :currency_id => 1, :buy => 8.98, :sell => 9.05, :date => "2012-11-17")
# Exchange.create(:bank_id => 2, :currency_id => 1, :buy => 8.98, :sell => 9.01, :date => "2012-11-18")
# Exchange.create(:bank_id => 2, :currency_id => 1, :buy => 8.98, :sell => 9.01, :date => "2012-11-19")
# Exchange.create(:bank_id => 2, :currency_id => 1, :buy => 8.98, :sell => 9.03, :date => "2012-11-20")
# Exchange.create(:bank_id => 2, :currency_id => 1, :buy => 8.98, :sell => 9.03, :date => "2012-11-21")
# Exchange.create(:bank_id => 2, :currency_id => 1, :buy => 8.98, :sell => 9.04, :date => "2012-11-22")
# Exchange.create(:bank_id => 2, :currency_id => 1, :buy => 8.98, :sell => 9.01, :date => "2012-11-23")
# Exchange.create(:bank_id => 2, :currency_id => 1, :buy => 8.98, :sell => 9.03, :date => "2012-11-24")
# Exchange.create(:bank_id => 2, :currency_id => 1, :buy => 8.98, :sell => 9.03, :date => "2012-11-25")
# Exchange.create(:bank_id => 2, :currency_id => 1, :buy => 8.98, :sell => 9.01, :date => "2012-11-26")
# Exchange.create(:bank_id => 2, :currency_id => 1, :buy => 8.98, :sell => 9.02, :date => "2012-11-27")
# Exchange.create(:bank_id => 2, :currency_id => 1, :buy => 8.98, :sell => 9.08, :date => "2012-11-28")
# Exchange.create(:bank_id => 2, :currency_id => 1, :buy => 8.98, :sell => 9.05, :date => "2012-11-29")
# Exchange.create(:bank_id => 2, :currency_id => 1, :buy => 8.98, :sell => 9.03, :date => "2012-11-30")

# Exchange.create(:bank_id => 2, :currency_id => 2, :buy => 10.98, :sell => 11.01, :date => "2012-11-05")
# Exchange.create(:bank_id => 2, :currency_id => 2, :buy => 10.99, :sell => 11.03, :date => "2012-11-06")
# Exchange.create(:bank_id => 2, :currency_id => 2, :buy => 10.98, :sell => 11.02, :date => "2012-11-07")
# Exchange.create(:bank_id => 2, :currency_id => 2, :buy => 10.85, :sell => 11.01, :date => "2012-11-08")
# Exchange.create(:bank_id => 2, :currency_id => 2, :buy => 10.98, :sell => 11.01, :date => "2012-11-09")
# Exchange.create(:bank_id => 2, :currency_id => 2, :buy => 10.99, :sell => 11.01, :date => "2012-11-10")
# Exchange.create(:bank_id => 2, :currency_id => 2, :buy => 10.90, :sell => 11.05, :date => "2012-11-11")
# Exchange.create(:bank_id => 2, :currency_id => 2, :buy => 10.88, :sell => 11.01, :date => "2012-11-12")
# Exchange.create(:bank_id => 2, :currency_id => 2, :buy => 10.80, :sell => 11.01, :date => "2012-11-13")
# Exchange.create(:bank_id => 2, :currency_id => 2, :buy => 10.85, :sell => 11.02, :date => "2012-11-14")
# Exchange.create(:bank_id => 2, :currency_id => 2, :buy => 10.99, :sell => 11.01, :date => "2012-11-15")
# Exchange.create(:bank_id => 2, :currency_id => 2, :buy => 10.96, :sell => 11.01, :date => "2012-11-16")
# Exchange.create(:bank_id => 2, :currency_id => 2, :buy => 10.98, :sell => 11.01, :date => "2012-11-17")
# Exchange.create(:bank_id => 2, :currency_id => 2, :buy => 10.98, :sell => 11.01, :date => "2012-11-18")
# Exchange.create(:bank_id => 2, :currency_id => 2, :buy => 10.98, :sell => 11.10, :date => "2012-11-19")
# Exchange.create(:bank_id => 2, :currency_id => 2, :buy => 10.98, :sell => 11.01, :date => "2012-11-20")
# Exchange.create(:bank_id => 2, :currency_id => 2, :buy => 10.98, :sell => 11.01, :date => "2012-11-21")
# Exchange.create(:bank_id => 2, :currency_id => 2, :buy => 10.98, :sell => 11.01, :date => "2012-11-22")
# Exchange.create(:bank_id => 2, :currency_id => 2, :buy => 10.98, :sell => 11.01, :date => "2012-11-23")
# Exchange.create(:bank_id => 2, :currency_id => 2, :buy => 10.98, :sell => 11.09, :date => "2012-11-24")
# Exchange.create(:bank_id => 2, :currency_id => 2, :buy => 10.98, :sell => 11.08, :date => "2012-11-25")
# Exchange.create(:bank_id => 2, :currency_id => 2, :buy => 10.98, :sell => 11.05, :date => "2012-11-26")
# Exchange.create(:bank_id => 2, :currency_id => 2, :buy => 10.98, :sell => 11.01, :date => "2012-11-27")
# Exchange.create(:bank_id => 2, :currency_id => 2, :buy => 10.98, :sell => 11.01, :date => "2012-11-28")
# Exchange.create(:bank_id => 2, :currency_id => 2, :buy => 10.98, :sell => 11.01, :date => "2012-11-29")
# Exchange.create(:bank_id => 2, :currency_id => 2, :buy => 10.98, :sell => 11.01, :date => "2012-11-30")


AdminUser.create(:email => "admin@example.com", :password => "password", :password_confirmation => "password")
