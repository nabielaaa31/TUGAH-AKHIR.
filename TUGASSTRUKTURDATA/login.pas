program LoginArray;

uses crt;

const
  MAX_USERS = 5;

type
  User = record
    username: string[20];
    password: string[20];
  end;

var
  users: array[1..MAX_USERS] of User;
  i: integer;
  inputUsername, inputPassword: string;
  isLoggedIn: boolean;

begin
  clrscr;

  { Menyimpan data pengguna }
  users[1].username := 'user1';
  users[1].password := 'pass1';
  
  users[2].username := 'user2';
  users[2].password := 'pass2';
  
  users[3].username := 'user3';
  users[3].password := 'pass3';
  
  users[4].username := 'user4';
  users[4].password := 'pass4';
  
  users[5].username := 'user5';
  users[5].password := 'pass5';

  { Proses login }
  isLoggedIn := false;

  writeln('=== Login ===');
  write('Username: ');
  readln(inputUsername);
  write('Password: ');
  readln(inputPassword);

  for i := 1 to MAX_USERS do
  begin
    if (users[i].username = inputUsername) and (users[i].password = inputPassword) then
    begin
      isLoggedIn := true;
      break;
    end;
  end;

  { Hasil login }
  if isLoggedIn then
    writeln('Login berhasil!')
  else
    writeln('Login gagal! Username atau password salah.');

  readln;
end.