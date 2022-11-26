#!/bin/bash
kubectl delete -f homeplus-consumer-cronjob.yaml
kubectl delete -f homeplus-crawler-cronjob.yaml
kubectl delete -f kakao-crawler-cronjob.yaml
kubectl delete -f kakao-consumber-cronjob.yaml
kubectl delete -f street-consumer-cronjob.yaml
kubectl delete -f street-crawler-cronjob.yaml
k get po -n data-mgt
