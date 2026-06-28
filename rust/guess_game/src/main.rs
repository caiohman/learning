use std::io;
use rand::prelude::*;
use std::cmp::Ordering;

fn main() {
    println!("Number [1-100]:"); 

    let mut guess = String::new();
    let secret_number = rand::rng().random_range(1..=100);

    io::stdin()
        .read_line(&mut guess)
        .expect("Failed");

    let guess: i32 = guess.trim().parse().expect("Input a nunber"); 
    
    match guess.cmp(&secret_number) {
      Ordering::Less      => println!("smaller"), 
      Ordering::Greater   => println!("bigger"),
      Ordering::Equal     => println!("you win!"),
    }
}
