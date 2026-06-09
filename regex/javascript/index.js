// Intro
// Regex is short for Regular Expression. It helps to match, find or manage text. 
// Start by typing OK in the Regex field to proceed to the first step and access the more detailed description..
const ok = "Understand? OK or NOT";
console.log(ok.match(/OK/g));
// response [ 'OK' ]

//Return all .pdf files
const pdf = "readme.md \
document.pdf \
image.png \
music.mp4 \
manual.pdf";
console.log(pdf.match(/\w+\.pdf/gm));
//response 'document.pdf', 'manual.pdf'

//All chars
const anyChar = "abcABC123 .:!?";
console.log(anyChar.match(/./g));
//response  'a', 'b', 'c', 'A','B', 'C', '1', '2','3', ' ', '.', ':','!', '?'

const bar = "bar ber bir bor bur";
console.log(bar.match(/b[aeiou]r/g));
//response  'bar', 'ber', 'bir', 'bor', 'bur'

// Letter Range[a-z]
// To find the letters in the specified range, the starting letter and the ending letter are written in square brackets [] with a dash between them -. 
// It is case-sensitive. Type the expression that will select all lowercase letters between e and o, including themselves.
const string = "abcdefghijklmnopqrstuvwxyz";
console.log(string.match(/[e-o]/g));
//response 'e', 'f', 'g', 'h','i', 'j', 'k', 'l','m', 'n', 'o'

const numbers = "0123456789";
console.log(numbers.match(/[3-6]/g));
//response  '3', '4', '5', '6'

//It will negate beor and beur
const negateSpecificWord = "bear beor beer beur";
console.log(negateSpecificWord.match(/be[^ou]r/g));
//response 'bear', 'beer'


//Matching words with e char that doesn't happen or happens 1+ times 
const asterisk = "br ber beer";
console.log(asterisk.match(/be*r/g));
//response  'br', 'ber', 'beer'

const plus = "br ber beer";
console.log(plus.match(/be+r/g));
//response 'ber', 'beer'

const optional = "color, colour";
console.log(optional.match(/colou?r/g));
//response 'color', 'colour'

const firstLetter = "o teste";
console.log(firstLetter.match(/^\w/g));
//response 'o'

const tokens = "He is a very very good boy, isn't he?";
console.log(tokens.match(/[A-Za-z!,?._'@]+/g));
//response [ 'He','is','a','very','very', 'good', 'boy,', "isn't",'he?']

const vowelBegin = "css eight inner out ugly pass ama";
console.log(vowelBegin.match(/(^[aeiou](\w+))|\s[aeiou](\w+)/g));
//response [ ' eight', ' inner', ' out', ' ugly', ' ama' ]

const vowelEnd = "casa die abacaxi ovo urubu pass ama";
console.log(vowelEnd.match(/\s?(\w+)[aeiou](\s|$)/g));
//response [ 'casa ', 'die ', 'abacaxi ', 'ovo ', 'urubu ', ' ama' ]