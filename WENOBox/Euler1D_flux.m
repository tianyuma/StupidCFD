% ## Copyright (C) 2014 homu
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

% ## Euler1D_flux

% ## Author: homu <homu@HOMU-PC>
% ## Created: 2014-01-03

function [ fu ] = Euler1D_flux (ucons, uprim)

Euler1D_globals;

fu = zeros(size(ucons));
fu(URHO,:) = ucons(UMX,:);
fu(UMX,:) = ucons(URHO,:).*uprim(QVX,:).^2 + uprim(QPRES,:);
fu(UETOT,:) = (ucons(UETOT,:) + uprim(QPRES,:)) .* uprim(QVX,:);


return
end
