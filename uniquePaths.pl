#!/usr/bin/perl

#   Given an array of integers, find two numbers such that they add up to a specific target number.
#   The function twoSum should return indices of the two numbers such that they add up to the target, where index1 must be less than index2. Please note that your returned answers (both index1 and index2) are not zero-based.
#   You may assume that each input would have exactly one solution.
#   Input: numbers={2, 7, 11, 15}, target=9
#   Output: index1=1, index2=2

my @m = (2,7,11,15,20,30,40,50);
my $n = 45;

my $result = twoSum(\@m,$n);
#print $result."\n";

sub twoSum(){
    my ($arr,$tar) = @_;
    my @arr = @$arr;
    my ($indx1,$indx2);
    my $indx ;
    foreach ($indx = 0 ; $indx <= $#arr ; $indx++ ){
        my $curr = @arr[$indx];
        my $need = $tar - $curr;
        if (grep /^$need$/ , @arr){
            $indx1 ? $indx2 = $indx+1 : $indx1 = $indx+1;
        }
    }
    print "\$indx1 = $indx1 , \$indx2 = $indx2\n";
}
