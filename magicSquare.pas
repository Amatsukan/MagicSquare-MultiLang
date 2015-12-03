program MagicSquare;
uses sysutils;

var
    actual_val, x, y, L, LIMIT: integer;
    square : array of array of integer;
begin
    L := StrToInt(ParamStr(1));
    LIMIT := L*L;

    if (L MOD 2)=1 then
        writeln('1. A matriz sempre terá os lados ímpares.')
        setlength(square,L,L)
    else
        writeln('FALHA: violação da regra 1, \n\t1. A matriz sempre terá os lados ímpares.')
end.

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
////
//
//
//
//
//
//
//
//
//
//
//
//
//
////
////
////
////
//////////
////
//
//
//
////
////
////
////////////
////
////
//////
////
////
////
////
//
////
//
//
//
