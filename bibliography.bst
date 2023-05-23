% Based on econ.bst by Shiro Takeda, version 2.1, time-stamp <2013-07-05 14:54:35>




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% Customization %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




% ---------------- Index number (as in plain.bst) ----------------

%% Attach number index

FUNCTION {bst.use.number.index}
{ #0 }    % Do not use number index (default)
% { #1 }  % Use number index

%% The string before number index

FUNCTION {bst.number.index.pre}
{ "[" }    % (default)

%% The string after number index (adjustment is recommended)

FUNCTION {bst.number.index.post}
{ "]\hskip1.0em " }    % (default)

%% Maximum digit of number index

FUNCTION {bst.number.index.digit}
% { "1" }  % If the number of reference items < 10
{ "2" }    % If the number of reference items < 100 (default)
% { "3" }  % If the number of reference items >= 100

%% Functions to adjust space & postion (adjust for fonts other than Computer Modern)

% Setting for bst.number.index.digit = 1:
FUNCTION {bst.number.index.bibhang.one}
{ "2.05em" }

% Setting for bst.number.index.digit = 2:
FUNCTION {bst.number.index.bibhang.ten}
{ "2.55em" } 

% Setting for bst.number.index.digit = 3:
FUNCTION {bst.number.index.bibhang.hund}
{ "3.05em" }


% ---------------- Order of references ----------------

%% Sorting of references by authors or years

FUNCTION {bst.sort.year}
{ #0 }    % Author sorting: year is used as the sorting key after author (default)
% { #1 }  % Chronological sorting: year is used as the sorting key before author

%% Chronological order

FUNCTION {bst.reverse.year}
{ #0 }    % Normal order: from old documents to recent documents (default)
% { #1 }  % Reverse order: from recent documents to old documents

%% Sorting of references by citation order

FUNCTION {bst.no.sort}
{ #0 }      % References listed in author order (default)
% { #1 }    % References listed in citation order

%% Sorting of references by entry type (article, book, incollection etc.)

FUNCTION {bst.sort.entry.type}
{ #0 }    % References listed in author order (default)
% { #1 }  % References listed by entry type

%% Use absorder field to sort items
% Order of priority to sort items: absorder -> author -> year -> order -> month -> title, where absorder and order fields are specific to econ.bst.

FUNCTION {bst.notuse.absorder.field}
{ #0 }    %  Use absorder field to sort items (default)
% { #1 }  % Do not use absorder field to sort items

%% Use order field to sort items (order field is specific to econ.bst)

FUNCTION {bst.notuse.order.field}
{ #0 }    %  Use order field to sort items (default)
% { #1 }  % Do not use order field to sort items


% ---------------- Author ----------------

%% The string before author

FUNCTION {bst.author.pre}
% { "\textbf{" }
{ "" }    % (default)

%% The string after author:

FUNCTION {bst.author.post}
% { ".}" }
{ "." }    % (default)

%% Abbreviation of a succession of the same author's name by ---

FUNCTION {bst.use.bysame}
{ #0 }    % Abbreviation is not used
% { #1 }    % Abbreviation is used (default)
% { #2 }    %  Abbreviation is used with alternative style

%% Definition of abbreviation command

FUNCTION {bst.bysame.definition}
{ "\hskip.3em \leavevmode\rule[.5ex]{3em}{.3pt}\hskip0.5em" } % (default)
% { "\leavevmode\hbox to\leftmargin{\hrulefill\,\,}" } % If you set #2 to bst.use.bysame, use this option

%% Order of fist & last names of authors

FUNCTION {bst.author.name}
{ #0 }    % First author: last-first | other authors: first-last (default)
% { #1 }	% All authors: last-first
% { #2 } % All authors: first-last

%% Abbreviate first name of authors & editors

FUNCTION {bst.first.name.initial}
{ #0 }    % full letters (default)
% { #1 }    % initial letter only

%% String used to separate author names in references (two authors)
% String replacing _ in "Mr. A _ Mr. B "

FUNCTION {bst.and}
{ ", and " }
% { " and " }    % (default)

%% String used to separate author names in references (more than two authors)
% String replacing _ in "Mr. A, Mr. B _ Mr. C"

FUNCTION {bst.ands}
{ ", and " }    % (default)

%% String used to separate author names in citations (two authors)
% String replacing _ in "Mr. A _ Mr. B "

FUNCTION {bst.cite.and}
{ " and " }    % (default)

%% String used to separate author names in citations (more than two authors)
% String replacing _ in "Mr. A, Mr. B _ Mr. C"

FUNCTION {bst.cite.ands}
{ ", and " }    % (default)

%% Author names in citations are abbreviated if the number of authors >= bst.and.others.num

FUNCTION {bst.and.others.num}
% { #3 }    %  (default)
{ #4 }

%% Strings used when abbreviating multiple authors in citations

FUNCTION {bst.and.others}
{ " et~al." }    % (default)


% ---------------- Title ----------------

%% Decapitalize strings in title

FUNCTION {bst.title.lower.case}
{ #0 }    % Do not decapitalize title (default)
% { #1 }   % Decapitalize title

%% Hide title filed

FUNCTION {bst.hide.title}
{ #0 }    % Title field is displayed (default)
% { #1 }  % Title field is hidden 

%% The string before title

FUNCTION {bst.title.pre}
{ "``" }    % (default)

%% The string after title

FUNCTION {bst.title.post}
{ ".''" }
% { ",''" }    % (default)

%% The string before book title

FUNCTION {bst.book.pre}
{ " \textit{" }    % (default)

%% The string after book title

FUNCTION {bst.book.post}
{ "}." }
% { "}" }    % (default)


% ---------------- Year ----------------

%% Position of year

FUNCTION {bst.year.position}
{ #0 }    % Right after author (default)
% { #1 }  % Article: at the end | Nonarticle: at the end, before note field
% { #2 }  % Article: after journal name | Nonarticle: at the end, before note field
% { #3 }  % Article: after volume | Nonarticle: at the end, before note field

%% The string before year only for articles

FUNCTION {bst.year.pre}
{ " " }
% { " (" }    % (default)

%% The string after year only for articles

FUNCTION {bst.year.post}
{ ". " }
% { ") " }    % (default)

%% The string after year for nonarticles (book, incollection)

FUNCTION {bst.year.na.pre}
{ " " }
% { " (" }    % (default)

%% The string after year for nonarticles (book, incollection)

FUNCTION {bst.year.na.post}
{ ". " }
% { ") " }    % (default)


% ---------------- Month ----------------

%% Hide month

FUNCTION {bst.hide.month}
% { #0 }  % Show month field (default)
{ #1 }    % Hide month field

%% The string before month

FUNCTION {bst.month.pre}
{ ", " }    % (default)

%% The string after month

FUNCTION {bst.month.post}
{ "" }    % (default)


% ---------------- Booktitle & collection ----------------

%% The string before booktitle

FUNCTION {bst.btitle.pre}
{ " \textit{" }    % (default)

%% The string after booktitle

FUNCTION {bst.btitle.post}
{ "}," }
% { "}" }    % (default)

%% String for "in" collection

FUNCTION {bst.in}
{ " In " }
% { " in " }    % (default)


% ---------------- Journal name ----------------

%% The string before journal name

FUNCTION {bst.journal.pre}
{ " \textit{" }    % (default)

%% The string after journal name

FUNCTION {bst.journal.post}
{ "}" }    % (default)


% ---------------- Editor ----------------

%% String used to separate editor names in references (two editors)
% String replacing _ in "Mr. A _ Mr. B "

FUNCTION {bst.editor.and}
{ " and " }  % (default)

%% String used to separate editor names in references (more than two editors)
% String replacing _ in "Mr. A, Mr. B _ Mr. C"

FUNCTION {bst.editor.ands}
{ ", and " }    % (default)

%% The string that indicates multiple editors

FUNCTION {bst.editors}
{ " edited " }    % (default)

%% The string that indicates single editor

FUNCTION {bst.editor}
{ " edited " }    % (default)

%% Order of editor & booktitle in incollection & inproceedings

FUNCTION {bst.editor.btitle.order}
{ #1 }		% booktitle -> editors 
% { #0 }    % editors -> booktitle (default)


% ---------------- Edition ----------------

%% The string before edition

FUNCTION {bst.edition.pre}
% { ". " }    % (default)
{ " " }

%% The string after edition

FUNCTION {bst.edition.post}
{ " ed." }    % (default)


% ---------------- Volume ----------------

%% The string before journal volume

FUNCTION {bst.volume.pre}
{ " " }
% { ", vol. " }    % (default)
% { ", " }

%% The string before book volume

FUNCTION {bst.bvolume.pre}
%{ ", " }
{ ", vol. " }    % (default)

%% The string after volume

FUNCTION {bst.volume.post}
{ "" }    % (default)


% ---------------- Issue number ----------------

%% Hide issue number

FUNCTION {bst.hide.number}
{ #0 }    %  Show issue number (default)
% { #1 }    %  Hide issue number

%% The string before issue number

FUNCTION {bst.number.pre}
{ " (" }
% { ", No. " }    % (default)

%% The string after issue number

FUNCTION {bst.number.post}
{ ")" }
% { "" }    % (default)


% ---------------- Chapter ----------------

%% The string before chapter

FUNCTION {bst.chapter.pre}
{ ", chap." }    % (default)

%% The string after chapter

FUNCTION {bst.chapter.post}
{ "" }    % (default)


% ---------------- Page ----------------

%% The string before page (multiple pages)

FUNCTION {bst.pages.pre}
{ ": " }
% { ", pp." }    % (default)

%% The string before page (single page)

FUNCTION {bst.page.pre}
{ ": " }
% { ", p." }    % (default)

%% The string before page in books & collections (multiple pages)

FUNCTION {bst.bpages.pre}
{ ", " }
% { ", pp." }    % (default)

%% The string before page in books & collections (single page)

FUNCTION {bst.bpage.pre}
{ ", " }
% { ", p." }    % (default)

%% The string after page (multiple pages)

FUNCTION {bst.pages.post}
{ "" }    % (default)

%% The string after page (single page)

FUNCTION {bst.page.post}
{ "" }    % (default)


% ---------------- Address ----------------

%% The string before address

FUNCTION {bst.address.pre}
% { ", " }    % (default)
{ ". " }

%% The string after address

FUNCTION {bst.address.post}
{ "" }    % (default)

%% Order of address & publisher

FUNCTION {bst.address.position}
{ #0 }    % Address before publisher (default)
% { #1 }    % Address after publisher 


% ---------------- Publisher ----------------

%% The string before publisher

FUNCTION {bst.publisher.pre}
{ ": " }    % (default)

%% The string after publisher

FUNCTION {bst.publisher.post}
% { ", " }
{ "." }    % (default)


% ---------------- Series ----------------

%% The string before series

FUNCTION {bst.series.pre}
{ ", " }    % (default)

%% The string after series

FUNCTION {bst.series.post}
{ "" }    % (default)


% ---------------- Organization ----------------

%% The string before organization

FUNCTION {bst.organization.pre}
{ ", " }    % (default)

%% The string after organization

FUNCTION {bst.organization.post}
{ "" }    % (default)


% ---------------- School ----------------

%% The string before school

FUNCTION {bst.school.pre}
{ ", " }    % (default)

%% The string after school

FUNCTION {bst.school.post}
{ "" }    % (default)


% ---------------- Institution ----------------

%% The string before institution

FUNCTION {bst.institution.pre}
{ ", " }    % (default)

%% The string after institution

FUNCTION {bst.institution.post}
{ "" }    % (default)


% ---------------- Howpublished ----------------

%% The string before howpublished

FUNCTION {bst.howpublished.pre}
{ " " }    % (default)

%% The string after howpublished

FUNCTION {bst.howpublished.post}
{ "" }    % (default)


% ---------------- URL ----------------

%% Show or hide url

FUNCTION {bst.show.url}
{ #0 }    %  Do not show url field
% { #1 }    %  Show url field (default)

%% The string before url

FUNCTION {bst.url.pre}
% { ", URL: " }	% (default)
{ ", " }

%% The string after url

FUNCTION {bst.url.post}
{ "" }    % (default)


% ---------------- Access date for URL (only if "access" field is present in bib files) ----------------

%% The string before access

FUNCTION {bst.access.pre}
{ ", accessed on " } % (default)

%% The string after access

FUNCTION {bst.access.post}
{ "" }    % (default)


% ----------------  DOI (only if "doi" field is present in bib files) ----------------

%% Show or hide DOI

FUNCTION {bst.show.doi}
{ #0 }    %  Do not show DOI field
% { #1 }    %  Show DOI field (default)

%% The string before DOI

FUNCTION {bst.doi.pre}
% { ", DOI: \url{https://doi.org/" } % (default)
{ ". DOI: \url{https://doi.org/" } % (default)

%% The string after DOI

FUNCTION {bst.doi.post}
{ "}" }    % (default)


% ---------------- Other functions ----------------

%% The string before note

FUNCTION {bst.note.pre}
% { ", " }    % (default)
{ ". " }    % (default)

%% The string after note

FUNCTION {bst.note.post}
{ "" }    % (default)

%% The string that represents Technical report

FUNCTION {bst.techrep}
{ " Tech. Rep." }    % (default)

%% The string that represents master thesis

FUNCTION {bst.mthesis}
{ " Master's thesis" }    % (default)

%% The string that represents phd thesis

FUNCTION {bst.phdthesis}
{ " PhD dissertation" }    % (default)





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% .BST code %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





FUNCTION {bst.first}
{ "1st" }

FUNCTION {bst.second}
{ "2nd" }

FUNCTION {bst.third}
{ "3rd" }

FUNCTION {bst.fourth}
{ "4th" }

FUNCTION {bst.fifth}
{ "5th" }

FUNCTION {bst.st}
{ "st" }

FUNCTION {bst.nd}
{ "nd" }

FUNCTION {bst.rd}
{ "rd" }

FUNCTION {bst.th}
{ "th" }


% ---------- Memo about function definition ----------
%
% "a" 'b := indicates substituting string "a" for variable b.
% Note that integer number is expressed as # + integer in bst file.
%
% FUNCTION {name}
% { 's :=
%
% }
%
% This is the definition of a function named "name".   The function "name" is
% used in the following way 
%
% "foo" name
% "foo" is an argument for the function "name".
%
% About the definition of a function with more than two arguments, see the
% definition of "chop.word".
%
% -----------------------------------------------


ENTRY

  %%% Declaration of field
  { access address author booktitle chapter doi edition editor howpublished
    institution journal key month note number organization pages publisher
    school series title type url volume year

    % Fields specific to econ.bst
    order absorder
  }

  % Definition of entry variable.  The entry variable is a variable which has
  % different values according to different entries.

  %% Integer entry variable:
  { order.cited }

  %% String entry variable
  { label cyear flabel alabel extra.label sort.label sort.label.abb
    extra.label.bysame }

%%% Explanation of variables.

% alabel: author (editor) name (abbreviated form) used for citation part.
% Not used for reference part.

% flabel: author (editor) name (full name form) used for citation part.
% Not used for reference part.

% sort.label: author (editor) name (full name form) used for sorting
% entries (NB: this is not used for sorting in the current code).

% sort.label.abb: author (editor) name (abbreviated form) used for sorting
% entries.

% sort.key$: key used for sorting entries.
% It usually has the string of author - year - title - month.
    

%%% Declaration of variables:

%% String global variables:
STRINGS { s t tt }
STRINGS { year.num }
STRINGS { preone preten }
STRINGS { last.sort.label next.extra prev.author prev.author.aer this.author }
STRINGS { hang }
STRINGS { item.type }
STRINGS { tempa tempb }

%% Integer global variables:
INTEGERS { nameptr namesleft numnames name.num }
INTEGERS { multiresult }
INTEGERS { index }
INTEGERS { len }
INTEGERS { last.extra.num }
INTEGERS { output.state before.all mid.sentence after.sentence after.block }
INTEGERS { last.period.comma }
INTEGERS { len1.aer len2.aer i.aer }

%%% Definition of functions:
FUNCTION {not}
{   { #0 }
    { #1 }
  if$
}

FUNCTION {and}
{   'skip$
    { pop$ #0 }
  if$
}

FUNCTION {or}
{   { pop$ #1 }
    'skip$
  if$
}

%%% Initialize variables:
FUNCTION {init.state.consts}
{ #0 'before.all :=
  #1 'mid.sentence :=
  #2 'after.sentence :=
  #3 'after.block :=
}

%%% Remove comma and add period:
%
%
FUNCTION {add.period.x}
{ duplicate$
  #-1 #1 substring$ "," =
    { #-2 global.max$ substring$ "." * }
    { duplicate$
      #-1 #2 substring$ ". " =
        { #-3 global.max$ substring$ "." * }
        { duplicate$
          #-1 #2 substring$ ", " =
            { #-3 global.max$ substring$ "." * }
            { duplicate$
              #-1 #2 substring$ ",'" =
                { #-3 global.max$ substring$ ".'" * }
                { duplicate$
                  #-1 #2 substring$ ".'" =
                    { #-3 global.max$ substring$ ".'" * }
                    { duplicate$
                      #-1 #2 substring$ ".~" =
                        { #-3 global.max$ substring$ ".~" * }
                        { duplicate$
                          #-1 #2 substring$ ",~" =
                            { #-3 global.max$ substring$ ".~" * }
                            { duplicate$
                              #-1 #3 substring$ ",''" =
                                { #-4 global.max$ substring$ ".''" * }
                                { duplicate$
                                  #-1 #3 substring$ ".''" =
                                    { #-4 global.max$ substring$ ".''" * }
                                    { add.period$ }
                                  if$
                                }
                              if$
                            }
                          if$
                        }
                      if$
                    }
                  if$
                }
              if$
            }
          if$
        }
      if$
    }
  if$
}

FUNCTION {output.nonnull}
{ 's :=
  % mid.sentence
  output.state mid.sentence =
    { ", " * write$ }
    % not mid.sentence
    { output.state after.block =
        % after.block
        { add.period.x " " * write$ }
        % before.all
        { output.state before.all =
            'write$
            { add.period.x " " * write$ }
          if$
        }
      if$
      % not mid.sentence, set to mid.sentence
      mid.sentence 'output.state :=
    }
  if$
  s
}

%%% If the last character is period or comma, set non-zero to
%%% last.period.comma.
FUNCTION {period.comma.p}
{ duplicate$ 't :=
  t #-1 #1 substring$ "." = 
  t #-1 #1 substring$ "," = or
  t #-1 #1 substring$ ":" = or 
  t #-1 #2 substring$ ".'" = or
  t #-1 #2 substring$ ",'" = or
  t #-1 #3 substring$ ".''" = or
  t #-1 #3 substring$ ",''" = or
  t #-1 #2 substring$ ".~" = or
  t #-1 #2 substring$ ",~" = or
    { #1 'last.period.comma := }
    { #0 'last.period.comma := }
  if$
}

%%% remove unnecessary comma.
FUNCTION {remove.pre.comma}
{ 's :=
  s empty$
    { "" }
    { s #1 #1 substring$ "," = 
       { s #2 global.max$ substring$ }
       { s #1 #1 substring$ "." = 
          { s #2 global.max$ substring$ }
          's
         if$
       }
      if$
    }
  if$
}

%%% output.nonnull.nocomma is the same as output.nonnull except that it does
%%% not add commas even in mid.sentence.
FUNCTION {output.nonnull.nocomma}
{ 's :=
  output.state mid.sentence =
    % mid.sentence
    { period.comma.p "" * write$ }

    % not mid.sentence
    { output.state after.block =
        % after.block
        { add.period.x " " * write$ }
        % before.all
        { output.state before.all =
            'write$
            { add.period$ " " * write$ }
          if$
        }
      if$
      mid.sentence 'output.state :=
    }
  if$
  last.period.comma #0 =
    { s }
    { s remove.pre.comma }
  if$
}

% Not used in the current econ.bst.
% FUNCTION {output}
% { duplicate$ empty$
%     'pop$
%     'output.nonnull
%   if$
% }

FUNCTION {output.nocomma}
{ duplicate$ empty$
    'pop$
    'output.nonnull.nocomma
  if$
}

% Not used in the current econ.bst.
% FUNCTION {output.check}
% { 't :=
%   duplicate$ empty$
%     { pop$ "empty " t * " in " * cite$ * warning$ }
%     'output.nonnull
%   if$
% }

FUNCTION {output.check.nocomma}
{ 't :=
  duplicate$ empty$
    { pop$ "empty " t * " in " * cite$ * warning$ }
    'output.nonnull.nocomma
  if$
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Format in bbl file:

% \harvarditem[Brezis et~al.]{Brezis, Krugman and
%   Tsiddon}{1993}{brezis93:_leapf_inter_compet}
% Brezis, Elise~S., Paul~R. Krugman, and Daniel Tsiddon  (1993) ``Leapfrogging in
%   International Competition: A Theory of Cycles in National Technological
%   Leadership.'', {\em American Economic Review.}, Vol.~83. No.~5. pp.
%   1211--1219.

% \harvarditem[abbreviated citation]{full citation}{year}{keyword} ...

%%% Add period and newline.
FUNCTION {fin.entry}
{ add.period.x
  write$
  newline$
}

FUNCTION {new.block}
{ output.state before.all =
    'skip$
    { after.block 'output.state := }
  if$
}

FUNCTION {new.sentence}
{ output.state after.block =
    'skip$
    { output.state before.all =
        'skip$
        { after.sentence 'output.state := }
      if$
    }
  if$
}

FUNCTION {new.block.check}
{ empty$
    'skip$
    'new.block
  if$
}

FUNCTION {field.or.null}
{ duplicate$ empty$
    { pop$ "" }
    'skip$
  if$
}

%%% booktitle
FUNCTION {format.btitle}
{ booktitle empty$
    { "" }
    { bst.btitle.pre booktitle * bst.btitle.post * }
  if$
}

%%% journal
FUNCTION {format.journal}
{ journal empty$
    { "" }
    { bst.journal.pre journal * bst.journal.post * }
  if$
}

%%% title for book
FUNCTION {format.book}
{ title empty$
    { "" }
    { bst.book.pre title * bst.book.post * }
  if$
}

FUNCTION {format.url}
{ url empty$
    { "" }
    { type$ "online" = bst.show.url or
        { bst.url.pre "\url{" * url * "}" * bst.url.post *
          access empty$
             { "" * }
             { bst.access.pre * access * bst.access.post * }
          if$
        }
        { "" }
      if$
    }
  if$
}

FUNCTION {format.doi}
{ doi empty$ bst.show.doi not or
    { "" }
    { bst.doi.pre doi * bst.doi.post * }
  if$
}

%%% author and editor

%%% name
FUNCTION {format.names}
{ 's :=
  % insert 1 to nameptr.
  #1 'nameptr :=
  % Set the number of authors to numnames.
  s num.names$ 'numnames :=
  numnames 'namesleft :=
  % Repeat if namesleft > 0
  { namesleft #0 > }
  {  nameptr #1 =
     % First author
     { bst.author.name #0 =
       bst.author.name #1 =
       or
          { bst.first.name.initial #0 = 
  	   { s nameptr "{vv~}{ll}{, ff}{, jj}" format.name$ 't := }
  	   { s nameptr "{vv~}{ll}{, f.}{, jj}" format.name$ 't := }
  	  if$
  	}
          { bst.first.name.initial #0 = 
             { s nameptr "{ff~}{vv~}{ll}{, jj}" format.name$ 't := }
             { s nameptr "{f.~}{vv~}{ll}{, jj}" format.name$ 't := }
  	  if$
  	}
       if$
     }
     % The second or later authors
     { bst.author.name #0 =
       bst.author.name #2 =
       or
          { bst.first.name.initial #0 = 
             { s nameptr "{ff~}{vv~}{ll}{, jj}" format.name$ 't := }
             { s nameptr "{f.~}{vv~}{ll}{, jj}" format.name$ 't := }
  	 if$
          }
          { bst.first.name.initial #0 = 
               { s nameptr "{vv~}{ll}{, ff}{, jj}" format.name$ 't := }
               { s nameptr "{vv~}{ll}{, f.}{, jj}" format.name$ 't := }
  	 if$
          }
       if$
     }
    if$

    nameptr #1 >
      % The second or later authors
      { namesleft #1 >
          { ", " * t * }
          { t "others" =
              { bst.and.others * }
              { numnames #2 =
		   { bst.and * t * }
		   { bst.ands * t * }
      	  if$
      	}
            if$
          }
        if$
      }
      't
    if$
    nameptr #1 + 'nameptr :=
    namesleft #1 - 'namesleft :=
  }
  while$
}

%%% editor
FUNCTION {format.editornames}
{ 's :=
  #1 'nameptr :=
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { bst.first.name.initial #0 = 
        { s nameptr "{ff~}{vv~}{ll}{, jj}" format.name$ 't := }
        { s nameptr "{f.~}{vv~}{ll}{, jj}" format.name$ 't := }
      if$
      nameptr #1 >
        % If there are multiple editors
        { namesleft #1 >
            { ", " * t * }
            { t "others" =
                { bst.and.others * }
                { numnames #2 =
                    { bst.editor.and  * t * }
                    { bst.editor.ands * t * }
                  if$
                }
              if$
            }
          if$
        }
        't
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
}

% remove successive periods (commas) from author
FUNCTION {remove.ss.period.auth}
{ 's :=
  s format.names 'tempa :=
  bst.author.post 'tempb :=
  tempb #1 #1 substring$ "}" =
    { tempa tempb * }
    { tempa #-1 #1 substring$ tempb #1 #1 substring$ = 
        { tempa tempb #2 global.max$ substring$ * }
        { tempa tempb * }
      if$
    }
  if$
}

% <prev name list> <new name list> compare.names <modified name list>
FUNCTION {compare.names.aer}
{ 's :=
  'tempa :=

%   "current.author = " s * "\\" * write$ newline$
%   "prev.author = " tempa * "\\" * write$ newline$

  tempa num.names$ 'len1.aer :=  % len1 = the number of previous authors
  s num.names$ 'len2.aer :=         % len2 = the number of current authors

% len1.aer := min(len1.aer,len2.aer)
% len1 -> min{ the number of previous authors, the number of current authors }
  len1.aer len2.aer >
    { len2.aer 'len1.aer := }
    { }
  if$

% start with an empty string, then while the components are the same
% add "\bysame"
  ""
  #1 'i.aer :=

  { i.aer len1.aer > not }
    { tempa i.aer "{ff }{vv }{ll}{ jj}" format.name$
      s i.aer "{ff }{vv }{ll}{ jj}" format.name$
      =
        { #1 i.aer <
            { " and " * }       % \bysame ‚ÅÈ—ª‚·‚é’˜ŽÒ‚Ì‘O‚É‚Â‚­ and 
            { }
          if$
          "\bysame{}" *
          i.aer #1 + 'i.aer := } 
        { #-1 'len1.aer := }
      if$
    }
  while$

% add the rest of the second string
  { i.aer len2.aer > not }
    { #1 i.aer <
        { " and " * }
        { }
      if$
      s i.aer "{ff }{vv }{ll}{ jj}" format.name$ *
      i.aer #1 + 'i.aer :=
    }
  while$
}

%%% author
FUNCTION {format.authors}
{ author empty$
    { "" }
    { bst.use.bysame #2 =
        { prev.author.aer author compare.names.aer 's :=
          author 'prev.author.aer := }
        { author 's := }
      if$
      extra.label.bysame "bysame" =
        { "\bysame " }
        { bst.author.pre s remove.ss.period.auth * }
      if$
    }
  if$
}

%%% editor
FUNCTION {format.editors}
{ editor empty$
    { "" }
    { bst.use.bysame #2 =
        { prev.author.aer editor compare.names.aer 's :=
          editor 'prev.author.aer := }
        { editor 's := }
      if$
      extra.label.bysame "bysame" =
        { "\bysame " }
        { bst.author.pre s remove.ss.period.auth * }
      if$
      s num.names$ #1 >
       { bst.editors * }
       { bst.editor * }
      if$
    }
  if$
}

FUNCTION {format.authors.alt}
{ author empty$
    { "" }
    { extra.label.bysame "bysame" =
        {"\bysame "}
        { bst.author.pre author remove.ss.period.auth * }
      if$
    }
  if$
}

%%% editor
FUNCTION {format.editors.alt}
{ editor empty$
    { "" }
    { extra.label.bysame "bysame" =
        { "\bysame " }
        { bst.author.pre editor remove.ss.period.auth * }
      if$
      editor num.names$ #1 >
       { bst.editors * }
       { bst.editor * }
      if$
    }
  if$
}

%%% format.in.ed.booktitle
FUNCTION {format.editors.x}
{ editor empty$
    { "" }
    { bst.editor.btitle.order #0 =
        { "" }
        { editor num.names$ #1 >
           { bst.editors " by " * }
           { bst.editor  " by " * }
          if$
        }
      if$
      editor format.editornames *
      bst.editor.btitle.order #0 =
        { editor num.names$ #1 >
           { bst.editors * }
           { bst.editor * }
          if$
        }
        { "" * }
      if$
    }
  if$
}

%%% Remove commas in the cases like "?." and "?,".
FUNCTION {remove.irrelevant.period.comma}
{ 's :=
  s empty$
    { "" }
    { s #-1 #3 substring$ "?,'" =
      s #-1 #3 substring$ "?.'" = or
        { s #-3 global.max$ substring$ "'" * }
	{ s #-1 #4 substring$ "?,''" =
          s #-1 #4 substring$ "?.''" = or
            { s #-4 global.max$ substring$ "''" * }
	    { s #-1 #2 substring$ "?," =
              s #-1 #2 substring$ "?." = or
                { s #-2 global.max$ substring$ "" * }
                { s #-1 #3 substring$ "?,~" =
                  s #-1 #3 substring$ "?.~" = or
                    { s #-4 global.max$ substring$ "?~" * }
                    's
                  if$
                }
	      if$
            }
          if$
        }
      if$
    }
  if$
}

%%% title
FUNCTION {format.title.sub}
{ bst.title.lower.case #0 =
     { bst.title.pre title * bst.title.post * }
     { bst.title.pre title "t" change.case$ * bst.title.post * }
  if$
}

%%% title
FUNCTION {format.title}
{ title empty$
  bst.hide.title #0 = not or
    { "" }
    { format.title.sub remove.irrelevant.period.comma }
  if$
}

%%% title for misc.
FUNCTION {format.misc.title}
{ title empty$
    { "" }
    { bst.title.pre title * bst.title.post * }
  if$
}

% Convert "-" to "--" (for pages field)
FUNCTION {n.dashify}
{ 't :=
  ""
  %% while$
  { t empty$ not }
  { t #1 #1 substring$ "-" =
      { t #1 #2 substring$ "--" = not
          { "--" *
            t #2 global.max$ substring$ 't :=
          }
          { { t #1 #1 substring$ "-" = }
            { "-" *
              t #2 global.max$ substring$ 't :=
            }
            while$
          }
        if$
      }
      { t #1 #1 substring$ *
       t #2 global.max$ substring$ 't :=
      }
    if$
  }
  while$
}

%%% year
FUNCTION {format.year}
{ year empty$
    { "there's no year in " cite$ * warning$
      ", " }
    { type$ "article" =
        { bst.year.pre year * extra.label * bst.year.post * }
        { bst.year.na.pre year * extra.label * bst.year.na.post * }
      if$
    }
  if$
}

%%% page for book
FUNCTION {format.book.pages}
{ pages empty$
    { "" }
    { bst.pages.pre pages * bst.pages.post * }
  if$
}

%%% Attach tie for the string with two or less characters.
FUNCTION {tie.or.space.connect}
{ duplicate$ text.length$ #3 <
    { "~" }
    { " " }
  if$
  swap$ * *
}

FUNCTION {either.or.check}
{ empty$
    'pop$
    { "can't use both " swap$ * " fields in " * cite$ * warning$ }
  if$
}

%%% volume for book
FUNCTION {format.bvolume}
{ volume empty$
    { "" }
    { bst.bvolume.pre volume * bst.volume.post *
      series empty$
        'skip$
        %% If there is series field
        { " of " * series * bst.series.post * }
      if$
%       "volume and number" number either.or.check
    }
  if$
}

%%% series
FUNCTION {output.series}
{ series empty$
    { "" }
    { bst.series.pre series * bst.series.post * }
 if$
}

%%% number and series
FUNCTION {format.number.series}
{ volume empty$
    { number empty$
      bst.hide.month #0 = not or
        % number is empty
        { series empty$
            { "" }
            % series is not empty.
            { output.series }
          if$
        }
        % number is not empty$
        { series empty$
            { bst.number.pre number * bst.number.post * }
            % series is not empty.
            { bst.in bst.series.pre * series * bst.series.post *
              bst.number.pre * number * bst.number.post * }
          if$
        }
      if$
    }
    { "" }
  if$
}

%%% Number or not.
FUNCTION {is.num}
{ chr.to.int$
  duplicate$ "0" chr.to.int$ < not
  swap$ "9" chr.to.int$ > not and
}

FUNCTION {extract.num}
{ duplicate$ 't :=
  "" 's :=
  { t empty$ not }
  { t #1 #1 substring$
    t #2 global.max$ substring$ 't :=
    duplicate$ is.num
      { s swap$ * 's := }
      { pop$ "" 't := }
    if$
  }
  while$
  s empty$
    'skip$
    { pop$ s }
  if$
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%      edition

% Convert edition to 1st, 2nd, 3rd, 4th etc
FUNCTION {eng.ord}
{ duplicate$ "1" swap$ *
  #-2 #1 substring$ "1" =
     { bst.th * }
     { duplicate$ #-1 #1 substring$
       duplicate$ "1" =
         { pop$ bst.st * }
         { duplicate$ "2" =
             { pop$ bst.nd * }
             { "3" =
                 { bst.rd * }
                 { bst.th * }
               if$
             }
           if$
          }
       if$
     }
   if$
}

% Convert first, second etc in edition field to 1st, 2nd (from jfm.bst)
FUNCTION {convert.edition}
{ edition extract.num "l" change.case$ 's :=
  s "first" = s "1" = or
    { bst.first }
    { s "second" = s "2" = or
        { bst.second }
        { s "third" = s "3" = or
            { bst.third }
            { s "fourth" = s "4" = or
                { bst.fourth }
                { s "fifth" = s "5" = or
                    { bst.fifth }
                    { s #1 #1 substring$ is.num
                        { s eng.ord }
                        { edition }
                      if$
                    }
                  if$
                }
              if$
            }
          if$
        }
      if$
    }
  if$
}

%%% edition
FUNCTION {format.edition}
{ edition empty$
    { "" }
    { output.state mid.sentence =
        { bst.edition.pre convert.edition "l" change.case$ * bst.edition.post * }
        { bst.edition.pre convert.edition "t" change.case$ * bst.edition.post * }
      if$
    }
  if$
}

%%% month
FUNCTION {format.month}
{ month empty$
  bst.hide.month #0 = not or
    { "" }
    { bst.month.pre month * bst.month.post * }
  if$
}

%%% year and month
FUNCTION {format.date}
{ format.month format.year *
}

%%% Is multiple pages like 1-100?
FUNCTION { multi.page.check }
{ 't :=
  #0 'multiresult :=
    { multiresult not
      t empty$ not
      and
    }
    { t #1 #1 substring$
      duplicate$ "-" =
      swap$ duplicate$ "," =
      swap$ "+" =
      or or
        { #1 'multiresult := }
        { t #2 global.max$ substring$ 't := }
      if$
    }
  while$
  multiresult
}

%%% pages
FUNCTION {format.pages}
{ pages empty$
    { "" }
    { pages multi.page.check
      { bst.pages.pre pages n.dashify tie.or.space.connect * bst.pages.post }
      { bst.page.pre pages tie.or.space.connect * bst.page.post }
     if$
    }
 if$
}

FUNCTION {format.bpages}
{ pages empty$
    { "" }
    { pages multi.page.check
      { bst.bpages.pre pages n.dashify tie.or.space.connect * bst.pages.post }
      { bst.bpage.pre pages tie.or.space.connect * bst.page.post }
     if$
    }
 if$
}

%%% number
FUNCTION {format.number}
{ number empty$
  bst.hide.number #0 = not or
    { "" }
    { bst.number.pre number * bst.number.post * }
  if$
}

%%% volume
FUNCTION {format.volume}
{ volume empty$
    'skip$
    { bst.volume.pre volume * bst.volume.post *
      bst.year.position #3 =
        { format.year * }
        'skip$
      if$
    }
  if$
}

%%% number, page
FUNCTION {format.number.pages}
{ format.number format.pages * }

%%% volume, page
FUNCTION {format.volume.pages}
{ format.volume format.pages * }

%%% volume, number, page
FUNCTION {format.volume.number.pages}
{ format.volume format.number * format.pages * }

% volume, number, page
FUNCTION {format.vol.num.pages}
{ volume empty$
    %% volume is empty.
    { number empty$
        %% number is empty.
        { pages empty$
            % warning
            { "there is no volume, number, and pages in " cite$ * warning$ "" } 
            { "" format.pages * }
         if$
        }
        %% number is not empty.
        % warning
        { "there's a number but no volume in " cite$ * warning$
          format.number.pages }
     if$
    }
    %% volume is not empty.
    { number empty$
        %% number is empty.
        { format.volume.pages }
        %% number is not empty.
        { format.volume.number.pages }
     if$
    }
  if$
}

%%% chapter
FUNCTION {format.chapter}
{ chapter empty$
    { "" }
    { type empty$
        { bst.chapter.pre chapter tie.or.space.connect * bst.chapter.post }
        { ", " * type " " * chapter * }
      if$
    }
  if$
}

%%% chapter, pages
FUNCTION {format.chapter.pages}
{ chapter empty$
    { pages empty$
        { "" }
        { "" format.bpages * }
      if$
    }
    { pages empty$
        { "" format.chapter * }
        { "" format.chapter * format.bpages * }
      if$
    }
  if$
}

%%% editor and booktitle
FUNCTION {format.in.ed.booktitle}
{ booktitle empty$
    { "" }
    { editor empty$
        { bst.in format.btitle * }
        { bst.editor.btitle.order #0 =
            { bst.in format.editors.x * " " * format.btitle * }
            { bst.in format.btitle * " " * format.editors.x * }
          if$
        }
      if$
    }
  if$
}

%%% howpublished
FUNCTION {format.howpublished}
{ howpublished empty$
    { "" }
    { bst.howpublished.pre howpublished * bst.howpublished.post * }
  if$
}

%%% address
FUNCTION {format.address}
{ address empty$
    { "" }
    { bst.address.pre address * bst.address.post * }
  if$
}

%%% publisher
FUNCTION {format.publisher}
{ publisher empty$
    { "" }
    { bst.publisher.pre publisher * bst.publisher.post * }
  if$
}

%%% organization
FUNCTION {format.organization}
{ organization empty$
    { "" }
    { bst.organization.pre organization * bst.organization.post * }
  if$
}

%% publisher and address
FUNCTION {output.publisher.address}
{ address empty$
    { format.publisher "publisher" output.check.nocomma }
    { bst.address.position #0 = 
        { format.address output.nocomma
          format.publisher "publisher" output.check.nocomma }
        { format.publisher "publisher" output.check.nocomma
          format.address output.nocomma }
      if$
    }
  if$
}

%% address, organization, publisher
FUNCTION {output.address.organization.publisher}
{ address empty$
    %% address is empty
    { organization empty$
        %% organization is empty
        { publisher empty$
            'skip$
            { format.publisher "publisher" output.check.nocomma }
          if$
        }
        %% organization is not empty
        { publisher empty$
            { format.organization "organization" output.check.nocomma }
            { format.organization "organization" output.check.nocomma
              format.publisher "publisher" output.check.nocomma }
          if$
        }
     if$
    }
    %% address is not empty
    { organization empty$
        %% organization is empty
        { publisher empty$
            %% publisher is empty
            { format.address output.nocomma }
            %% publisher is not empty
            { bst.address.position #0 =
                { format.address output.nocomma
                  format.publisher "publisher" output.check.nocomma }
                { format.publisher "publisher" output.check.nocomma
                  format.address output.nocomma }
              if$
            }
         if$
        }
        %% organization is not empty
        { publisher empty$
            %% publisher is empty
            { format.organization "organization" output.check.nocomma
              format.address output.nocomma }
            %% publisher is not empty
            { format.organization "organization" output.check.nocomma
              bst.address.position #0 = 
                { format.address output.nocomma
                  format.publisher "publisher" output.check.nocomma }
                { format.publisher "publisher" output.check.nocomma
                  format.address output.nocomma }
              if$
            }
         if$
        }
     if$
    }
  if$
}

%%% misc
FUNCTION {empty.misc.check}
{ author empty$ title empty$ howpublished empty$
  month empty$ year empty$ note empty$
  and and and and and
  key empty$ not and
    { "all relevant fields are empty in " cite$ * warning$ }
    'skip$
  if$
}

FUNCTION {format.thesis.type}
{ type empty$
    'skip$
    { pop$ " " type * }
  if$
}

FUNCTION {format.tr.number}
{ type empty$
    { "Technical Report" }
    { " " type * }
  if$
  number empty$
    { "t" change.case$ }
    { number tie.or.space.connect }
  if$
}

%%% phdthesis
FUNCTION {format.phd}
{ bst.phdthesis }

%%% mastersthesis
FUNCTION {format.mthesis}
{ bst.mthesis }

%%% school
FUNCTION {format.school}
{ school empty$
    { "" }
    { bst.school.pre school * bst.school.post * }
  if$
}

%%% institution
FUNCTION {format.institution}
{ institution empty$
    { "" }
    { bst.institution.pre institution * bst.institution.post * }
  if$
}

%%% remove first ? characters.
FUNCTION {chop.word}
{ 's :=
  'len :=
  s #1 len substring$ =
    { s len #1 + global.max$ substring$ }
    's
  if$
}

FUNCTION {format.note}
{ note empty$
    { "" }
    { bst.note.pre note * bst.note.post * }
  if$
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%        \havarditem

FUNCTION {output.bibitem}
{ newline$
  "\harvarditem[" write$
  alabel write$                 % alabel <- abbreviated citation
  "]{" write$
  flabel write$                 % flabel <- full citation
  "}{" write$
  cyear write$
  % cyear = year
  "}{" write$
  cite$ write$                  % cite$ -> pusch keyword
  "}" write$
  % If number index is on
  bst.use.number.index #0 =
     'skip$
     { index #1 + 'index :=
       "" 'preone :=
       "" 'preten :=
       bst.number.index.digit "1" =
         'skip$
         { bst.number.index.digit "2" =
           { "\hskip0.5em" 'preone := }
           { bst.number.index.digit "3" =
              { "\hskip1em" 'preone :=
                "\hskip0.5em" 'preten := }
              'skip$
             if$
           }
         if$
         }
       if$  
     }
  if$
  newline$
  before.all 'output.state :=
  ""
  % number index
  bst.use.number.index #0 =
     'skip$
     { index #10 <
         % Insert spaces according to digit of number index.
         { preone }
         { index #100 <
             { preten }
             { "" }
           if$
         }
       if$
       bst.number.index.pre * index int.to.str$ * bst.number.index.post * write$
     }
 if$
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%        article

FUNCTION {article}
{ output.bibitem
  format.authors "author" output.check.nocomma
  bst.year.position #0 =
    { format.year "year" output.check.nocomma }
    'skip$
  if$
  format.title "title" output.check.nocomma

  format.journal "journal" output.check.nocomma
  bst.year.position #2 =
    { format.date output.nocomma }
    'skip$
  if$
  format.vol.num.pages output.nocomma

  bst.year.position #1 =
    { format.date output.nocomma }
    'skip$
  if$

  format.url output.nocomma
  format.doi output.nocomma

  format.note output.nocomma
  fin.entry
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%        book

FUNCTION {book}
{ output.bibitem
  author empty$
    { format.editors "author and editor" output.check.nocomma }
    { format.authors output.nonnull.nocomma
      "author and editor" editor either.or.check 
    }
  if$
  bst.year.position #0 =
    { format.year "year" output.check.nocomma }
    'skip$
  if$
  format.book "title" output.check.nocomma

  format.edition output.nocomma
  format.bvolume output.nocomma
  format.number.series output.nocomma
  format.book.pages output.nocomma
  output.publisher.address



  bst.year.position #0 = not
    { format.year "year" output.check.nocomma }
    'skip$
  if$

  format.url output.nocomma
  format.doi output.nocomma

  format.note output.nocomma
  fin.entry
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%        booklet

FUNCTION {booklet}
{ output.bibitem
  format.authors output.nocomma
  format.year output.nocomma
  format.misc.title "title" output.check.nocomma
  format.howpublished output.nocomma
  format.address output.nocomma

  format.url output.nocomma
  format.doi output.nocomma

  format.note output.nocomma
  fin.entry
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       inbook

FUNCTION {inbook}
{ output.bibitem
  author empty$
    { format.editors "author and editor" output.check.nocomma }
    { format.authors output.nonnull.nocomma
      "author and editor" editor either.or.check
    }
  if$
  bst.year.position #0 =
    { format.year "year" output.check.nocomma }
    'skip$
  if$
%   format.book remove.pre.comma "title" output.check.nocomma
  format.book "title" output.check.nocomma
  format.edition output.nocomma

  format.bvolume output.nocomma
  format.chapter.pages "chapter and pages" output.check.nocomma
  format.number.series output.nocomma
  output.publisher.address

  bst.year.position #0 = not
    { format.year "year" output.check.nocomma }
    'skip$
  if$

  format.url output.nocomma
  format.doi output.nocomma

  format.note output.nocomma
  fin.entry
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       incollection

FUNCTION {incollection}
{ output.bibitem
  format.authors "author" output.check.nocomma
  bst.year.position #0 =
    { format.year "year" output.check.nocomma }
    'skip$
  if$
  format.title "title" output.check.nocomma

 format.in.ed.booktitle "booktitle" output.check.nocomma
 format.bvolume output.nocomma
 format.edition output.nocomma
 format.chapter.pages output.nocomma
 output.address.organization.publisher

  bst.year.position #0 = not
    { format.year "year" output.check.nocomma }
    'skip$
  if$

  format.url output.nocomma
  format.doi output.nocomma

  format.note output.nocomma
  fin.entry
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       inproceedings

FUNCTION {inproceedings}
{ output.bibitem
  format.authors "author" output.check.nocomma
  bst.year.position #0 =
    { format.year "year" output.check.nocomma }
    'skip$
  if$
  format.title "title" output.check.nocomma

  format.in.ed.booktitle "booktitle" output.check.nocomma
  format.bvolume output.nocomma
  format.number.series output.nocomma
  format.pages output.nocomma
  output.address.organization.publisher

  bst.year.position #0 = not
    { format.date output.nocomma }
    { format.month output.nocomma }
  if$

  format.url output.nocomma
  format.doi output.nocomma

  format.note output.nocomma
  fin.entry
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       conference

FUNCTION {conference}
{ inproceedings }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       manual
FUNCTION {manual}
{ output.bibitem
  author empty$
    { organization empty$
        'skip$
        { organization output.nonnull.nocomma
          address output.nocomma
        }
      if$
    }
    { format.authors output.nonnull.nocomma }
  if$
  bst.year.position #0 =
    { format.year "year" output.check.nocomma }
    'skip$
  if$
  format.book "title" output.check.nocomma
  author empty$
    { organization empty$
        { format.address new.block.check
          format.address output.nocomma
        }
        'skip$
      if$
    }
    { output.address.organization.publisher }
  if$
  format.edition output.nocomma

  bst.year.position #0 = not
    { format.year "year" output.check.nocomma }
    'skip$
  if$

  format.url output.nocomma
  format.doi output.nocomma

  format.note output.nocomma
  fin.entry
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       mastersthesis

FUNCTION {mastersthesis}
{ output.bibitem
  format.authors "author" output.check.nocomma
  bst.year.position #0 =
    { format.year "year" output.check.nocomma }
    'skip$
  if$
  format.title "title" output.check.nocomma
  format.mthesis format.thesis.type output.nonnull.nocomma
  format.school "school" output.check.nocomma
  format.address output.nocomma

  bst.year.position #0 = not
    { format.year "year" output.check.nocomma }
    'skip$
  if$

  format.url output.nocomma
  format.doi output.nocomma

  format.note output.nocomma
  fin.entry
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       misc

FUNCTION {misc}
{ output.bibitem
  format.authors "author" output.check.nocomma
  bst.year.position #0 =
    { format.year "year" output.check.nocomma }
    'skip$
  if$
  format.misc.title output.nocomma
  format.howpublished output.nocomma

  bst.year.position #0 = not
    { format.date output.nocomma }
    { format.month output.nocomma }
  if$

  format.url output.nocomma
  format.doi output.nocomma
  
  format.note output.nocomma
  fin.entry
  empty.misc.check
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       Online

FUNCTION {online}
{ output.bibitem
  format.authors "author" output.check.nocomma
  bst.year.position #0 =
    { format.year "year" output.check.nocomma }
    'skip$
  if$
  format.misc.title output.nocomma
  format.howpublished output.nocomma

  bst.year.position #0 = not
    { format.date output.nocomma }
    { format.month output.nocomma }
  if$

  format.url output.nocomma
  format.doi output.nocomma
  
  format.note output.nocomma
  fin.entry
  empty.misc.check
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       phdthesis

FUNCTION {phdthesis}
{ output.bibitem
  format.authors "author" output.check.nocomma
  bst.year.position #0 =
    { format.year "year" output.check.nocomma }
    'skip$
  if$
  format.title "title" output.check.nocomma
  format.phd
  format.thesis.type output.nonnull.nocomma
  format.school "school" output.check.nocomma
  address empty$
    'skip$
    { format.address output.nocomma }
  if$

  bst.year.position #0 = not
    { format.year "year" output.check.nocomma }
    'skip$
  if$

  format.url output.nocomma
  format.doi output.nocomma

  format.note output.nocomma
  fin.entry
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       proceedings

FUNCTION {proceedings}
{ output.bibitem
  editor empty$
    { organization output.nocomma }
    { format.editors output.nonnull.nocomma }
  if$
  bst.year.position #0 =
    { format.year "year" output.check.nocomma }
    'skip$
  if$
  format.btitle remove.pre.comma "title" output.check.nocomma
  format.bvolume output.nocomma
  format.number.series output.nocomma
  output.address.organization.publisher

  bst.year.position #0 = not
    { format.year "year" output.check.nocomma }
    'skip$
  if$

  format.url output.nocomma
  format.doi output.nocomma

  format.note output.nocomma
  fin.entry
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       techreport

FUNCTION {techreport}
{ output.bibitem
  format.authors "author" output.check.nocomma
  bst.year.position #0 =
    { format.year "year" output.check.nocomma }
    'skip$
  if$
  format.title "title" output.check.nocomma
  format.tr.number output.nonnull.nocomma
  format.institution "institution" output.check.nocomma
  format.address output.nocomma

  bst.year.position #0 = not
    { format.year "year" output.check.nocomma }
    'skip$
  if$

  format.note output.nocomma
  fin.entry
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       unpublished

FUNCTION {unpublished}
{ output.bibitem
  format.authors "author" output.check.nocomma
  bst.year.position #0 =
    { format.year "year" output.check.nocomma }
    'skip$
  if$
  format.title "title" output.check.nocomma

  bst.year.position #0 = not
    { format.date remove.pre.comma output.nocomma }
    { month empty$
        'skip$
        { format.month remove.pre.comma output.nocomma }
      if$
    }
  if$

  format.url output.nocomma
  format.doi output.nocomma

  format.note "note" output.check.nocomma
  fin.entry
}

FUNCTION {default.type}
{ misc }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       Alias for month names:

MACRO {jan} {"January"}
MACRO {feb} {"February"}
MACRO {mar} {"March"}
MACRO {apr} {"April"}
MACRO {may} {"May"}
MACRO {jun} {"June"}
MACRO {jul} {"July"}
MACRO {aug} {"August"}
MACRO {sep} {"September"}
MACRO {oct} {"October"}
MACRO {nov} {"November"}
MACRO {dec} {"December"}

%%% Read entries:
READ

%%% Variable for remembering the order of citation.
INTEGERS { order.num }
FUNCTION {initialize.order.num}
{
  #1 'order.num :=
}
%%% Initialize a variables
EXECUTE {initialize.order.num}

%%% Variable for remembering the order of citation.
FUNCTION {set.order.cited}
{
  order.num 'order.cited :=
  #1 order.num + 'order.num :=
}
%%% Iterate for all entries:
ITERATE {set.order.cited}
  
%%% Remove symbols and convert to lowercase.
FUNCTION {sortify}
{ purify$ "l" change.case$ }

%%% names for sorting
FUNCTION {sort.format.names}
{ 's :=
  #1 'nameptr :=
  ""
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { nameptr #1 >
        { ", " * }
	'skip$
      if$
      s nameptr "{ll}{ f}{ j}" format.name$ 't :=
      nameptr numnames = t "others" = and
 	{ bst.and.others *}
	{ t sortify * }
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
}

FUNCTION {sort.format.names.abb}
{ 's :=
  s num.names$ 'numnames :=
  numnames bst.and.others.num <
     { s sort.format.names }
     { s #1 "{ll}{ f}{ j}" format.name$ " zz " * }
  if$
}

%%% Label for full author name.
FUNCTION {format.lab.names.full}
{ 's :=
  #1 'nameptr :=
  s num.names$ 'numnames :=
  numnames 'namesleft :=
  { namesleft #0 > }
      { s nameptr "{vv~}{ll}" format.name$ 't :=
        nameptr #1 >
          { namesleft #1 >
              { ", " * t * }
              { t "others" =
                  { bst.and.others * }
                  { numnames #2 > 
                      { bst.cite.ands * t * }
                      { bst.cite.and * t * }
                    if$
                  }
                if$
              }   
            if$
          }
          't
        if$
        nameptr #1 + 'nameptr :=
        namesleft #1 - 'namesleft :=
      }
  while$
  numnames #1 > #1 #2 = and {", eds" *} {} if$
  numnames #1 = #1 #2 = and {", ed" *} {} if$
}

%%% laberl for abbreviated author name.
FUNCTION {format.lab.names.abb}
{ 's :=
   s num.names$ 'numnames :=
   numnames bst.and.others.num <
     % if the number of authors is less than bst.and.others.num, full name.
     { s format.lab.names.full }
     % if the number of authors is equal or more than bst.and.others.num, abbreviated name.
     { s #1 "{ll}" format.name$ bst.and.others * }
   if$
}

%%% abbreviated author
FUNCTION {author.key.label.abb}
{ author empty$
    { key empty$
        { cite$ #1 #3 substring$ }
        { key #3 text.prefix$ }
      if$
    }
    { author format.lab.names.abb }
  if$
}

%%% full author
FUNCTION {author.key.label.full}
{ author empty$
    { key empty$
        { cite$ #1 #3 substring$ }
        { key #3 text.prefix$ }
      if$
    }
    { author format.lab.names.full }
  if$
}

FUNCTION {format.names.full.wo.and}
{ 's :=
  #1 'nameptr :=
  s num.names$ 'numnames :=
  numnames 'namesleft :=
  { namesleft #0 > }
      { s nameptr "{ll}{, ff}{, jj}" format.name$ 't :=
        nameptr #1 >
          { namesleft #1 >
              { " " * t * }
              { t "others" =
                  { " " * }
                  { numnames #2 > 
                      { " " * t * }
                      { " " * t * }
                    if$
                  }
                if$
              }   
            if$
          }
          't
        if$
        nameptr #1 + 'nameptr :=
        namesleft #1 - 'namesleft :=
      }
  while$
}

FUNCTION {author.key.full.wo.and}
{ author empty$
    { key empty$
        { cite$ #1 #3 substring$ }
        { key #3 text.prefix$ }
      if$
    }
    { author format.names.full.wo.and }
  if$
}

FUNCTION {author.editor.key.full.wo.and}
{ author empty$
    { editor empty$
        { key empty$
            { cite$ #1 #3 substring$ }
            { key #3 text.prefix$ }
          if$
        }
        { editor format.names.full.wo.and }
      if$
    }
    { author format.names.full.wo.and }
  if$
}

FUNCTION {editor.key.organization.key.full.wo.and}
{ editor empty$
    { key empty$
        { organization empty$
            { cite$ #1 #3 substring$ }
            { "The " #4 organization chop.word #3 text.prefix$ }
          if$
        }
        { key #3 text.prefix$ }
      if$
    }
    { editor format.names.full.wo.and }
  if$
}

FUNCTION {author.key.organization.key.full.wo.and}
{ author empty$
    { key empty$
        { organization empty$
            { cite$ #1 #3 substring$ }
            { "The " #4 organization chop.word #3 text.prefix$ }
          if$
        }
        { key #3 text.prefix$ }
      if$
    }
    { author format.names.full.wo.and }
  if$
}

%%% abbreviated author
FUNCTION {author.editor.key.label.abb}
{ author empty$
    { editor empty$
        { key empty$
            { cite$ #1 #3 substring$ }
            { key #3 text.prefix$ }
          if$
        }
        { editor format.lab.names.abb }
      if$
    }
    { author format.lab.names.abb }
  if$
}

%%% full author
FUNCTION {author.editor.key.label.full}
{ author empty$
    { editor empty$
        { key empty$
            { cite$ #1 #3 substring$ }
            { key #3 text.prefix$ }
          if$
        }
        { editor format.lab.names.full }
      if$
    }
    { author format.lab.names.full }
  if$
}

FUNCTION {author.key.organization.label.full}
{ author empty$
    { key empty$
        { organization empty$
            { cite$ #1 #3 substring$ }
            { "The " #4 organization chop.word #3 text.prefix$ }
          if$
        }
        { key #3 text.prefix$ }
      if$
    }
    { author format.lab.names.full }
  if$
}

FUNCTION {author.key.organization.label.abb}
{ author empty$
    { key empty$
        { organization empty$
            { cite$ #1 #3 substring$ }
            { "The " #4 organization chop.word #3 text.prefix$ }
          if$
        }
        { key #3 text.prefix$ }
      if$
    }
    { author format.lab.names.abb }
  if$
}

FUNCTION {editor.key.organization.label.full}
{ editor empty$
    { key empty$
        { organization empty$
            { cite$ #1 #3 substring$ }
            { "The " #4 organization chop.word #3 text.prefix$ }
          if$
        }
        { key #3 text.prefix$ }
      if$
    }
    { editor format.lab.names.full }
  if$
}

FUNCTION {editor.key.organization.label.abb}
{ editor empty$
    { key empty$
        { organization empty$
            { cite$ #1 #3 substring$ }
            { "The " #4 organization chop.word #3 text.prefix$ }
          if$
        }
        { key #3 text.prefix$ }
      if$
    }
    { editor format.lab.names.abb }
  if$
}

%%% Convert numbers: 0->9, 1->8, 2->7,..., 9->0
FUNCTION {reverse.num}
{ 's :=
  s "1" =
    { "8" 'year.num := }
    { s "2" =
        { "7" 'year.num := }
        { s "3" =
            { "6" 'year.num := }
            { s "4" =
                { "5" 'year.num := }
                { s "5" =
                    { "4" 'year.num := }
                    { s "6" =
                        { "3" 'year.num := }
                        { s "7" =
                            { "2" 'year.num := }
                            { s "8" =
                                { "1" 'year.num := }
                                { s "9" =
                                    { "0" 'year.num := }
                                    { s "0" =
                                        { "9" 'year.num := }
                                        { "9" 'year.num := }
                                    if$
                                    }
                                if$
                                }
                            if$
                            }
                        if$
                        }
                    if$
                    }
                if$
                }
            if$
            }
        if$
        }
    if$
    }
  if$
  year.num
}

%%% Convert year (large number -> small number)
FUNCTION {convert.year}
{ 't := 
  bst.reverse.year #0 =
    { t 'tt := }
    { t #1 #1 substring$ reverse.num 
      t #2 #1 substring$ reverse.num *
      t #3 #1 substring$ reverse.num *
      t #4 #1 substring$ reverse.num * 'tt := }
  if$
  tt
}

%%% cyear
FUNCTION {calc.cyear}
{ type$ "book" =
  type$ "inbook" =
  or
    'author.editor.key.full.wo.and
    { type$ "proceedings" =
        'editor.key.organization.key.full.wo.and
        { type$ "manual" =
            'author.key.organization.key.full.wo.and
            'author.key.full.wo.and
          if$
        }
      if$
    }
  if$
  duplicate$
  year empty$
    { "2199" 'cyear := }
    { year 'cyear := }
  if$
  year empty$
    { " " "2199" convert.year * field.or.null * }
    { " " year convert.year * field.or.null * }
  if$
  sortify 'sort.label :=
 pop$
}

FUNCTION {calc.sort.label.abb}
{ author empty$
    { editor empty$
       { "" }
       { editor 's := }
      if$
    }
    { author 's := }
  if$
  s sort.format.names.abb 't :=
  year empty$
    { t sortify " " * "2199" convert.year * 'sort.label.abb := }
    { t sortify " " * year convert.year * 'sort.label.abb := }
  if$
}

%%% flabel
FUNCTION {calc.flabel}
{ type$ "book" =
  type$ "inbook" =
  or
    'author.editor.key.label.full
    { type$ "proceedings" =
        'editor.key.organization.label.full
        { type$ "manual" =
            'author.key.organization.label.full
            'author.key.label.full
          if$
        }
      if$
    }
  if$
  'flabel :=
}

%%% alabel
FUNCTION {calc.alabel}
{ type$ "book" =
  type$ "inbook" =
  or
    'author.editor.key.label.abb
    { type$ "proceedings" =
        'editor.key.organization.label.abb
        { type$ "manual" =
            'author.key.organization.label.abb
            'author.key.label.abb
          if$
        }
      if$
    }
  if$
  'alabel :=
}

%%% title for sorting
FUNCTION {sort.format.title}
{ 't :=
  "A " #2
    "An " #3
      "The " #4 t chop.word
    chop.word
  chop.word
  sortify
  #1 global.max$ substring$
}

%%% author for sorting
FUNCTION {author.sort}
{ author empty$
    { key empty$
        { "to sort, need author or key in " cite$ * warning$
          ""
        }
        { key sortify }
      if$
    }
    { author sort.format.names }
  if$
}

%%% editor for sorting
FUNCTION {author.editor.sort}
{ author empty$
    { editor empty$
        { key empty$
            { "to sort, need author, editor, or key in " cite$ * warning$
              ""
            }
            { key sortify }
          if$
        }
        { editor sort.format.names }
      if$
    }
    { author sort.format.names }
  if$
}

FUNCTION {author.organization.sort}
{ author empty$
    { organization empty$
        { key empty$
            { "to sort, need author, organization, or key in " cite$ * warning$
              ""
            }
            { key sortify }
          if$
        }
        { "The " #4 organization chop.word sortify }
      if$
    }
    { author sort.format.names }
  if$
}

FUNCTION {editor.organization.sort}
{ editor empty$
    { organization empty$
        { key empty$
            { "to sort, need editor, organization, or key in " cite$ * warning$
              ""
            }
            { key sortify }
          if$
        }
        { "The " #4 organization chop.word sortify }
      if$
    }
    { editor sort.format.names }
  if$
}

%%% 1,...,9 -> 001,...,009
%%% 10,...,99 -> 010,...,099
FUNCTION {add.zero.to.number}
{ 's :=
    s text.length$ #1 =
      { "00" s * }
      { s text.length$ #2 =
          { "0" s * }
          { s }
        if$
      }
   if$
}

%% entry type
FUNCTION {bst.sort.entry.type.order}
{ 'item.type :=
  item.type "article" =
    { "01" }
    { item.type "book" =
        { "02" }
        { item.type "booklet" =
            { "03" }
            { item.type "comment" =
                { "04" }
                { item.type "conference" =
                    { "05" }
                    { item.type "inbook" =
                        { "06" }
                        { item.type "incollection" =
                            { "07" }
                            { item.type "inproceedings" =
                                { "08" }
                                { item.type "manual" =
                                    { "09" }
                                    { item.type "masterthesis" =
                                        { "10" }
                                        { item.type "misc" =
                                           { "11" }
                                           { item.type "phdthesis" =
                                              { "12" }
                                              { item.type "proceedings" =
                                                 { "13" }
                                                 { item.type "techreport" =
                                                    { "14" }
                                                    { item.type "unpublished" =
                                                       { "15" }
                                                       { "16" }
                                                      if$
                                                    }
                                                   if$
                                                 }
                                                if$
                                              }
                                             if$
                                           }
                                          if$
                                        }
                                      if$
                                    }
                                if$
                                }
                            if$
                            }
                        if$
                        }
                    if$
                    }
                if$
                }
            if$
            }
        if$
        }
    if$
    }
  if$
}

%%% Create sort.key$: absorder -> author -> year -> order -> month -> title.
FUNCTION {presort.one}
{
  bst.no.sort #0 = not
    { order.cited int.to.str$ add.zero.to.number " " * }
    { "" }
  if$
  bst.sort.year #0 = not
    %% Use year field as the primary sorting key.
    { year convert.year * }
    'skip$
  if$
  bst.sort.entry.type #0 = not
    { type$ bst.sort.entry.type.order * " " * }
    'skip$
  if$
  absorder empty$
    { "/// " * }
    { bst.notuse.absorder.field #0 =
       { absorder "999" =
          { "zzz " * }
          { absorder add.zero.to.number "000" =
             { "/// " * }
             { absorder add.zero.to.number * " " * }
            if$
          }
         if$
       }
       { "/// " * }
      if$
    }
  if$
  " " *
  sort.label.abb *
  " " *  
  type$ "book" = type$ "inbook" = or
    'author.editor.sort
    { type$ "proceedings" =
        'editor.organization.sort
        { type$ "manual" =
            'author.organization.sort
            'author.sort
          if$
        }
      if$
    }
  if$
  * " " *
  " "
  order empty$
    { "/// " * }
    { bst.notuse.order.field #0 =
       { order "999" =
          { "zzz " * }
          { order add.zero.to.number "000" =
             { "/// " * }
             { order add.zero.to.number * " " * }
            if$
          }
         if$
       }
       { "/// " * }
      if$
    }
  if$
  month empty$
    { * "/// " * }
       { month "999" =
          { * month add.zero.to.number * "zzz " * }
          { month add.zero.to.number "000" =
             { * month add.zero.to.number * "/// " * }
             { * month add.zero.to.number * " " * }
            if$
          }
         if$
       }
  if$
  title field.or.null sort.format.title
  *
  #1 entry.max$ substring$
  'sort.key$ :=
}

FUNCTION {presort.two}
{
  bst.no.sort #0 = not
    { order.cited int.to.str$ add.zero.to.number " " * }
    { "" }
  if$
  bst.sort.year #0 = not
    %% Use year field as the primary sorting key.
    { year convert.year * }
    'skip$
  if$
  bst.sort.entry.type #0 = not
    { type$ bst.sort.entry.type.order * " " * }
    'skip$
  if$
  absorder empty$
    { "/// " * }
    { bst.notuse.absorder.field #0 =
       { absorder "999" =
          { "zzz " * }
          { absorder add.zero.to.number "000" =
             { "/// " * }
             { absorder add.zero.to.number * " " * }
            if$
          }
         if$
       }
       { "/// " * }
      if$
    }
  if$
  " " * sort.label * " "
  order empty$
    { "/// " * }
    { bst.notuse.order.field #0 =
       { order "999" =
          { "zzz " * }
          { order add.zero.to.number "000" =
             { "/// " * }
             { order add.zero.to.number * " " * }
            if$
          }
         if$
       }
       { "/// " * }
      if$
    }
  if$
  month empty$
    { * "/// " * }
       { month "999" =
          { * month add.zero.to.number * "zzz " * }
          { month add.zero.to.number "000" =
             { * month add.zero.to.number * "/// " * }
             { * month add.zero.to.number * " " * }
            if$
          }
         if$
       }
  if$
  title field.or.null sort.format.title
  *
  #1 entry.max$ substring$
  'sort.key$ :=
}

%%% alabel
ITERATE {calc.alabel}

%%% flabel
ITERATE {calc.flabel}

%%% cyear and sort.label
ITERATE {calc.cyear}
ITERATE {calc.sort.label.abb}

%%% Sorting by $sort.key (first time)
%
% Sorting is done in two times. This is the first time.
%
% EXECUTE {presort.one.mess}
ITERATE {presort.one}
SORT

FUNCTION {forward.pass}
{ bst.use.bysame #0 = bst.use.bysame #2 = or
    % Not use \bysame
    { last.sort.label sort.label.abb =
        { last.extra.num #1 + 'last.extra.num :=
          last.extra.num int.to.chr$ 'extra.label :=
        }
        { "a" chr.to.int$ 'last.extra.num :=
          "" 'extra.label :=
          sort.label.abb 'last.sort.label :=
        }
      if$
    }
    % Use \bysame
    { last.sort.label sort.label.abb =
        { last.extra.num #1 + 'last.extra.num :=
          last.extra.num int.to.chr$ 'extra.label :=
        }
        { "a" chr.to.int$ 'last.extra.num :=
          "" 'extra.label :=
          sort.label.abb 'last.sort.label :=
        }
      if$
      author empty$
        { editor empty$
          { "" }
          'format.editors.alt
          if$
        }
        'format.authors.alt
      if$
      'this.author :=
      % format.names 'this.author :=
      this.author prev.author =
        { "bysame" 'extra.label.bysame := }
        { this.author "" =
            { "abcxyz" }
            'this.author
          if$
          'prev.author :=
        }
      if$
    }
  if$
}

FUNCTION {reverse.pass}
{ next.extra "b" =
    { "a" 'extra.label := }
    'skip$
  if$
  extra.label empty$ not
    { cyear extra.label * }
    { cyear "" * }
  if$
  "" field.or.null *
  'cyear :=
  extra.label 'next.extra :=
}

%%% \bysame
ITERATE {forward.pass}

REVERSE {reverse.pass}

%%% Sorting by sort.key$ (second time)
ITERATE {presort.two}
SORT

FUNCTION {reset.prev.author}
{ "xxyyzz" 'prev.author := }

EXECUTE {reset.prev.author}

FUNCTION {forward.pass.two}
{ bst.use.bysame #1 = 
    { author empty$
        { editor empty$
          { "" }
          'format.editors.alt
          if$
        }
        'format.authors.alt
     if$
     'this.author :=
     this.author prev.author =
        { "bysame" 'extra.label.bysame := }
        { this.author "" =
            { "abcxyz" }
            'this.author
          if$
          'prev.author :=
        }
     if$
    }
   'skip$
  if$
}

ITERATE {forward.pass.two}

FUNCTION {begin.bib}
{
  preamble$ empty$
    'skip$
    { preamble$ write$ newline$ }
  if$
  bst.use.bysame #0 =
     % Not use \bysame.
     'skip$
     % Use \bysame.
     { "%%% Definition of \bysame" write$ newline$
       "\ifx\undefined\bysame" write$ newline$
       "\newcommand{\bysame}{" bst.bysame.definition * "}" *
       write$ newline$
       "\fi" write$ newline$ newline$ }
  if$
  %% When number index is attached to the beginning of each item.
  bst.use.number.index #0 =
     'skip$
     { bst.number.index.digit "1" =
         % one digit.
         { bst.number.index.bibhang.one }
         { bst.number.index.digit "2" =
            % two digits.
            { bst.number.index.bibhang.ten }
            % three or more digits.
            { bst.number.index.bibhang.hund }
           if$
         }
       if$
       'hang :=
       "%%% Redefinition of \bibhang" write$ newline$
       "\ifx\undefined\bibhang" write$ newline$
       "\relax" write$ newline$
       "\else" write$ newline$
       "\setlength{\bibhang}{"
       hang * "}" * write$ newline$ 
       "\fi" write$ newline$ newline$
       }
  if$
  "\begin{thebibliography}{xxx}" write$ newline$

  %% Initialize the variable `index'.
  #0 'index :=
}

FUNCTION {end.bib}
{ newline$ "\end{thebibliography}" write$ newline$ }

EXECUTE {begin.bib}

EXECUTE {init.state.consts}

ITERATE {call.type$}

EXECUTE {end.bib}
