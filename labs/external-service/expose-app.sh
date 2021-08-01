#!/bin/bash

oc expose svc todoapp \
    --hostname todo.apps.lab.example.com 

