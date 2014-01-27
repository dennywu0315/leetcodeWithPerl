#!/usr/bin/env perl

use Data::Dumper;

#   Given an array and a value, remove all instances of that value in place and return the new length.
#   The order of elements can be changed. It doesn't matter what you leave beyond the new length.

my $var = pop @ARGV;
my @par = @ARGV;

my $result = removeElement(\@par,$var);

print Dumper $result;

sub removeElement(){
    my ($arrTmp,$var) = @_;
    my @arr = @$arrTmp;
    my ($res,@resArr);

    #@resArr = grep{ $_ ne $var} @arr; #use grep

    foreach (@arr){
        push @resArr,$_ if ($_ ne $var);
    }

    return $hash = {
        arr => \@resArr,
        len => $#resArr +1,
    };
}
