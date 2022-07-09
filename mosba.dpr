program mosba;

{$APPTYPE CONSOLE}

uses Windows,SysUtils;

var hMutex:THandle;i,j:integer;k:string;

begin
    { TODO -oUser -cConsole Main : この下にコードを記述してください }

if ParamStr(1) = 'MosBurger' then
begin
    k := 'モスバーガー,モスチーズバーガー,テリヤキバーガー,フレッシュバーガー,テリヤキチキンバーガー,チキンバーガー,ロースカツバーガー,フィッシュバーガー,スパイシーモスバーガー,スパイシーモスチーズバーガー,';
    k := k + 'ハンバーガー,チーズバーガー,ホットチキンバーガー,海老カツバーガー,モスライスバーガーきんぴら,モスライスバーガー海鮮かきあげ,モスライスバーガー豚しょうが焼,プレーンドッグ,チリドッグ,スパイシーチリドッグ,';
    k := k + 'フレンチフライポテト,オニオンリング,オニポテ（フレンチフライポテト＆オニオンリング）,アップルパイ,モスチキン,モス・チキンナゲット,フランクフルト,グリーンサラダ（和風ドレッシング）';
end else
begin
    i := ParamCount - 1;
    for j := 0 to i do
    begin
        hMutex := OpenMutex(MUTEX_ALL_ACCESS,False,PChar(ParamStr(j+1)));
        if hMutex = 0 then
        begin
            k := k + '0' ;
        end else
        begin
            k := k + '1' ;
        end;
            CloseHandle(hMutex);
        if i > j then
        begin
            k := k + ','
        end;
    end;
end;
write(k);

end.
