use actix_web::{App, HttpServer};
use dotenv::dotenv;
use std::{env, io};

#[actix_web::main]
async fn main() -> io::Result<()> {
    dotenv().ok();

    let port = env::var("SERVER_PORT")
        .unwrap_or_default()
        .parse::<u16>()
        .unwrap_or(8080);

    HttpServer::new(move || App::new())
        .bind(("127.0.0.1", port))?
        .run()
        .await
}
