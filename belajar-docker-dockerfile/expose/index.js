const http = require("http");
const server = http.createServer(function (req, res) {
    res.write("Hello World");
    res.end();
});

server.listen(8080, "localhost", () =>
    console.log("Server is listen on port 8080")
);
