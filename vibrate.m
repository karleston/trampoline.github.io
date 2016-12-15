function Z=vibrate(x,y,t,nterms)
%vibrate is a function that solves for the equation of the stretching
%rectangular membrane
    Z=zeros(size(x));
    l=0.426050;
    for m = 1:2:2*nterms
        for n = 1:2:2*nterms
            Z=Z+((1./((m.^3).*(n.^3))).*cos(((5.*pi.*t)./4).*sqrt(m.^2+4.*n.^2))*sin((m.*pi.*x)./4).*sin((n.*pi.*y)./2));
        end
    end
    Z=Z*l;
end