use strict;
use Bio::SeqIO;
open(file1, ">$ARGV[1]");
my $seqio = Bio::SeqIO->new(-file => $ARGV[0], -format => "fasta");
while(my$seqobj = $seqio->next_seq) {
    my $id  = $seqobj->display_id;    # there's your key
    my $seq = $seqobj->seq;           # and there's your value
    print file1 ">$id\n$seq\n";
}
close file1;
