#!/usr/bin/env perl

use strict;
use Data::Dumper;

#   The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)
#
#   P   A   H   N
#   A P L S I I G
#   Y   I   R
#   And then read line by line: "PAHNAPLSIIGYIR"
#   Write the code that will take a string and make this conversion given a number of rows:
#
#   string convert(string text, int nRows);
#   convert("PAYPALISHIRING", 3) should return "PAHNAPLSIIGYIR".

my ($str,$row) = @ARGV;
my $result     = conv($str,$row);
print $result."\n";

sub conv(){
    my ($s,$n) = @_;
    my @a   = split // , $s;
    my $len = @a;
    return $s if ($n <= 1 || $len ==0 );
    my ($res,$i);
    for ($i=0;$i<$len && $i<$n;$i++){
        my $indx = $i;
        $res .= @a[$indx];
        print "@a[$indx]";
        
        my $k;
        for ($k=0;$indx<$len;$k++){
            if ($i == 0 || $i == $n-1){
                $indx += 2*$n-2;
                my $x;
                for ($x=1;$x<=$n-2;$x++){
                    print " ";
                }
                print "@a[$indx]";
            }else{
                if ($k%2){
                    $indx += 2*$i;
                    print "@a[$indx]";
                }else{
                    $indx += 2*($n-1-$i);
                    my ($y,$z);
                    for ($y=1;$y<=$n-2-$i;$y++){
                        print " ";
                    }
                    print "@a[$indx]";
                    for ($z=1;$z<=$i-1;$z++){
                        print " ";
                    }
                }
            }
            $res .= @a[$indx] if ($indx < $len);
        } 
        print "\n";
    } 
     
    return $res; 
    
}
