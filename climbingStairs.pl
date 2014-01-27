#!/usr/bin/env perl

#You are climbing a stair case. It takes n steps to reach to the top.
#Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

my ($n) = @ARGV;
my $result = climbStairs($n);
print $result."\n";


sub climbStairs(){
    my ($n) = @_;
    return 1 if ($n == 0 || $n == 1);
    my $prev = 1;
    my $curr = 1;
    my $i;
    for ($i = 2;$i <= $n;$i ++){
        my $tmp = $prev + $curr;
        $prev   = $curr;
        $curr   = $tmp;
    }
    return $curr; 
}
