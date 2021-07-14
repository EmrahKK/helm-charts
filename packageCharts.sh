#!/bin/bash

helm lint chart-sources/*

helm package chart-sources/*

helm repo index --url https://emrahkk.github.io/helm-charts/ .

git add . && git commit -m "update" && git push origin master