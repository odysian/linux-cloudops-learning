# AWS Stress Troubleshooting Exercise
### Steps
- Started up EC2 instance with SSM role, connected through Fedora terminal using SSM
    - `aws ssm start-session --target i-00c91cb9c91cfe851`
- Installed stress tools with: 
    - `sudo dnf install httpd stress htop iotop sysstat -y`
    - `sudo systemctl enable --now httpd`
- Started stress test in background using &, checked processes, killed process
    - `stress --cpu 2 --timeout 3600 &`
    - `htop`
    - `pkill stress`
- Alternative approach using screen instead of running stress in background 
    - `screen -S loadgen`
    - `stress --cpu 2 --timeout 3600`
    - Ctrl+A then D to detach from screen
    - `htop`
    - `pkill stress`
    - List screens, reattach, then kill session
        - `screen -ls` 
        - `screen -r loadgen`
        - `exit` 
        - To kill from outside: `screen -X -S loadgen quit`

### Monitoring Cheatsheet
- `htop`: top with process tree, sorting and kill options, press p to sort by CPU
- `iostat`: Disk I/O stats, find disk bottlenecks
- `vmstat`: Virtual memory, CPU, I/O stats
- `sar`: System Activity Reporter, historical system activity
    - `sar -u 1`: Live CPU
    - `sar -d 1`: Live Disk
    - `sar -r 1`: Live Memory

