# RedTeamTool-CSEC473
Red team tool for CSEC 473 

This repository contains .service and .sh files. The .service files are meant to be put in the /etc/systemd/system directory (Or an equal directory, where services are automatically run from). These services will call the .sh files, which should be put in the /bin/ directory. Each .sh file will affect a different service.

After loading the files into the correct directories, use the following commands to start the service and change the modification/access times:

"systemctl daemon-reload"
"systemctl enable ---service-name-here---"
"systemctl start ---service-name-here---"
"touch -a -m -t 201512180130.09 ---service-file-name-here---"
touch -a -m -t 201512180130.09 ---bash-script-file-name-here---"


