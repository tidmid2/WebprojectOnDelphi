object UniServerModule: TUniServerModule
  OldCreateOrder = False
  TempFolder = 'temp\'
  Port = 8081
  Title = 'Staff-Bestprofi'
  SuppressErrors = []
  Bindings = <>
  ISAPIOptions.AsyncMode = True
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_1
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  ConnectionFailureRecovery.ErrorMessage = 'Connection Error'
  ConnectionFailureRecovery.RetryMessage = 'Retrying...'
  Height = 150
  Width = 215
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Staff\STAFF.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=127.0.0.1'
      'Port=3050'
      'CharacterSet=UTF8'
      'DriverID=FB')
    LoginPrompt = False
    Left = 40
    Top = 24
  end
end
