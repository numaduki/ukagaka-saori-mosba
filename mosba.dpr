program mosba;

{$APPTYPE CONSOLE}

uses Windows,SysUtils;

var hMutex:THandle;i,j:integer;k:string;

begin
    { TODO -oUser -cConsole Main : ���̉��ɃR�[�h���L�q���Ă������� }

if ParamStr(1) = 'MosBurger' then
begin
    k := '���X�o�[�K�[,���X�`�[�Y�o�[�K�[,�e�����L�o�[�K�[,�t���b�V���o�[�K�[,�e�����L�`�L���o�[�K�[,�`�L���o�[�K�[,���[�X�J�c�o�[�K�[,�t�B�b�V���o�[�K�[,�X�p�C�V�[���X�o�[�K�[,�X�p�C�V�[���X�`�[�Y�o�[�K�[,';
    k := k + '�n���o�[�K�[,�`�[�Y�o�[�K�[,�z�b�g�`�L���o�[�K�[,�C�V�J�c�o�[�K�[,���X���C�X�o�[�K�[����҂�,���X���C�X�o�[�K�[�C�N��������,���X���C�X�o�[�K�[�؂��傤����,�v���[���h�b�O,�`���h�b�O,�X�p�C�V�[�`���h�b�O,';
    k := k + '�t�����`�t���C�|�e�g,�I�j�I�������O,�I�j�|�e�i�t�����`�t���C�|�e�g���I�j�I�������O�j,�A�b�v���p�C,���X�`�L��,���X�E�`�L���i�Q�b�g,�t�����N�t���g,�O���[���T���_�i�a���h���b�V���O�j';
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
