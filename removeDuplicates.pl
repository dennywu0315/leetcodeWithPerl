#!/usr/bin/env perl

use Data::Dumper;

#   Given a sorted array, remove the duplicates in place such that each element appear only once and return the new length.
#
#   Do not allocate extra space for another array, you must do this in place with constant memory.
#
#   For example,
#   Given input array A = [1,1,2],
#
#   Your function should return length = 2, and A is now [1,2].

my @par = @ARGV;

my $result = removeDuplicates(\@par);

print Dumper $result;

sub removeDuplicates(){
    my ($arr) = @_;
    my @arr = @$arr;
    my (@res,$res,$hash);
    @res = grep{! $hash{$_}++ } @arr;
    $hash->{'arr'} = \@res;
    $hash->{'len'} = $#res + 1; 
    return $hash;
}
