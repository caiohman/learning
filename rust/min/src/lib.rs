// Copyright 2023 Google LLC
// SPDX-License-Identifier: Apache-2.0

use std::cmp::Ordering;

// TODO: implement the `min` function used in the tests.
fn min<T : Ord>(val1 : T, val2 : T) -> T {
    let result : T;

    match val1.cmp(&val2) {
        Ordering::Less      => result = val1, 
        Ordering::Greater   => result = val2,   
        Ordering::Equal     => result = val1,    
    }
    result
} 

#[test]
fn integers() {
    assert_eq!(min(0, 10), 0);
    assert_eq!(min(500, 123), 123);
}

#[test]
fn chars() {
    assert_eq!(min('a', 'z'), 'a');
    assert_eq!(min('7', '1'), '1');
}

#[test]
fn strings() {
    assert_eq!(min("hello", "goodbye"), "goodbye");
    assert_eq!(min("bat", "armadillo"), "armadillo");
}
