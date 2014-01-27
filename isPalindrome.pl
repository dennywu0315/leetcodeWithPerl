#!/usr/bin/env perl
use Data::Dumper;

#Determine whether an integer is a palindrome. Do this without extra space.

my ($par)  = @ARGV;
my $result = isPalindrome($par);
$result? print "Yes\n" : print "No\n";

my $result2 = isPalindrome2($par);
$result2? print "Yes\n" : print "No\n";


sub isPalindrome(){
    #just like reverse integer
    my ($num) = @_;
    my $org = $num;
    my $res   = 0;
    while ($num > 0 ){
        $res = $res*10 + $num%10;
        $num = int ($num/10);   
    }
    return ($org == $res); 
}

sub isPalindrome2(){
    my ($num) = @_;
    my @str = split //,$num;
    my $res = 1;
    for (my $i=0;$i<($#str+1)/2;$i++){
        $res = 0 && last unless (@str[$i] == @str[$#str-$i] );
    } 
    return $res;
}
