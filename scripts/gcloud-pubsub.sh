#!/bin/bash

SUBSCRIPTION=$3
TOPIC=$2

create_pubsub(){

	gcloud pubsub topics create $TOPIC

	gcloud pubsub subscriptions create $SUBSCRIPTION --topic=$TOPIC
}

delete_pubsub(){
	
	gcloud pubsub subscriptions delete $SUBSCRIPTION

 	gcloud pubsub topics delete $TOPIC
}

if [[ $1 = 'create' ]];
then 
  create_pubsub 
else
  delete_pubsub
fi 
