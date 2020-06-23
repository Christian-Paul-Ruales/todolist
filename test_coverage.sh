#!/bin/sh

echo "Adding Item test1 to list"

curl 'http://localhost:8080/todo/add/'  --data 'newtodo=test1'
echo "\nAdding Item test2 to list"
curl 'http://localhost:8080/todo/add/'  --data 'newtodo=test2'
echo "\nAdding Item test3 to list"
curl 'http://localhost:8080/todo/add/'  --data 'newtodo=test3'
echo "\nAdding Item test4 to list"
curl 'http://localhost:8080/todo/add/'  --data 'newtodo=test4'
echo "\nAdding Item <script> to list"
curl 'http://localhost:8080/todo/add/'  --data 'newtodo=<script>'


echo "\nDeleting Item 5"

curl http://localhost:8080/todo/delete/4
echo "\nDeleting Item 3"
curl http://localhost:8080/todo/delete/2


echo "\nUpdating Item 2 to test200"
curl 'http://localhost:8080/todo/edit/1' --data 'newtodo=test20' 

echo "\nUpdating Item 3 to test999"
curl 'http://localhost:8080/todo/edit/2' --data 'newtodo=test99' 
