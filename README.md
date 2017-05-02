== Testing Polymorphic plan

`$ bundle exec rake db:setup`

`$ bundle exec rails c`

```
pry(main)> Account.last.line_items.includes(statementable: :line_item_things).map { |li| li.statementable.line_item_things }
 Account Load (0.2ms)  SELECT  `accounts`.* FROM `accounts`  ORDER BY `accounts`.`id` DESC LIMIT 1
 LineItem Load (0.2ms)  SELECT `line_items`.* FROM `line_items` WHERE `line_items`.`account_id` = 1
 Payment Load (0.2ms)  SELECT `payments`.* FROM `payments` WHERE `payments`.`id` IN (1)
 Purchase Load (0.2ms)  SELECT `purchases`.* FROM `purchases` WHERE `purchases`.`id` IN (1)
 Card Load (0.2ms)  SELECT `cards`.* FROM `cards` WHERE `cards`.`payment_id` IN (1)
 Buyer Load (0.2ms)  SELECT `buyers`.* FROM `buyers` WHERE `buyers`.`purchase_id` IN (1)
=> [[#<Card:0x0055aaa5f803b8 id: 1, name: "card1", payment_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Buyer:0x0055aaa521e288 id: 1, name: "buyer", purchase_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Card:0x0055aaa5f803b8 id: 1, name: "card1", payment_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Buyer:0x0055aaa521e288 id: 1, name: "buyer", purchase_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Card:0x0055aaa5f803b8 id: 1, name: "card1", payment_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Buyer:0x0055aaa521e288 id: 1, name: "buyer", purchase_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Card:0x0055aaa5f803b8 id: 1, name: "card1", payment_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Buyer:0x0055aaa521e288 id: 1, name: "buyer", purchase_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Card:0x0055aaa5f803b8 id: 1, name: "card1", payment_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Buyer:0x0055aaa521e288 id: 1, name: "buyer", purchase_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Card:0x0055aaa5f803b8 id: 1, name: "card1", payment_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Buyer:0x0055aaa521e288 id: 1, name: "buyer", purchase_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Card:0x0055aaa5f803b8 id: 1, name: "card1", payment_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Buyer:0x0055aaa521e288 id: 1, name: "buyer", purchase_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Card:0x0055aaa5f803b8 id: 1, name: "card1", payment_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Buyer:0x0055aaa521e288 id: 1, name: "buyer", purchase_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Card:0x0055aaa5f803b8 id: 1, name: "card1", payment_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Buyer:0x0055aaa521e288 id: 1, name: "buyer", purchase_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Card:0x0055aaa5f803b8 id: 1, name: "card1", payment_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Buyer:0x0055aaa521e288 id: 1, name: "buyer", purchase_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Card:0x0055aaa5f803b8 id: 1, name: "card1", payment_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Buyer:0x0055aaa521e288 id: 1, name: "buyer", purchase_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Card:0x0055aaa5f803b8 id: 1, name: "card1", payment_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Buyer:0x0055aaa521e288 id: 1, name: "buyer", purchase_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Card:0x0055aaa5f803b8 id: 1, name: "card1", payment_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Buyer:0x0055aaa521e288 id: 1, name: "buyer", purchase_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Card:0x0055aaa5f803b8 id: 1, name: "card1", payment_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Buyer:0x0055aaa521e288 id: 1, name: "buyer", purchase_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Card:0x0055aaa5f803b8 id: 1, name: "card1", payment_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Buyer:0x0055aaa521e288 id: 1, name: "buyer", purchase_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Card:0x0055aaa5f803b8 id: 1, name: "card1", payment_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Buyer:0x0055aaa521e288 id: 1, name: "buyer", purchase_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Card:0x0055aaa5f803b8 id: 1, name: "card1", payment_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Buyer:0x0055aaa521e288 id: 1, name: "buyer", purchase_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Card:0x0055aaa5f803b8 id: 1, name: "card1", payment_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Buyer:0x0055aaa521e288 id: 1, name: "buyer", purchase_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Card:0x0055aaa5f803b8 id: 1, name: "card1", payment_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Buyer:0x0055aaa521e288 id: 1, name: "buyer", purchase_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Card:0x0055aaa5f803b8 id: 1, name: "card1", payment_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>],
[#<Buyer:0x0055aaa521e288 id: 1, name: "buyer", purchase_id: 1, created_at: Tue, 02 May 2017 21:30:57 UTC +00:00, updated_at: Tue, 02 May 2017 21:30:57 UTC +00:00>]]

```

Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.
