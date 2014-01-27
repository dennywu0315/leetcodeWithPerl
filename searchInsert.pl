#!/usr/bin/env perl

use Data::Dumper;

#   Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
#   You may assume no duplicates in the array.
#   Here are few examples.
#   [1,3,5,6], 5 -> 2
#   [1,3,5,6], 2 -> 1
#   [1,3,5,6], 7 -> 4
#   [1,3,5,6], 0 -> 0

my $var = pop @ARGV;
my @par = @ARGV;

my $result = searchInsert(\@par,$var);

print Dumper $result;

sub searchInsert(){
    my ($arrTmp,$tar) = @_;
    my @arr = @$arrTmp;
    my $res;
    my $i   = 0;
    return $res = $i        if ($tar < @arr[0]); 
    return $res = $#arr + 1 if ($tar > @arr[$#arr]);
    foreach (@arr){
        if ($_ == $tar){
            $res = $i;
            return $res; 
        }elsif($_ < $tar){
            $res = $i + 1;
        } 
        $i++;
    }
    return $res;
}
