# ckad

## Volumes

Volume that lives while the pod lives:

```
kubectl apply -f volume-pod.yaml
kubectl exec -it test-pod -c web -- touch /test1/file
kubectl exec -it test-pod -c sleeper -- ls -l /test2/
```

## ConfigMaps

From a file:

```
kubectl create cm variables --from-file=variables.txt --dry-run -o yaml | \
kubectl apply -f -
kubectl label cm variables what=ckad
```

```
kubectl create cm nginx-cm --from-file nginx-custom-config.conf --dry-run -o yaml | \
kubectl apply -f -
kubectl label cm nginx-cm what=ckad
```

## Clean up

```
runp cleanup.txt
```

## More

* https://github.com/sandervanvugt/ckad/
* https://github.com/bmuschko/ckad-crash-course
