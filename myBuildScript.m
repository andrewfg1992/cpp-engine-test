mex -client engine main.cpp

mlroot = matlabroot;

binName = [mlroot '/bin/matlab'];
[status, cmdout] = system(['ls -l ', binName]);

if status == 0
    disp(cmdout);
else
    disp('Error accessing file or file does not exist.');
end

[status, result] = system('echo "$SHELL"');
disp(result);

% Try starting MATLAB via binary
%system(binName);

%cmd = ['export LD_LIBRARY_PATH=' mlroot '/extern/bin/glnxa64:' mlroot '/sys/os/glnxa64 && ./main'];
%system(cmd);
