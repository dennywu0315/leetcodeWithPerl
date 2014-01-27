#!/usr/bin/env perl

use Data::Dumper;

#   Given an array S of n integers, are there elements a, b, c in S such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.
#
#   Note:
#   Elements in a triplet (a,b,c) must be in non-descending order. (ie, a = b = c)
#   The solution set must not contain duplicate triplets.
#       For example, given array S = {-1 0 1 2 -1 -4},
#
#       A solution set is:
#       (-1, 0, 1)
#       (-1, -1, 2)

my @par = @ARGV;
my @result = threeSum(@par);

print Dumper @result;

sub threeSum(){
    my @arr = @_;
    my ($res,$hash);
    for (my $x=0;$x<=$#arr-2;$x++){
        for (my $y=$x+1;$y<=$#arr-1;$y++){
            for (my $z=$y+1;$z<=$#arr;$z++){
                if (@arr[$x]+@arr[$y]+@arr[$z] == 0){
                    my @resArr = sort (@arr[$x],@arr[$y],@arr[$z]); 
                    push @res, \@resArr;
                }
            }    
        }
    }
    @res = grep{! $hash{join(",",@{$_})}++ } @res; #uniq !!
    return @res;
}


