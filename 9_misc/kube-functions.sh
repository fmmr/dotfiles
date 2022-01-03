kex() {
	pod=$1
	kubectl exec -it $pod -- bash
}
