use Rack::Static , :urls => { 
    "/" => "index.html", 
    "/index.html" => "index.html", 
    "/pipa" => "pipa/index.html", 
    "/pipa/" => "pipa/index.html", 
    "/colbert-sopa" => "colbert-sopa/index.html", 
    "/colbert-sopa/" => "colbert-sopa/index.html", 
    "/callwidget" => "modal/call-form.html", "/callwidget/thanks" => "modal/call-form-thanks.html", "/callwidget/next" => "modal/call-form-done.html" } , :root => "public"

run Rack::URLMap.new({
  "/"      => Rack::Directory.new("public"),
  "/modal" => Rack::Directory.new("public/modal"),
  "/modal/state-dept-petition" => Rack::Directory.new("public/modal/state-dept-petition")
})
