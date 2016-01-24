///string_copy_until_char("str",startpos,untilchar)
//arguments              0     1        2
//This script is used for scanning a string str (1) from position startpos (2)
//copying the characters until it sees character untilchar (3)
// - it then dumps the copied string from the current string
//function returns the copied string

//execute_string('tmp_str='+argument0)
tmp_str = argument0
tmp_scanpos=argument1
tmp_copystr=''
tmp_fin_str=argument2

while (!(string_char_at(tmp_str,tmp_scanpos)=tmp_fin_str 
    ) && tmp_scanpos < string_length(tmp_str) + 1)
    {
    tmp_copystr+=string_char_at(tmp_str,tmp_scanpos)
    tmp_scanpos+=1
    }

return tmp_copystr
