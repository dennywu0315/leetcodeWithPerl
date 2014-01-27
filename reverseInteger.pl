#!/usr/bin/env perl
use Data::Dumper;

#   Reverse digits of an integer.

#   Example1: x = 123, return 321
#   Example2: x = -123, return -321

my ($par)  = @ARGV;
my $result = reverseInteger($par);
print $result."\n";

my $result2 = reverseInteger2($par);
print $result2."\n";


sub reverseInteger(){
    my ($num) = @_;
    my $flag;
    if ($num < 0){
        $flag = 1;
        $num = 0 - $num;
    }
    my $res   = 0;
    while ($num > 0 ){
        $res = $res*10 + $num%10;
        $num = int ($num/10);   
    }
    $flag? return 0-$res : return $res;
}

sub reverseInteger2(){
    my ($num) = @_;
    my @str = split //,$num;
    my $res;
    $res = shift @str if ($num =~ /^-/);
    @str = reverse @str;
    foreach(@str){
       $res .= $_; 
    }
    return $res;
}
