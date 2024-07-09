unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Enama: TEdit;
    Edis: TEdit;
    Bsimpan: TButton;
    Bedit: TButton;
    Bhapus: TButton;
    Bbatal: TButton;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    procedure BsimpanClick(Sender: TObject);
    procedure BeditClick(Sender: TObject);
    procedure BhapusClick(Sender: TObject);
    procedure BbatalClick(Sender: TObject);

  private

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.BsimpanClick(Sender: TObject);
begin
 if (Enama.Text <> '') and (Edis.Text <> '') then
  begin
    if not DBGrid1.DataSource.DataSet.Active then
      DBGrid1.DataSource.DataSet.Open;

    DBGrid1.DataSource.DataSet.Append;
    DBGrid1.DataSource.DataSet.FieldByName('nama').AsString := Enama.Text;
    DBGrid1.DataSource.DataSet.FieldByName('diskripsi').AsString := Edis.Text;
    DBGrid1.DataSource.DataSet.Post;


  end
  else
    ShowMessage('Harap isi semua kolom.');
end;

procedure TForm1.BeditClick(Sender: TObject);
begin
    if DBGrid1.DataSource.DataSet.RecordCount > 0 then
  begin
    DBGrid1.DataSource.DataSet.Edit;
    DBGrid1.DataSource.DataSet.FieldByName('nama').AsString := Enama.Text;
    DBGrid1.DataSource.DataSet.FieldByName('diskripsi').AsString := Edis.Text;
    DBGrid1.DataSource.DataSet.Post;


end;

end;
procedure TForm1.BhapusClick(Sender: TObject);
begin
  if DBGrid1.DataSource.DataSet.RecordCount > 0 then
  begin
    if MessageDlg('apakah anda yakin menghapus data ini?', mtConfirmation, [mbYes, mbNo], 0) =mrYes then
      DBGrid1.DataSource.DataSet.Delete;
  end
  else
    ShowMessage('pilioh data yang ingin dihapus.');

end;



procedure TForm1.BbatalClick(Sender: TObject);
begin
 close;
end;

end.
