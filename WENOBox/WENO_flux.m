% ## Copyright (C) 2013 homu
% ## 
% ## This program is free software; you can redistribute it and/or modify
% ## it under the terms of the GNU General Public License as published by
% ## the Free Software Foundation; either version 3 of the License, or
% ## (at your option) any later version.
% ## 
% ## This program is distributed in the hope that it will be useful,
% ## but WITHOUT ANY WARRANTY; without even the implied warranty of
% ## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% ## GNU General Public License for more details.
% ## 
% ## You should have received a copy of the GNU General Public License
% ## along with Octave; see the file COPYING.  If not, see
% ## <http://www.gnu.org/licenses/>.

% ## WENO_flux

% ## Author: homu <homu@HOMU-PC>
% ## Created: 2013-07-16

function [ u_right,u_left ] = WENO_flux (up,un)
% Description:

% use f^+ to compute u_right
u_right = WENO3_upwind(up);

if (isrow(un))
    un = un';
end
u_left = WENO3_upwind(flipud(un));


return
end



