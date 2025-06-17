mex -client engine main.cpp

mlroot = matlabroot;
cmd = ['export LD_LIBRARY_PATH=' mlroot '/extern/bin/glnxa64:' mlroot '/sys/os/glnxa64 && ./main'];
system(cmd);
