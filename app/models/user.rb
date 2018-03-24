class User < ApplicationRecord

  scope :by_state, ->(state) { where( state: state) }
  scope :by_name, ->(state) { where( name: "name LIKE '%#{name}%'") }
  scope :by_email, ->(state) { where( email: email) }
end
