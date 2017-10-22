function [numbers,targets] = Sevensegmentes()
%PRPROB Character recognition problem definition
%  
%  [ALHABET,TARGETS] = PRPROB()
%  Returns:
%    ALPHABET - 35x26 matrix of 5x7 bit maps for each letter.
%    TARGETS  - 26x26 target vectors.

% Mark Beale, 1-31-92
% Revised 12-15-93, MB.
% Copyright 1992-2002 The MathWorks, Inc.
% $Revision: 1.11 $  $Date: 2002/04/14 21:25:54 $

Zero =     [1 1 1 1 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 1 1 1 1 ]';


numbers = [Zero];

targets = eye(10);
