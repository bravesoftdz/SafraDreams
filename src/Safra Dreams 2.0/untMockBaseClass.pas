unit untMockBaseClass;

interface

type
  TMockBaseClass = class
  public
    class function UtilizaMock: boolean;
  end;

implementation

{ TMockBaseClass }

class function TMockBaseClass.UtilizaMock: boolean;
begin
  Result := True;
end;

end.
