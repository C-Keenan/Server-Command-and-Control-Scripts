# Server Command And Control Scripts

## Release Notes

### Release 08/08/2024

- New alias `pinger` by default it pings cloudflare dns server 5 times and then exits. You can change what happens during the run by typing `pinger <the-amount-of-pings-to-send> <the-ip-or-website-address> <the-amount-of-time-to-sleep-between-iterations> <the-amount-of-iterations>` eg. `pinger 5 1.1.1.1 0 1` which is the default behavior. You can also omit the last 2 inputs and get a single run eg. `pinger 5 1.1.1.1`

- This alias was made to mimic how windows does ping as I didn't like how linux continuosly pinged the target until the user interupted it, which could trigger the target to block pings due to perceived malicious activity(<-assumption)

### Release 07/21/2024 P2

- Updated timer function to be more accurate to the actual second no promises that it will be completely accurate but is definitely closely accurate with the clock timer on my phone

### Release 07/21/2024

- Found another bug in the /etc/skel/.bashrc file if statement input-er (not sure of a better way to say that) it incorrectly appended the 'fi' into /etc/bash.bashrc file. Fixed now.

### Release 07/19/2024

- Woke up, thought "There's a bug in my script!", fixed it. You're welcome! 😁
Specifically there was a bug that makes multiple 'same-content' entries in /etc/.bash_aliases But it should be fixed now.

- Specifically if you have downloaded and installed/updated to yesterdays update please edit your /etc/.bash_aliases file to ensure there is only one occurence of the 'timer' and 'restart' aliases

### Release 07/18/2024

- Added functionality for a simple timer.
Simply type

```
timer <number of seconds>
```

You will get a output similar to 00h:00m:00s and it will clear the screen.
This is useful for when you want to see how much time you have left until a command runs or how much time is left in-between two or more commands being run.

As an example you could input

```
timer 3698
```

if you need to wait 1h:1m:38s.

### Release 07/17/2024

- Added functionality to restart systemd services with less typing.

- ***THIS FEATURE IS STILL WIP THOUGH DOES IT'S JOB PROPERLY***