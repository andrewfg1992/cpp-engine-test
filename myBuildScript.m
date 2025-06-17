mex -client engine main.cpp

mlroot = matlabroot;

filename = [mlroot '/bin/matlab'];  % replace with your file name
[status, cmdout] = system(['ls -l ', filename]);

if status == 0
    disp(cmdout);
else
    disp('Error accessing file or file does not exist.');
end

cmd = ['export LD_LIBRARY_PATH=' mlroot '/extern/bin/glnxa64:' mlroot '/sys/os/glnxa64 && ./main'];
system(cmd);
