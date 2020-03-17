function varargout = daftar_hasil(varargin)
% DAFTAR_HASIL M-file for daftar_hasil.fig
%      DAFTAR_HASIL, by itself, creates a new DAFTAR_HASIL or raises the existing
%      singleton*.
%
%      H = DAFTAR_HASIL returns the handle to a new DAFTAR_HASIL or the handle to
%      the existing singleton*.
%
%      DAFTAR_HASIL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DAFTAR_HASIL.M with the given input arguments.
%
%      DAFTAR_HASIL('Property','Value',...) creates a new DAFTAR_HASIL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before daftar_hasil_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to daftar_hasil_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help daftar_hasil

% Last Modified by GUIDE v2.5 29-Feb-2020 15:27:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @daftar_hasil_OpeningFcn, ...
                   'gui_OutputFcn',  @daftar_hasil_OutputFcn, ...
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


% --- Executes just before daftar_hasil is made visible.
function daftar_hasil_OpeningFcn(hObject, eventdata, handles, varargin)
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
% varargin   command line arguments to daftar_hasil (see VARARGIN)

% Choose default command line output for daftar_hasil
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes daftar_hasil wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = daftar_hasil_OutputFcn(hObject, eventdata, handles) 
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
