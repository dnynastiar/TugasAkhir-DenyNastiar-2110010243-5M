unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, DBTables, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TForm3 = class(TForm)
    zqry1: TZQuery;
    tbl1: TTable;
    dg1: TDBGrid;
    ds1: TDataSource;
    cbb1: TComboBox;
    Edit1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    grp1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    lbl4: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

end.
