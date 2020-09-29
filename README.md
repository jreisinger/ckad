# ckad

## Volumes

```
kubectl apply -f volume-pod.yaml
kubectl exec -it test-pod -c web -- touch /test1/file
kubectl exec -it test-pod -c sleeper -- ls -l /test2/
```