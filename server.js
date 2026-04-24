import http from "http";

const port = process.env.PORT || 3000;

http
  .createServer((req, res) => {
    res.writeHead(200, { "Content-Type": "text/plain" });
    res.end("OK\n");
  })
  .listen(port, "0.0.0.0", () => {
    console.log("HTTP wrapper listening on", port);
  });
