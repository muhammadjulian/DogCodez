json.extract! pengguna, :id, :dispname, :username, :password, :email, :created_at, :updated_at
json.url pengguna_url(pengguna, format: :json)
