json.extract! blog, :id, :imageurl, :content, :title, :creation, :update, :created_at, :updated_at
json.url blog_url(blog, format: :json)