function a = triangle_area(V,F)
% TRIANGLE_AREA Compute areas of a triangle mesh
%
% areas = triangle_area(V,F)
%
% Inputs:
%    V  #V by 3 list of mesh vertex positions
%    F  #T by 3 list of mesh triangle indices into V
% Outputs:
%    areas  #T by 1 list of per triangle areas
% Example:
%   % mesh (V,F)
%   areas = triangle_area(V,F)

    dx1 = V(F(:,2),:) - V(F(:,1),:);
    dx2 = V(F(:,3),:) - V(F(:,1),:);

    if size(V,2) == 2
        a = 0.5*(dx1(:,1).*dx2(:,2) - dx1(:,2).*dx2(:,1)); 
    else
        a = cross(dx1,dx2,2);
        a = 0.5*sqrt(sum(a.*a,2));
    end

end