#!/usr/bin/perl

#   Given a string, find the length of the longest substring without repeating characters. For example, the longest substring without repeating letters for "abcabcbb" is "abc", which the length is 3. For "bbbbb" the longest substring is "b", with the length of 1.

use Data::Dumper;

my ($par) = @ARGV;

my $result = lengthOfLongestSubstring($par);
print Dumper $result;

sub lengthOfLongestSubstring(){
    my ($str) = @_;
    my @str = split //, $str;
    my ($wHash,$result);
    my $len = $#str;     
    for (my $i=0 ; $i<=$len ; $i++){
        my $tmpStr;
        foreach (@str){
            $tmpStr .= $_;
            $wHash->{$tmpStr} += 1;
        }
        shift @str;
    }
    my $resStr;
    my $resLen = 0;
    my $resRep = 0;
    while (my ($key,$value) = each %$wHash){
        my @tmpS = split //,$key;
        if ($value >= $resRep ){
            $resLen = 0 if ($value > $resRep);
            if ($#tmpS >= $resLen){
                $resStr = $key;
                $resLen = $#tmpS;
                $resRep = $value;
            }
        }
    } 
    $result->{'str'} = $resStr;
    $result->{'len'} = $resLen+1;

    return $result;
}
