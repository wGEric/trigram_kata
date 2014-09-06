# Trigram Kata
Using some really simple statistical analysis of text, lets try to generate some unique text.

This is based on Dave Thomas' [Trigram Kata](http://codekata.com/kata/kata14-tom-swift-under-the-milkwood/).

## The Goal
Generate some unique text based on some source text.

## How to Use It
There are some sample files included in the samples directory. You can get more sample files from online listings like [The Classics](http://textfiles.com/etext/).

These an be used to test your code with the included bin file like so:

```bash
./bin/trigenerate 40 'magical fairy' samples/aesops_fables.txt
```

The trigenerate takes 3+ arguments:
* The number of words that should be generated
* A prompt (ie the first two words you for the generated text)
* One or more sample text files

## Getting Started
* Clone this Repository
* run bundle install
* run rspec

You should see some failing tests that show the basic idea of how a trigram analyzer should work and some failing tests that try to use a trigram object to generate some new text. Feel free to use these specs to start yourself going, or just skip them and try to go straight for the goal of generating some unique text.

## Extra Credit
Are you already done? Need some more challenge?

* Try to implement some punctuation usage.
* Get smart about types of words (ie. adjectives vs nouns)
* Make a quiz mechanism that makes people guess which text is produced by a human and which text is produced by the algorithm.
