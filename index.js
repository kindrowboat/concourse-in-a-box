#!/usr/bin/env node

"use strict";

const program = require('commander');

program
  .version('1.0.0')
  .description('Installs a Concourse-in-a-box to a VPC on AWS')
  .option('-i, --vpc-id', 'AWS VPC id')
  .option('-k, --api-key', 'AWS API key id')
  .option('-s, --api-secret', 'AWS API secret')
  .parse(process.argv);

const vpcId = program.vpcId;
const apiKey = program.apiKey;
const apiSecret = program.apiSecret;
