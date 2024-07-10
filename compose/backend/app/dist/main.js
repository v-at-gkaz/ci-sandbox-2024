const http = require("http");
const message = "Replace this DEV-server with own!";
const server =  http.createServer(function(request, response){
    response.end(message);
});
server.listen(8080, ()=> {
    console.log(message);
});