unit Marvin.Core.IA.Connectionist.Exceptions.Clss;

interface

uses
  { embarcadero }
  System.SysUtils;

type
  EConnectionistExceptionBase = class(Exception)
  public
    constructor Create; reintroduce; virtual;
  end;

  ELearnFileNotExists = class(EConnectionistExceptionBase)
  public
    constructor Create(const AFileName: string); reintroduce; virtual;
  end;

  ENeuronIsNil = class(EConnectionistExceptionBase)
  public
    constructor Create; override;
  end;

  EInvalidFactory = class(EConnectionistExceptionBase)
  public
    constructor Create; override;
  end;

implementation

{ EConnectionistExceptionBase }

constructor EConnectionistExceptionBase.Create;
begin
  inherited Create('EConnectionistExceptionBase');
end;

{ ELearnFileNotExists }

constructor ELearnFileNotExists.Create(const AFileName: string);
begin
  inherited Create;
  Self.Message := Format('O arquivo IA %S n�o existe.', [AFileName]);
end;

{ ENeuronIsNil }

constructor ENeuronIsNil.Create;
begin
  inherited;
  Self.Message := 'Neur�nio n�o existe.';
end;

{ EInvalidFactory }

constructor EInvalidFactory.Create;
begin
  inherited;
  Self.Message := 'Factory n�o implementado.';
end;

end.
