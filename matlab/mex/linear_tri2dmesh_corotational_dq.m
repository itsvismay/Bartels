% LINEAR_TRI2DMESH_COROTATIONAL_DQ Compute the gradient of Corotational potential energy for a 2D triangle mesh with linear shape functions
%
% H = linear_tri2dmesh_corotational_dq(V,T, q, dX, volume, [lambda mu])
%
% Inputs:
%    V  #T by 2 list of vertices
%    T  #T by 3 list of per tetrahedron indices into V
%    q  2#V by 1 list of deformed mesh vertex positions, arranged as [v1x v1y v1z .... v#Vx v#Vy v#Vz]'
%    dX  #T by 12 list of per tetrahedron shape function gradients (dphi/dX)
%    volume  #T by 1 list of per tetrahedron volumes
%    [lambda, mu] #T by 2 material parameters matrix [first lame parameter, second lame parameter]. 
% Outputs:
%    g 2#V by 1 gradient vector
%
% Example:
%   % 2D mesh (V,T)
%   tri_area = triangle_area(V(:,1:2),T);
%   dX = linear_tri2dmesh_dphi_dX(V,T);
%   q = reshape(V', 2*size(V,1), 1) %initial mesh position
%   YM = 2e6; %in Pascals
%   pr =  0.45
%   [lambda, mu] = emu_to_lame(YM*ones(size(T,1),1), pr*ones(size(T,1),1));
%   g = linear_tri2dmesh_corotational_dq(V,T, q, dX, vol, [lambda, mu]);