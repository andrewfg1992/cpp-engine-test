mex -client engine main.cpp

mlroot = matlabroot;

binName = [mlroot '/bin/matlab'];
[status, cmdout] = system(['ls -l ', binName]);

if status == 0
    disp(cmdout);
else
    disp('Error accessing file or file does not exist.');
end

% try querying the shell
[status, result] = system('echo "$SHELL"');
disp(result);

% Try seeing if MATLAB is on the path
[status, result] = system('which matlab');
disp(result);

%cmd = ['LD_LIBRARY_PATH=' mlroot '/bin/glnxa64:' ...
%       mlroot '/extern/bin/glnxa64:' ...
%       mlroot '/sys/os/glnxa64:$LD_LIBRARY_PATH ./main'];
%system(cmd);
