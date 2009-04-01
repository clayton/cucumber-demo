# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cucumber-demo_session',
  :secret      => '993187d8f7b7700b712e5ddb7618dfb3717e5f0673f4ff84ed941a9f9b0430841a9d5612c1033e046e6858c13ecba085e93e182233b7e51284f85491e8d2b5f7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
