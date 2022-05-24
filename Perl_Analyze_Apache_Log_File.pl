use 5.18.0;
use warnings;

my $filename = "access_log.txt";

my $address = 0;

my $notaddress = 0;

open(my $fh, '<', $filename) or die "Cannot open file: $!";

while (my $line = <$fh>) {
    
    chomp($line);
    my $pos = index($line, "127.0.0.1");
    #my $address = substr $line, $pos, 10;
    if ($pos== -1){
         $notaddress= $notaddress+1; 
    } else {
        $address = $address+1;      
    }
    
}

print "$address is home addresses"  ;  
print "\n";
print "$notaddress are incomming addresses"  ;
close $fh;



