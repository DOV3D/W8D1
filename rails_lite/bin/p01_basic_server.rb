require 'rack'

app = Proc.new do |env|
    req = Rack::Request.new(env)
    res = Rack::Response.new
    res['Content-Type'] = 'text-html'
    path = req.fullpath
    res.write(path)
    res.finish
end


Rack::Server.start(
    app: app,
    Port: 3000
)