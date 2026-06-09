struct Person {
    name: String,
    age: u8,
}

struct Point(i32, i32);

#[derive(Debug)]
enum Direction {
    Left,
    Right,
}

#[derive(Debug)]
enum PlayerMove {
    Pass,
    Run(Direction),
    Teleport { x:u32 , y :u32 },
}

#[repr(u32)]
enum Bar {
    A, 
    B = 10000,
    C,
}    

enum CarryableConcreteItem {
    Left,
    Right,
}    
use std::cell::RefCell;
use std::sync::{Arc, RwLock};
type Item = CarryableConcreteItem;

const DIGEST_SIZE: usize = 3;
const FILL_VALUE : u8 = calculate_fill_value();
static BANNER : &str = "Hello";

const fn calculate_fill_value() -> u8 {
    if DIGEST_SIZE < 10 { 42 } else { 13 }
}

fn stat() {
    println!("{}", BANNER);
}    

fn nameds() {
    let mut peter: Person = Person {
        name: String::from("Peter"),
        age: 27,
    };

    peter.age = 28;
    println!("{} {}", peter.name, peter.age);
}

fn tuples() {
    let p = Point(17, 23);
    println!("{}, {}", p.0, p.1);
}

fn enums() {
    let dir = Direction::Left;
    let player_move : PlayerMove = PlayerMove::Run(dir);
    println!("{player_move:?}");
}

fn enumb() {
    println!("{}", Bar::A as u32);
    println!("{}", Bar::B as u32);
    println!("{}", Bar::C as u32);
}

fn compute_digest(text: &str) {
    let mut digest = [ FILL_VALUE; DIGEST_SIZE ];
    for (idx, &b) in text.as_bytes().iter().enumerate() {
        digest[idx % DIGEST_SIZE] = digest[idx % DIGEST_SIZE].wrapping_add(b);
    }
    println!("{digest:?}");
}

#![allow(dead_code)]

#[derive(Debug)]
/// An event in the elevator system that the controller must react to.
enum Event {
    // TODO: add required variants
}

/// A direction of travel.
#[derive(Debug)]
enum Direction {
    Up,
    Down,
}

/// The car has arrived on the given floor.
fn car_arrived(floor: i32) -> Event {
    todo!()
}

/// The car doors have opened.
fn car_door_opened() -> Event {
    todo!()
}

/// The car doors have closed.
fn car_door_closed() -> Event {
    todo!()
}

/// A directional button was pressed in an elevator lobby on the given floor.
fn lobby_call_button_pressed(floor: i32, dir: Direction) -> Event {
    todo!()
}

/// A floor button was pressed in the elevator car.
fn car_floor_button_pressed(floor: i32) -> Event {
    todo!()
}

fn elevator() {
    println!(
        "A ground floor passenger has pressed the up button: {:?}",
        lobby_call_button_pressed(0, Direction::Up)
    );
    println!("The car has arrived on the ground floor: {:?}", car_arrived(0));
    println!("The car door opened: {:?}", car_door_opened());
    println!(
        "A passenger has pressed the 3rd floor button: {:?}",
        car_floor_button_pressed(3)
    );
    println!("The car door closed: {:?}", car_door_closed());
    println!("The car has arrived on the 3rd floor: {:?}", car_arrived(3));
}

fn main() {
    nameds();
    tuples();
    enums();
    enumb();
    compute_digest("Hello");
    stat();
    elevator();
}
