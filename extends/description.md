This [CloudCoreo](http://www.cloudcoreo.com) repository is simply a starting point for any server. Currently, the boot process includes:

## Boot scripts
1. `expand_root_fs.sh`
  - This will run a resize2fs on the root file system in order to make sure the server can 
    utilize all available space
1. `install_cloudcoreo_repo.sh`
  - This is lay down the cloudcoreo repository
1. `install_emacs.sh`
  - Emacs is a very popular tool for people who work in the linux environment
1. `install_screen.sh`
  - Screen is very helpful for window management in linux
1. `setup_python.sh`
  - ensure python-pip is installed, as well as the python package "boto" for controlling aws.

## Operational scripts
1. `run_df.sh`
  - This will run: df -h
1. `run_mount.sh`
  - This will run: mount
1. `run_service.sh`
  - This will run: service --status-all
1. `run_top.sh`
  - This will run: top -n 1
1. `run_netstat.sh`
  - This will run: netstat -an
1. `run_free.sh`
  - This will run: free -m
1. `run_ps.sh`
  - This will run: ps -alef
1. `run_rpm.sh`
  - This will run: rpm -qa
1. `run_ifconfig.sh`
  - This will run: ifconfig
1. `run_date.sh`
  - This will run: date
1. `run_vmstat.sh`
  - This will run: vmstat
