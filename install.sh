-- Stored Procedure For Reducing Multiple CSV Virtualizations to a virtual SQL Table

-- Install file_dirlist_full() for collecting all files in a designated directory
DROP PROCEDURE file_dirlist_full;
CREATE PROCEDURE file_dirlist_full (IN a ANY)
    {
        DECLARE _inx integer;        
        DECLARE F VARCHAR;
        DECLARE L INT;

        F := file_dirlist(a,1);
        L := length(F);
        _inx := 0;

        
        While(_inx < L){
            DECLARE v any;
        F[_inx] := concat(a,'/',F[_inx]);
        _inx := _inx + 1;

        }

        return F;
    
    };

-- Install attach_from_csv_dir() procedure for attaching all CSVs listed in file_dirlist_full() to a virtual SQL table
DROP PROCEDURE attach_from_csv_dir;
CREATE PROCEDURE attach_from_csv_dir (IN tb VARCHAR, IN dir VECTOR, in delimiter VARCHAR, in newline VARCHAR, in esc VARCHAR, in skip_rows int, in pkey_columns any := null)
    {
    declare f VARCHAR;

    f:= attach_from_csv(tb,file_dirlist_full(dir),delimiter,newline,esc,skip_rows,pkey_columns);

    return F;
    };
