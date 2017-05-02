# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

account = Account.create(name: 'Iains Account')

20.times do |i|
  account.line_items << LineItem.create(description: "line item #{i}")#, statementable_id: @payment.id, statementable_type: @payment.class.to_s)
  # account.line_items << LineItem.create(description: "line item #{i}")#, statementable_id: @purchase.id, statementable_type: @purchase.class.to_s)
end
binding.pry
5.times do |i|
  @payment = Payment.create(name: 'payment')
  5.times do |i|
    @payment.cards << Card.create(name: 'card1')
    @payment.line_items << account.line_items.shuffle
  end
  @purchase = Purchase.create(name: 'purchase')
  5.times do |i|
    @purchase.buyers << Buyer.create(name: 'buyer')
    @purchase.line_items << account.line_items.shuffle
  end
end
