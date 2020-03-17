function varargout = data_karyawan(varargin)
% DATA_KARYAWAN M-file for data_karyawan.fig
%      DATA_KARYAWAN, by itself, creates a new DATA_KARYAWAN or raises the existing
%      singleton*.
%
%      H = DATA_KARYAWAN returns the handle to a new DATA_KARYAWAN or the handle to
%      the existing singleton*.
%
%      DATA_KARYAWAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DATA_KARYAWAN.M with the given input arguments.
%
%      DATA_KARYAWAN('Property','Value',...) creates a new DATA_KARYAWAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before data_karyawan_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to data_karyawan_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help data_karyawan

% Last Modified by GUIDE v2.5 17-Mar-2020 14:38:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @data_karyawan_OpeningFcn, ...
                   'gui_OutputFcn',  @data_karyawan_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before data_karyawan is made visible.
function data_karyawan_OpeningFcn(hObject, eventdata, handles, varargin)
handles.tabel='karyawan';
handles.pk='kd';
handles.pre='KAR';
kolom = {'kd', 'Nama Karyawan', 'Jabatan','Hasil Kerja','Komitmen Kerja','Hubungan kerja','Nilai Knerja','Keterangan'};

[mydata,no ]=lihat(handles.tabel,handles.pk);
set(handles.myTabel,'data',mydata,'ColumnName',kolom,'RowName',no);
set(handles.myTabel,'Userdata',mydata);
T=size(mydata,1);
clc
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to data_karyawan (see VARARGIN)

% Choose default command line output for data_karyawan
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes data_karyawan wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = data_karyawan_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function ednama_Callback(hObject, eventdata, handles)
% hObject    handle to ednama (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ednama as text
%        str2double(get(hObject,'String')) returns contents of ednama as a double


% --- Executes during object creation, after setting all properties.
function ednama_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ednama (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edjabatan_Callback(hObject, eventdata, handles)
% hObject    handle to edjabatan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edjabatan as text
%        str2double(get(hObject,'String')) returns contents of edjabatan as a double


% --- Executes during object creation, after setting all properties.
function edjabatan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edjabatan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edhk_Callback(hObject, eventdata, handles)
% hObject    handle to edhk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edhk as text
%        str2double(get(hObject,'String')) returns contents of edhk as a double


% --- Executes during object creation, after setting all properties.
function edhk_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edhk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edkk_Callback(hObject, eventdata, handles)
% hObject    handle to edkk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edkk as text
%        str2double(get(hObject,'String')) returns contents of edkk as a double


% --- Executes during object creation, after setting all properties.
function edkk_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edkk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edhbk_Callback(hObject, eventdata, handles)
% hObject    handle to edhbk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edhbk as text
%        str2double(get(hObject,'String')) returns contents of edhbk as a double


% --- Executes during object creation, after setting all properties.
function edhbk_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edhbk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close();


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
nama=get(handles.ednama,'String');
jabatan=get(handles.edjabatan,'String');
hk=str2double(get(handles.edhk,'String'));
kk=str2double(get(handles.edkk,'String'));
hbk=str2double(get(handles.edhbk,'String'));
%hbks = str2double(char(hbk));
%a=3*3;
%a=num2str(a)
fis = readfis('kinerja_1');
output = evalfis([hk kk hbk],fis);

if output > 0 && output <= 50
    ket = 'kurang';
elseif output > 51 && output <= 75
    ket = 'baik';
elseif output > 76 && output <= 100
    ket = 'baik sekali';
else
    ket = 'panas';
end

set(handles.edhasil,'String',output);
set(handles.edket,'String',ket);
%msgbox(kk);
%editBoxContents = get(handles.edit5,'String');
%ws = str2double(char(editBoxContents));
% or
%ws = str2double(cell2mat(editBoxContents));
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
kd=get(handles.edkd,'String');
nama=get(handles.ednama,'String');
jabatan=get(handles.edjabatan,'String');
hk=str2double(get(handles.edhk,'String'));
kk=str2double(get(handles.edkk,'String'));
hbk=str2double(get(handles.edhbk,'String'));
hasil=str2double(get(handles.edhasil,'String'));
ket=get(handles.edket,'String');

[con]=koneksi();
table='karyawan';
kolom = {'kd', 'nama_karyawan', 'jabatan','hasil_kerja','komitmen_kerja','hubungan_kerja','nilai_kinerja','ket'};
arData = {kd, nama, jabatan,hk,kk,hbk,hasil,ket};
fastinsert(con,table,kolom,arData);

showtabel('Simpan',handles);
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edhasil_Callback(hObject, eventdata, handles)
% hObject    handle to edhasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edhasil as text
%        str2double(get(hObject,'String')) returns contents of edhasil as a double


% --- Executes during object creation, after setting all properties.
function edhasil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edhasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edket_Callback(hObject, eventdata, handles)
% hObject    handle to edket (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edket as text
%        str2double(get(hObject,'String')) returns contents of edket as a double


% --- Executes during object creation, after setting all properties.
function edket_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edket (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edkd_Callback(hObject, eventdata, handles)
% hObject    handle to edkd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edkd as text
%        str2double(get(hObject,'String')) returns contents of edkd as a double


% --- Executes during object creation, after setting all properties.
function edkd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edkd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function showtabel(proses,handles)
    %handles.tabel='kategori';
    %handles.pk='kode_kategori';
    kolom = {'kd', 'Nama Karyawan', 'Jabatan','Hasil Kerja','Komitmen Kerja','Hubungan kerja','Nilai Knerja','Keterangan'};
    tabel=handles.tabel;
    pk=handles.pk;
    [mydata,no ]=lihat(tabel,pk);
    set(handles.myTabel,'data',mydata,'ColumnName',kolom,'RowName',no);
    set(handles.myTabel,'Userdata',mydata);
    T=size(mydata,1);

    set(handles.edkd,'String','');
    set(handles.ednama,'String','');
    set(handles.edjabatan,'String','');
    set(handles.edhk,'String','');
    set(handles.edkk,'String','');
    set(handles.edhbk,'String','');
    set(handles.edhasil,'String','');
    set(handles.edket,'String','');
    
    
    [ps]=['Sukses Proses ' proses];
    msgbox(ps,proses,'help'); 
