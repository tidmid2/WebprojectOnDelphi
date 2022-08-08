unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniButton, Vcl.Imaging.jpeg,
  uniImage, uniLabel, uniEdit, uniTimer, uniBasicGrid, uniDBGrid, Vcl.ExtCtrls,
  uniDBVerticalGrid;

type
  TUniForm2 = class(TUniForm)
    timer: TUniLabel;
    UniImage1: TUniImage;
    UniImage2: TUniImage;
    UniImage3: TUniImage;
    clock: TUniImage;
    UniTimer2: TUniTimer;
    acc: TUniLabel;
    UniDBGrid2: TUniDBGrid;
    UniImage4: TUniImage;
    UniImage5: TUniImage;
    procedure UniImage1Click(Sender: TObject);
    procedure UniFormActivate(Sender: TObject);
    procedure UniTimer2Timer(Sender: TObject);
    procedure UniImage5Click(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

function UniForm2: TUniForm2;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Main,unit3,servermodule;

function UniForm2: TUniForm2;
begin
  Result := TUniForm2(UniMainModule.GetFormInstance(TUniForm2));
end;

procedure TUniForm2.UniFormActivate(Sender: TObject);
begin
      form3.FDQuery3.Active:=true;
      timer.caption:=timetostr(now);
      uniTimer2.Enabled := True;
      //form3.FDQuery4.Active:=true;
      form3.FDQuery3.close;
      form3.FDQuery3.Params[0].AsInteger:=MainForm.eid;
      form3.FDQuery3.open;
end;



var StrTime1,StrTime2: string;
  strdate1,strdate2: string;
  str: string;
     i: integer;
procedure TUniForm2.UniImage1Click(Sender: TObject);
begin
    StrTime1:=timetostr(now);
    StrTime2:='09:00:00';
    strdate1:=datetostr(now);

//    Form3.FDQuery4.Params[0].AsInteger:=MainForm.eid;
//    Form3.FDQuery4.Execute;
//    strdate2:=datetostr(form3.FDQuery4.FieldByName('dt').AsDateTime);
//    if strdate1=strdate2 then
//    begin
        if strtime1>strtime2 then
        begin
          StrTime1:=formatdatetime('dd.mm.yyyy hh:nn:ss',now());
          showmessage('Вы Опоздали');
          Form3.fdcommand1.Params[0].AsInteger:=MainForm.eid;
          Form3.fdcommand1.Params[1].AsInteger:=1;
          Form3.fdcommand1.Params[2].AsString:=StrTime1;
          Form3.fdcommand1.Execute;
          form3.FDQuery3.Active:=false;
          form3.FDQuery3.Active:=true;
          uniimage1.Visible:=false;
          uniimage5.Visible:=true;
        end
        else
        begin
          StrTime1:=formatdatetime('dd.mm.yyyy hh:nn:ss',now());
          showmessage('Поздравляю, вы отметились сегодня') ;
          Form3.fdcommand1.Params[0].AsInteger:=MainForm.eid;
          Form3.fdcommand1.Params[1].AsInteger:=2;
          Form3.fdcommand1.Params[2].AsString:=StrTime1;
          Form3.fdcommand1.Execute;
          form3.FDQuery3.Active:=false;
          form3.FDQuery3.Active:=true;
          uniimage1.Visible:=false;
          uniimage5.Visible:=true;
        end;
//    end
//    else  showmessage('Сегодня вы уже отмечались');
end;






procedure TUniForm2.UniImage5Click(Sender: TObject);
begin
   showmessage('Вы уже отмечались сегодня') ;
end;

procedure TUniForm2.UniTimer2Timer(Sender: TObject);
begin
      timer.caption:=timetostr(now);
end;

end.
