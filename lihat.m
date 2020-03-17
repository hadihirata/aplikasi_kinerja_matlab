function [mydata,no ] = lihat(varargin)
[con]=koneksi();

%tabel='karyawan';
%kolom = {'kd', 'Nama Karyawan', 'Jabatan','Hasil Kerja','Komitmen Kerja','Hubungan kerja','Nilai Knerja','Keterangan'};
 
tabel=varargin{1};
SQL=['SELECT * FROM ' tabel];
    if length(varargin)==3
        pk=varargin{2};
        kode=varargin{3};
 
        setdbprefs('NullNumberWrite', 'NaN');
        SQL=['select * from ' tabel ' where ' pk ' like ''%', kode, '%'''];
    end
    curs = exec(con,SQL);
    curs = fetch(curs);
    mydata=curs.data;
    baris=size(mydata,1);
    no=linspace(1,baris,baris);    
end