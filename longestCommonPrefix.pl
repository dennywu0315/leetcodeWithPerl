#!/usr/bin/perl

use Data::Dumper;

#Write a function to find the longest common prefix string amongst an array of strings.

my @strArr = @ARGV;

my $result = longestCommonPrefix(@strArr);
print Dumper $result;

sub longestCommonPrefix(){
    my @str = @_;
    my $res = getPrefix(@str[0],@str[1]); 
    for (my $y=2;$y<=$#str;$y++){
        $res = getPrefix($res,@str[$y]);
    }
    return $res; 
}

sub getPrefix(){
    my ($s1,$s2) = @_;
    my @s1 = split // , $s1;
    my @s2 = split // , $s2;
    my $min = ($#s1 >= $#s2) ? $#s2:$#s1;
    my $res;
    for (my $i=0;$i<=$min;$i++){
        last if (@s1[$i] ne @s2[$i]);
        $res .= @s1[$i]; 
    }
    return $res;
}
