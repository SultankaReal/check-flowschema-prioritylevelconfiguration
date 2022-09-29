#!/bin/zsh
echo "----------------------------" &>> mind_prior.txt
kubectl get flowschema &>> mind_prior.txt
echo "----------------------------" &>> mind_prior.txt
kubectl get prioritylevelconfiguration &>> mind_prior.txt

echo "PRIORITY LEVEL CONFIGURATION" &>> mind_prior.txt
for var in $(kubectl get prioritylevelconfiguration --no-headers | awk '{print $1}')
do
echo "----------------------------" &>> mind_prior.txt
kubectl get prioritylevelconfiguration $var -o yaml &>> mind_prior.txt
echo "----------------------------" &>> mind_prior.txt
done

echo "FLOW SCHEMA" &>> mind_prior.txt
for var2 in $(kubectl get flowschema --no-headers | awk '{print $1}')
do
echo "----------------------------" &>> mind_prior.txt
kubectl get flowschema $var2 -o yaml &>> mind_prior.txt
echo "----------------------------" &>> mind_prior.txt
done
