unit Test;

interface

type
  // {{TEST}}
  TShape = class(TObject) // {{CONTEXT}}
  private // {{CONTEXT}}
    FName: string;
    FWidth: Integer;
    FHeight: Integer;
    // {{CURSOR}}
    FDepth: Integer;
  public
    constructor Create(const AName: string);
  end;

  // {{TEST}}
  TPoint = record // {{CONTEXT}}
    X: Integer;
    Y: Integer;
    Z: Integer;
    // {{CURSOR}}
    W: Integer;
  end;

  // {{TEST}}
  IShape = interface // {{CONTEXT}}
    ['{00000000-0000-0000-0000-000000000000}']
    function Area: Double;
    function Perimeter: Double;
    // {{CURSOR}}
    function Volume: Double;
  end;

  // {{TEST}}
  TStringHelper = record helper for string // {{CONTEXT}}
    function Upper: string;
    function Lower: string;
    function Trim: string;
    // {{CURSOR}}
    function Length: Integer;
  end;

  // {{TEST}}
  TOuter = class // {{CONTEXT}}
  type
    TInner = class // {{CONTEXT}}
      X: Integer;
      Y: Integer;
      Z: Integer;
      // {{CURSOR}}
      W: Integer;
    end;
  end;

implementation

// {{TEST}}
procedure DoThing(A: Integer; // {{CONTEXT}}
  B: Integer); // {{CONTEXT}}
var
  I: Integer;

  function Inner(X: Integer): Integer; // {{CONTEXT}}
  begin
    Result := X;


    // {{CURSOR}}
  end;

  // {{POPCONTEXT}}
begin
  if A > B then // {{CONTEXT}}
  begin
    A := B;


    // {{CURSOR}}
  end;

  // {{POPCONTEXT}}
  if A > B then // {{CONTEXT}}
  begin
    A := B;
  end
  else if A < B then // {{CONTEXT}}
  begin
    B := A;


    // {{CURSOR}}
  end
  else
  begin
    A := 0;
  end;

  // {{POPCONTEXT}}
  // {{POPCONTEXT}}
  if (A > 0) and // {{CONTEXT}}
     (B > 0) then begin // {{CONTEXT}}
    A := 1;


    // {{CURSOR}}
  end;
end;

// {{TEST}}
procedure Loops; // {{CONTEXT}}
var
  I: Integer;
begin
  for I := 0 to 10 do // {{CONTEXT}}
  begin
    A := A + I;


    // {{CURSOR}}
  end;

  // {{POPCONTEXT}}
  for S in List do // {{CONTEXT}}
  begin
    Writeln(S);


    // {{CURSOR}}
  end;

  // {{POPCONTEXT}}
  while A > 0 do // {{CONTEXT}}
  begin
    Dec(A);


    // {{CURSOR}}
  end;

  // {{POPCONTEXT}}
  repeat // {{CONTEXT}}
    Inc(A);


    // {{CURSOR}}
  until A > 10;

  // {{POPCONTEXT}}
  with TShape.Create('x') do // {{CONTEXT}}
  begin
    Free;


    // {{CURSOR}}
  end;
end;

// {{TEST}}
procedure Branches; // {{CONTEXT}}
begin
  case A of // {{CONTEXT}}
    1: // {{CONTEXT}}
      begin
        B := 1;


        // {{CURSOR}}
      end;
    2, 3:
      B := 2;
  else
    B := 3;
  end;

  // {{POPCONTEXT}}
  // {{POPCONTEXT}}
  try // {{CONTEXT}}
    A := 1;
  except
    on E: Exception do // {{CONTEXT}}
    begin
      Writeln(E.Message);


      // {{CURSOR}}
    end;
    // {{POPCONTEXT}}
  else // {{CONTEXT}}



    // {{CURSOR}}
    Writeln('other');
  end;
end;

// {{TEST}}
procedure Lambdas; // {{CONTEXT}}
begin
  Proc := procedure(X: Integer) // {{CONTEXT}}
    begin
      Writeln(X);


      // {{CURSOR}}
    end;
end;

// {{TEST}}
initialization // {{CONTEXT}}
  DoThing(1, 2);


  // {{CURSOR}}
  DoThing(3, 4);

finalization
  DoThing(5, 6);

end.
