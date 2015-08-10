fn main() {
    if !std::process::Command::new("make").arg("-j8").status().unwrap().success() {
        panic!("Script failed");
    }
    println!("cargo:rustc-flags=-L pngquant-2.5.1/lib");
}
