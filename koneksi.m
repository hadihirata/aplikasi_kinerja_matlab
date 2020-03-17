function [con] = koneksi()
url = 'jdbc:mysql://localhost:3306/';
con = database('kinerja_db', 'root', '', 'com.mysql.jdbc.Driver', url);
end

