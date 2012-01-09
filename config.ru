use Rack::Static , :urls => { 
    "/" => "index.html", 
    "/index.html" => "index.html", 
    "/pipa" => "pipa/index.html", 
    "/pipa/" => "pipa/index.html", 
    "/godaddy" => "godaddy/index.html", 
    "/godaddy/" => "godaddy/index.html",
    "/pipa/thanks" => "pipa/thanks/index.html", 
    "/pipa/thanks/" => "pipa/thanks/index.html", 
    "/godaddy/thanks" => "godaddy/thanks/index.html", 
    "/godaddy/thanks/" => "godaddy/thanks/index.html", 
    "/pipa/artists" => "pipa/artists/index.html", 
    "/pipa/artists/" => "pipa/artists/index.html", 
    "/colbert-sopa" => "colbert-sopa/index.html", 
    "/colbert-sopa/" => "colbert-sopa/index.html", 
    "/pipa/cease-and-desist/" => "pipa/cease-and-desist/index.html", 
    "/pipa/cease-and-desist" => "pipa/cease-and-desist/index.html", 
    "/privacy/" => "privacy/index.html", 
    "/privacy" => "privacy/index.html", 
    "/about" => "about/index.html", 
    "/about/" => "about/index.html", 
    "/telethon/" => "telethon/index.html", 
    "/telethon" => "telethon/index.html", 
    "/donation/thanks" => "donation/thanks/index.html", 
    "/donation/thanks/" => "donation/thanks/index.html", 

    } , :root => "public"

run Rack::URLMap.new({
  "/"      => Rack::Directory.new("public"),
})
