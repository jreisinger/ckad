#!/bin/bash
set -x
kubectl delete all -l what=ckad
kubectl delete ing -l what=ckad