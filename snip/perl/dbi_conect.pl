
my $db = DBI->connect('DBI:mysql:database='. 'grab_autihr_refactored'  . ';host=' . 'localhost' . ';port=3306', 
	'root', 'caj9K', 
	{'RaiseError' => 1, AutoCommit => 1 , mysql_enable_utf8 => 1 } ) || croak $@;

$db->do('set names utf8');
