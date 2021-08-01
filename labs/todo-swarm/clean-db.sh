#!/bin/bash

echo 'Copy SQL scripts to the services VM'
scp -q /home/student/DO288/labs/todo-swarm/*.sql root@services:/tmp
echo 'Run SQL scripts in the services VM to drop todo database and todoapp user'
ssh root@services "mysql -f < /tmp/drop-todo.sql"

