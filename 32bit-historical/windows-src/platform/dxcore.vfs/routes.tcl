#an example of a procedure for a route, used via an Ajax call from default page
proc /dxenv {array} {
    upvar $array data ; # Holds the socket to remote client
    
    # Emit headers
    puts $data(sock) "HTTP/1.0 200 OK\nDate: [uhttpd::Date]"
    puts $data(sock) "Content-Type: text/html\n" ;# actually, json

    # Emit body
    puts $data(sock) [subst {
      {"dxenv": {"root": "$data(root)", "port": "$data(port)" }}
    }]
}