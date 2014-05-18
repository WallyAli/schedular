# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Scheduler::Application.config.secret_key_base = '4641882db851fadb5766908eb18bdde79ea80d403095581da97f694ceb43fbfaa90d08aced14b0676ace85d704ef0ee41bdd9b1375d31d09ca4f1fbb592b63cf'
