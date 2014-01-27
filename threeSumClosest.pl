#!/usr/bin/env perl

use Data::Dumper;

#   Given an array S of n integers, find three integers in S such that the sum is closest to a given number, target. Return the sum of the three integers. You may assume that each input would have exactly one solution.
#       For example, given array S = {-1 2 1 -4}, and target = 1.
#       The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).

my (@par) = @ARGV;
my @result = threeSum(@par);

print Dumper @result;

sub threeSum(){
    my @arr = @_;
    my $tar = pop @arr;
    my ($res,$hash,$min);
    for (my $x=0;$x<=$#arr-2;$x++){
        for (my $y=$x+1;$y<=$#arr-1;$y++){
            for (my $z=$y+1;$z<=$#arr;$z++){
                my $abs = abs(@arr[$x]+@arr[$y]+@arr[$z] - $tar);
                $min = $abs unless $min;
                @res = sort (@arr[$x],@arr[$y],@arr[$z]) if ($abs <= $min);
            }    
        }
    }
    return @res;
}


