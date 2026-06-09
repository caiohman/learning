fn array() {
    let mut array : [i8; 5] = [1, 2, 3, 4, 5];
    array[2] = 7;
    println!("arr: {array:?}");
}

fn tuple() {
    let tuple : (i8, bool) = (1, true);
    //dbg!(tuple.0);
    //dbg!(tuple.1);
    println!("{tuple:?}");
}

fn iteration() {
    let array : [i8; 8] = [2, 3, 5, 7, 11, 13, 17, 19];

    for elem in array {
        for i in 2..elem {
            assert_ne!(elem % i, 0);
        }
    }
}

fn check_order(tuple : (i32, i32, i32)) -> bool {
    let (left, middle, right) = tuple;
    left < middle && middle < right //without ; is same as return
}

fn pattern() {
    let tuple = (1, 3, 5);
    println!(
        "{tuple:?}: {}",
        if check_order(tuple) { "ordered" } else { "unordered" }
    );
}

fn transpose(mut matrix: [[i32; 3]; 3]) -> [[i32; 3]; 3] {

    for i in 0..3 {
        for j in 0..3{
            matrix[i][j] = matrix[j][i];
        }
    }
    return matrix;
}

fn nested() {
    let matrix = [
        [101, 102, 103], // <-- the comment makes rustfmt add a newline
        [201, 202, 203],
        [301, 302, 303],
    ];

    println!("Original:");
    for row in matrix {
        println!("{row:?}");
    }

    let transposed = transpose(matrix);

    println!("\nTransposed:");
    for row in transposed {
        println!("{row:?}");
    }
}

fn main() {
    array();
    tuple();
    iteration();
    pattern();
    nested();
}
