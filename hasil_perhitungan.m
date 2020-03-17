function varargout = hasil_perhitungan(varargin)
% HASIL_PERHITUNGAN M-file for hasil_perhitungan.fig
%      HASIL_PERHITUNGAN, by itself, creates a new HASIL_PERHITUNGAN or raises the existing
%      singleton*.
%
%      H = HASIL_PERHITUNGAN returns the handle to a new HASIL_PERHITUNGAN or the handle to
%      the existing singleton*.
%
%      HASIL_PERHITUNGAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HASIL_PERHITUNGAN.M with the given input arguments.
%
%      HASIL_PERHITUNGAN('Property','Value',...) creates a new HASIL_PERHITUNGAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before hasil_perhitungan_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to hasil_perhitungan_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help hasil_perhitungan

% Last Modified by GUIDE v2.5 29-Feb-2020 12:37:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @hasil_perhitungan_OpeningFcn, ...
                   'gui_OutputFcn',  @hasil_perhitungan_OutputFcn, ...
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


% --- Executes just before hasil_perhitungan is made visible.
function hasil_perhitungan_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to hasil_perhitungan (see VARARGIN)

% Choose default command line output for hasil_perhitungan
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes hasil_perhitungan wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = hasil_perhitungan_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
