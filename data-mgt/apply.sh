#!/bin/bash
kubectl apply -f homeplus-consumer-cronjob.yaml
kubectl apply -f homeplus-crawler-cronjob.yaml
kubectl apply -f kakao-crawler-cronjob.yaml
kubectl apply -f kakao-consumber-cronjob.yaml
kubectl apply -f street-consumer-cronjob.yaml
kubectl apply -f street-crawler-cronjob.yaml
kubectl get po -n data-mgt
