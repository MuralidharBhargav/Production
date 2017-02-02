json.extract! bill_reciept, :id, :Title, :description, :amount, :created_at, :updated_at
json.url bill_reciept_url(bill_reciept, format: :json)