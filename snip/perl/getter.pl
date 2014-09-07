
sub %%getter{
	my $self = shift;
	$self->{%%var} = $_[0] if @_;
	return $self->{%%var};
}
