    function [sse] = twoslope_sse(params,Dc,cba,b)
        Dmin = params(1);
        a = params(2);
        FittedCurve = Dc*0;
        s = Dc<=Dmin; FittedCurve(s) = b;
        s = Dc>Dmin; FittedCurve(s) = a*(Dc(s)-Dmin)+b;
        ErrorVector = FittedCurve - cba;
        sse = sum(ErrorVector .^ 2);
    end