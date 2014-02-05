# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Broker::Application.config.secret_key_base = 'add17bb60dbcd2ea102be31ae8e13d46b832680fd509710d2e0bd8ed6f48bdf0ca6ac51085966c7bdb74485fe2e8ac017b8d86fff5707971a61f1b592cfe2ac3'
