use std::time::Duration;

fn takes_tuple(tuple: (char, i32, bool)) {
    let _a = tuple.0;
    let _b = tuple.1;
    let _c = tuple.2;

    let (_a, _b, _c) = tuple;
    let (_, _b, _c) = tuple;
    let (.., _c) = tuple;
    let (_first, .., _last) = tuple;
}

fn takes_array(array: [u8;3]) {
    let _a = array[0];
    let _b = array[1];
    let _c = array[2];

    let [_, _b, _c] = array;
    let [_fisrt, .., _last] = array;
}

#[rustfmt::skip]
fn matchingvalues() {
    let input = 'x';
    match input {
        'q'                          => println!("Quit"),
        'a' | 's' | 'w' | 'd'        => println!("Moving Around"),
        '0'..='9'                    => println!("Number Input"),
        key if key.is_lowercase()    => println!("Lowecase: {key}"),
        _                            => println!("Smt else"),
    }
}

#[rustfmt::skip]
fn matchingvalues_t() {
    let input = 'a';
    match input {
        expected if expected.is_uppercase()    => println!("Uppercase"),
        expected                               => if input == 'q' {println!("Quit")},
        _                                      => println!("Smt else"),
    }
}

fn mathingvalues_inner() {
    let opt = Some(123);
    match opt {
        outer @ Some(inner) => {
            println!("outer: {outer:?}, inner: {inner}");
        }
        None => {}
    }
}

struct Move {
    delta: (i32, i32),
    repeat: u32,
}


#[rustfmt::skip]
fn destructuring() {
    let m : &Move = &Move { delta: (10, 0), repeat: 5};

    match m {
        &Move{ delta: (0, 0), ..}         => println!("Standing still"),
        &Move{ delta: (x, 0), repeat }    => println!("{repeat} step x: {x}"),
        &Move{ delta: (0, y), repeat: 1}  => println!("Single step y: {y}"),
        _                                => println!("Other move"),
    }
}

// in order to run the last example, comment is needed
// enum Result {
//     Ok(i32),
//     Err(String),
// }
//
// fn divide_in_two(n : i32) -> Result{
//     if n % 2 == 0 {
//         Result::Ok(n / 2)
//     } else {
//         Result::Err(format!("cannot divide {n} into two equal parts"))
//     }
// }
//
// fn destructring_enums(){
//     let n = 100;
//     match divide_in_two(n) {
//         Result::Ok(half) => println!("{n} - {half}"),
//         Result::Err(msg) => println!("{msg}"),
//     }
// }
//
fn sleep_for(secs: f32) {
    let result = Duration::try_from_secs_f32(secs);

    if let Ok(duration) = result {
        std::thread::sleep(duration);
        println!("{duration:?}");
    }
}

fn while_let() {
    let mut name = String::from("aka");
    while let Some(c) = name.pop() {
        dbg!(c);
    }
}

fn hex_or_die_trying(maybe_string: Option<String>) -> Result<u32, String> {
    let Some(s) = maybe_string else {
        return Err(String::from("got none"));
    };
    let Some(fbc) = s.chars().next() else {
        return Err(String::from("got empty"));
    };
    let Some(d) = fbc.to_digit(16) else {
        return Err(String::from("not hex digit"));
    };

    Ok(d)
}


fn main() {
    takes_tuple(('a', 777, true));
    takes_array([1, 2, 3]);
    matchingvalues();
    matchingvalues_t();
    mathingvalues_inner();
    destructuring(); 
    // destructring_enums();
    sleep_for(-10.0);
    sleep_for(0.8);
    while_let();
    println!("{:?}", hex_or_die_trying(Some(String::from("foo"))));
}
