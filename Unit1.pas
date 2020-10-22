unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls;

type
  TForm1 = class(TForm)
    NAMA: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    Button4: TButton;
    Button5: TButton;
    Label3: TLabel;
    Edit4: TEdit;
    DBNavigator1: TDBNavigator;
    Edit5: TEdit;
    GroupBox1: TGroupBox;
    Edit6: TEdit;
    Label4: TLabel;
    Button6: TButton;
    ComboBox1: TComboBox;
    Button7: TButton;
    Label5: TLabel;
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses StrUtils, Math;

{$R *.dfm}

procedure TForm1.Button4Click(Sender: TObject);
begin
if application.MessageBox
('Yakin akan Keluar dari Program','Konfirmasi Ulang',MB_YesNo)=ID_Yes then
Application.Terminate;

end;

procedure TForm1.Button2Click(Sender: TObject);
Begin
ADOTable1.Append;
ADOTable1.FieldByName('nama').AsString:=Edit1.Text;
ADOTable1.FieldByName('kelas').AsString:=Edit2.Text;
ADOTable1.FieldByName('kelamin').AsString:=ComboBox1.Text;
ADOTable1.FieldByName('nilai').AsString:=Edit4.Text;
ADOTable1.FieldByName('no').AsString:=Edit6.Text;
FormShow(Sender);
showmessage('Data Sudah Disimpan');
edit1.Text :='';
edit2.Text :='';
ComboBox1.Text :='';
edit4.Text :='';
Edit6.Text:='';
end;
procedure TForm1.Button1Click(Sender: TObject);
begin
ADOTable1.Edit;

ADOTable1['nama']:=edit1.Text;
ADOTable1['kelas']:=edit2.Text;
ADOTable1['kelamin']:=ComboBox1.Text;
ADOTable1['nilai']:=edit4.Text;
ADOTable1['no']:=Edit6.Text;

ADOTable1.Refresh;
FormShow(sender);

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
begin

edit1.Clear; Edit2.Clear; Edit4.Clear; Edit6.Clear;
end;
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
edit1.Text:=ADOTable1['nama'];
edit2.Text:=ADOTable1['kelas'];
ComboBox1.Text:=ADOTable1['kelamin'];
edit4.Text:=ADOTable1['nilai'];
Edit6.Text:=ADOTable1['no'];
end;
procedure TForm1.Button5Click(Sender: TObject);
begin
begin

ADOTable1.Delete;
ADOTable1.Refresh;
FormShow(sender);

end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
edit1.Clear; Edit2.Clear; Edit4.Clear; Edit6.Clear;

Edit1.SetFocus;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
ADOTable1.Sort := 'nilai'; //y.sort := 'Ascending';<br />
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
ADOTable1.Sort := 'nilai'; //y.sort := 'nilai Descending';<br />
end;
procedure TForm1.Button3Click(Sender: TObject);
begin
If Edit5.Text <> '' then
begin
ADOTable1.Filter:='nama=''' + Edit5.Text + '''';
ADOTable1.Filter:= 'nilai=''' + Edit5.Text + '''';
ADOTable1.Filter:='nama=''' + Edit5.Text + '''';
ADOTable1.Filtered:=True;

end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
close;
end;

end.
