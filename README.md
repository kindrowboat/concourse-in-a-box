# Concourse in a Box
*Quickly get concourse up-and-running on a single Ubuntu 14.04 instance.*

## Rerequisites
For best results use a prestine Ubuntu 14.04 LTS Server instance.
*Note: this has been tested on AWS EC2 Ubuntu Server 14.04 LTS (HVM), SSD Volume Type - ami-fce3c696.*

## Disclaimer
This is intended for testing and getting going with concourse.
There is absolutely no security with this setup.
Use at your own risk.

## Usage
1. Shell into your instance.
1. `sudo apt-get install git`
1. `git clone https://github.com/motevets/concourse-in-a-box.git`
1. `concourse-in-a-box/setup.bash`
1. `sudo reboot`
1. Wait for reboot, and shell back into your instance.
1. `sudo ciab`

## Credit
Concourse is a product of Alex Suraci and Chris Brown sponsored by Pivotal Inc.

## Contributing and Issues
For Github issues and pull request are encouraged for issues related to Concourse in a Box.
For support with Concourse itself refer to [concourse.ci](http://concourse.ci), or be social on the [Concourse slack] channel.

[concourse.ci]: http://concourse.ci/
[Concourse slack]: http://slack.concourse.ci/
