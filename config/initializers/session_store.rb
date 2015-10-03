# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_simple_blog_session',
  :secret      => '1c06630e8cabe7544e0bc88cc21c93087286d1ee86d5ab5e5ecfd91467131cfca97a07b442685f7f558743f064755ea4b26d9c0d1200ec05bf887c3110884c76'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
