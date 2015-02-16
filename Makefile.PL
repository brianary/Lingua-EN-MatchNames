use ExtUtils::MakeMaker;

WriteMakefile(
  NAME	          => 'Lingua::EN::MatchNames',
  AUTHOR          => 'Brian Lalonde (brian@webcoder.info)',
  LICENSE         => 'perl',
  VERSION_FROM    => 'MatchNames.pm', 
  ABSTRACT_FROM   => 'MatchNames.pm',
  BINARY_LOCATION => 'Lingua-EN-MatchNames.ppm.tar.gz',
  PREREQ_PM       => 
  {
    'Lingua::EN::NameParse' => 0,
    'Lingua::EN::Nickname'  => 0,
    'String::Approx'        => 0,
    'Text::Metaphone'       => 0,
    'Text::Soundex'         => 0,
  },
);
