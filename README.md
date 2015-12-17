# NAME

Lingua::EN::MatchNames - Smart matching for human names.

# SYNOPSIS

    use Lingua::EN::MatchNames;

    $score= name_eq( $firstn_0, $lastn_0, $firstn_1, $lastn_1 );

# DESCRIPTION

You have two databases of person records that need to be synchronized or matched up,
but they use different keys--maybe one uses SSN and the other uses employee id.
The only fields you have to match on are first and last name.

That's what this module is for.

Just feed the first and last names to the `name_eq()` function, and it returns
`undef` for no possible match, and a percentage of certainty (rank) otherwise.
The ranking system isn't very scientific, and gender isn't considered, though
it probably should be.

The `name_eq()` function, checks for: 

- inconsistent case (MacHenry = Machenry = MACHENRY)
- inconsistent symbols (O'Brien = Obrien = O BRIEN)
- misspellings (Grene = Green)
- last name hyphenation (Smith-Curry = Curry)
- similar phonetics (Hanson = Hansen)
- nicknames (Midge = Peggy = Margaret)
- extraneous initials (H. Ross = Ross)
- extraneous suffixes (Reed, Jr. = Reed II = Reed)
- and more...

## Preliminary Tests:

    Homer Simpson HOMER SIMPOSN: 77
    Marge Simpson MIDGE SIMPSON: 81
    Brian Lalonde BRYAN LA LONDE: 82
    Brian Lalonde RYAN LALAND: 72
    Peggy MacHenry Midge Machenry: 81
    Liz Grene Elizabeth Green: 72
    Chuck Reed, Jr. Charles Reed II: 82
    Kathy O'Brien Catherine Obrien: 81
    Lizzie Hanson Lisa Hanson: 91
    H. Ross Perot Ross PEROT: 88
    Kathy Smith-Curry KATIE CURRY: 81
    Dina Johnson-Warner Dinah J-Warner: 80
    Leela Miles-Conrad Leela MilesConrad: 86
    C. Renee Smythe Cathy Smythe: 71
    Victoria (Honey) Rider HONEY RIDER: 88
    Bart Simpson El Barto Simpson: 80
    Bart Simpson Lisa Simpson: (no match)
    Arthur Dent Zaphod Beeblebrox: (no match)

# WARNING

The scoring in this version is utterly arbitrary.
I made all of the numbers up.
The certainty percentages should be OK relative to each other, but
would be better if someone could give me some statistical data.

Be sure and **test** this against your data first!
Your data may not look like my test data.

And although I hope this is useful to many, I do not provide any
kind of warranty (expressed or implied), and do not suggest the
suitability of this module to any particular purpose.  
This module probably should not be used for life support or military
purposes, and it **must** not be used for unsolicited commercial email
or other bulk advertising.

# AUTHOR

Brian Lalonde

# REQUIREMENTS

Lingua::EN::NameParse,
Lingua::EN::Nickname,
Parse::RecDescent,
String::Approx, 
Text::Metaphone,
Text::Soundex

# SEE ALSO

perl(1), 
[Lingua::EN::NameParse](https://metacpan.org/pod/Lingua::EN::NameParse),
[Lingua::EN::Nickname](https://metacpan.org/pod/Lingua::EN::Nickname),
[String::Approx](https://metacpan.org/pod/String::Approx), 
[Text::Metaphone](https://metacpan.org/pod/Text::Metaphone),
[Text::Soundex](https://metacpan.org/pod/Text::Soundex)
