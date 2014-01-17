#!/usr/bin/perl

use Data::Dumper;

#   You are given two linked lists representing two non-negative numbers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

#   Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
#   Output: 7 -> 0 -> 8

my @in1 = (2,4,3,3);
my @in2 = (5,6,6);

my @out = addTwoNumbers(\@in1,\@in2);

print Dumper @out;

sub addTwoNumbers(){
    my ($arr1,$arr2) = @_;
    my @arr1 = @$arr1;
    my @arr2 = @$arr2;
    my ($ad,$min,$max,@result);
    $ad = 0;
    ($max,$min) = $#arr1 >= $#arr2 ?  ($#arr1,$#arr2) : ($#arr2,$#arr1) ; 
    for (my $i=0;$i<=$max+1;$i++){
        my $res;
        $res = @arr1[$i] + @arr2[$i] + $ad;
        $ad = $res >= 10 ? 1:0;
        $obj = $res%10;    
        push @result , $obj;
    } 
    return @result;
        
}
