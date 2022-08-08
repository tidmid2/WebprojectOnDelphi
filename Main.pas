unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniLabel, uniGUIBaseClasses,
  uniEdit, uniPanel, uniButton, Vcl.Imaging.jpeg, uniImage;

type
  TMainForm = class(TUniForm)
    login: TUniEdit;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    pass: TUniEdit;
    UniImage1: TUniImage;
    UniImage2: TUniImage;
    procedure UniImage1Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
  var
    eid: integer;
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication,Unit2,servermodule,unit3;



function MainForm: TMainForm;
begin

  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;






procedure TMainForm.UniFormCreate(Sender: TObject);
begin
     application.title:='Staff.Bestrpofi.Test';

end;

procedure TMainForm.UniImage1Click(Sender: TObject);
begin
  if  form3.FDQuery2.Active = true  then
  begin
    if login.text = '' then  //пустой логин
      begin
        showmessage('Введите логин');
      end

    else  if pass.text = '' then  //пустой пароль
      begin
        showmessage('Введите пароль');
      end

    else if (login.Text <> '') and (pass.Text <> '') then
      begin
          form3.FDQuery2.close;
           form3.FDQuery2.Params[0].AsString:=login.text;
           form3.FDQuery2.Params[1].AsString:=pass.text;
           form3.FDQuery2.open;
           eid:=form3.FDQuery2.FieldByName('eid').AsInteger;
            if eid<>null then
            begin
                form3.FDQuery1.close;
                 form3.FDQuery1.Params[0].AsInteger:=eid;
                 form3.FDQuery1.open;
                uniform2.acc.text:=form3.FDQuery2.FieldByName('name').AsString;
                UniForm2.Show;      //открытие главной страницы
                MainForm.Hide;
            end
            else
            begin
                showmessage('Неправильный логин или пароль');
            end;


      end
//    else if (form3.FDQuery2.FieldByName('account').AsString <> login.text) and ((form3.FDQuery2.FieldByName('pass').AsString <> pass.text) or (form3.FDQuery2.FieldByName('pass').AsString = pass.text))  then   //проверка правильности с логином в базе
//      begin
//        showmessage('Неверный логин или пароль');
//      end
//
//     else if (form3.FDQuery2.FieldByName('account').AsString = login.text) and (form3.FDQuery2.FieldByName('pass').AsString = pass.text) then       //проверка совпадении с логином в базе
//      begin
////        if form3.FDQuery2.FieldByName('pass').AsString = pass.text then    //проверка совпадении с паролем в базе
////        begin
//          eid:=form3.FDQuery2.FieldByName('eid').AsInteger;
//          form3.FDQuery1.Active:=true;
//          if eid=form3.FDQuery1.FieldByName('id').AsInteger then
//          begin
//            uniform2.acc.text:=form3.FDQuery1.FieldByName('name').AsString;
//            UniForm2.Show;      //открытие главной страницы
//            MainForm.Hide;
//          end
//
//
////        end;
//      end;
  end
  else
  begin
      form3.FDQuery2.Active:=true;
      if login.text = '' then  //пустой логин
      begin
        showmessage('Введите логин');
      end

    else  if pass.text = '' then  //пустой пароль
      begin
        showmessage('Введите пароль');
      end

    else if (login.Text <> '') and (pass.Text <> '') then
      begin
           form3.FDQuery2.close;
           form3.FDQuery2.Params[0].AsString:=login.text;
           form3.FDQuery2.Params[1].AsString:=pass.text;
           form3.FDQuery2.open;
           eid:=form3.FDQuery2.FieldByName('eid').AsInteger;
            if eid<>null then
            begin
                form3.FDQuery1.close;
                form3.FDQuery1.Params[0].AsInteger:=eid;
                form3.FDQuery1.open;
                uniform2.acc.text:=form3.FDQuery1.FieldByName('name').AsString;
                UniForm2.Show;      //открытие главной страницы
                MainForm.Hide;
            end
            else
            begin
                showmessage('Неправильный логин или пароль');
            end;
      end;

//      if login.text = '' then  //пустой логин
//      begin
//        showmessage('Введите логин');
//      end
//
//    else  if pass.text = '' then  //пустой пароль
//      begin
//        showmessage('Введите пароль');
//      end
//
//    else if form3.FDQuery2.FieldByName('account').AsString <> login.text then   //проверка правильности с логином в базе
//      begin
//        showmessage('Неверный логин или пароль');
//      end
//
//    else if form3.FDQuery2.FieldByName('pass').AsString <> pass.text then     //проверка правильности с паролем в базе
//      begin
//        showmessage('Неверный логин или пароль');
//      end
//
//     else if form3.FDQuery2.FieldByName('account').AsString = login.text then       //проверка совпадении с логином в базе
//      begin
//        if form3.FDQuery2.FieldByName('pass').AsString = pass.text then    //проверка совпадении с паролем в базе
//        begin
//          eid:=form3.FDQuery2.FieldByName('eid').AsInteger;
//          form3.FDQuery1.Active:=true;
//          if eid=form3.FDQuery1.FieldByName('id').AsInteger then
//          begin
//            uniform2.acc.text:=form3.FDQuery1.FieldByName('name').AsString;
//            UniForm2.Show;      //открытие главной страницы
//            MainForm.Hide;
//          end
//        end;
//      end;
  end;

end;

initialization
  RegisterAppFormClass(TMainForm);
end.
