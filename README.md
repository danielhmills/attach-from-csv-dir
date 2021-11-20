# attach_from_csv_dir
An extension of Virtuoso Universal Server's [attach_from_csv()](http://docs.openlinksw.com/virtuoso/fn_attach_from_csv/) function,  that reduces multiple CSVs to a single virtual table

# Function
attach_from_csv_dir(table,directory,delimiter,newline,escape,skip_rows,primary_key)

# Example

`ATTACH_FROM_CSV_DIR('spotify.kg.top50','spotify/top50/',',','\n',null,1,vector(1)) ;`

# Parameters
Table: "Virtual Table to apply virtual CSV attachment(s)".

Directory: Location of directory containing CSVs for attachment.

Delimiter: Character used to separate *SV columns (i.e., ',' for standard CSV)

Newline: Character used to denote a new line (i.e. '\n' for a line-break.)

Escape: Character to be treated as an escape

Skip_rows: Total number of rows to skip before attaching data (Default: 1)

primary_key: Specifies ordinal colums to be used as the virtual table's primary key (Default: null)
