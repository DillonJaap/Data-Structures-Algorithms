program BinarySearch;

function BinarySearch(data: array of Integer; target: Integer): Integer;
var
	Low, High, Middle: Integer;
begin
	Low := 0;
	High := Length(data) - 1;
	Middle := Low + SmallInt(Round((High - Low) / 2));

	WriteLn(low);
	WriteLn(high);
	WriteLn(Middle);
	BinarySearch := Low;
end;

begin
	BinarySearch([1, 2, 3, 4, 5, 6, 7], 2)
end.

