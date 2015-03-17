#!/usr/bin/perl

%hash = ();

while (<file1>) {
	chomp;
	$hash{$_} = 1;
}
close file1;

while (<file2>) {
	chomp;
	my $key = $hash{$_};
	if ($key eq undef)
	{
		print rfile "$_\n";
		next;
	}
	delete $hash{$_};
}
close file2;

@hashkey = keys  %hash;
foreach $key(@hashkey)
{
	print afile "$key\n";
}

close afile;
close rfile;

