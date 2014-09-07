use open IO => ":encoding(utf8)"; #for files
binmode STDOUT , ":utf8";
binmode STDERR , ":utf8";
binmode STDIN , ":utf8";
@ARGV = map{ Encode::decode_utf8($_) } @ARGV ; #put all from @ARGV to utf8

