#!/usr/bin/env perl

use Data::Dumper;

#   Determine if a Sudoku is valid, according to: Sudoku Puzzles - The Rules.
#   The Sudoku board could be partially filled, where empty cells are filled with the character '.'.

my @raw = ([ 5 , 3 ,'.','.', 7 ,'.','.','.','.'],
           [ 6 ,'.','.', 1 , 9 , 5 ,'.','.','.'],
           ['.', 9 , 8 ,'.','.','.','.', 6 ,'.'],
           [ 8 ,'.','.','.', 6 ,'.','.','.', 3 ],
           [ 4 ,'.','.', 8 ,'.', 3 ,'.','.', 1 ],
           [ 7 ,'.','.','.', 2 ,'.','.','.', 6 ],
           ['.', 6 ,'.','.','.','.', 2 , 8 ,'.'],
           ['.','.','.', 4 , 1 , 9 ,'.','.', 5 ],
           ['.','.','.','.', 8 ,'.','.', 7 , 9 ] );

printSudoku(\@raw);

my $result = isValidSudoku(\@raw);

sub printSudoku(){
    my ($arrTmp) = @_;
    my @arr = @$arrTmp;
    for (0..8){
        my $x = $_;
        for (0..8){
            my $y = $_;
            print ' '.$arr[$x][$y].' ';
        }
        print "\n";
    }
}

sub isValidSudoku(){
    my ($arrTmp) = @_;
    my @arr = @$arrTmp;
    return isValidRaw(\@arr) && isValidCol(\@arr) && isValidBox(\@arr);
}

sub isValidRaw(){
}

sub isValidCol(){

}

sub isValidBox(){

}
