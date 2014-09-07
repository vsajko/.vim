sub new{
	my $class = shift;
	my %parms = @_;

	my $self = {};
	bless $self, $class;
	$self->{NESTO} = undef;
	while ( my($key,$value) = each %parms ) {
		$self->{$key} = $value;
	}
	return $self;
}

