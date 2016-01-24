//file_contents(filename)
//returns the contents of the file as a string
retstr=""
if file_exists(argument0)
    {
    fid = file_text_open_read(argument0)
    while(!file_text_eof(fid))
        {
        retstr+=file_text_read_string(fid)
        file_text_readln(fid)
        }
    file_text_close(fid)
    }
return retstr
