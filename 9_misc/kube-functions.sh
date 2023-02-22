kex() {
	pod=$1
	kubectl exec -it $pod -- bash
}

ksex() {
	pod=$1
	kubectl -n search exec -it $pod -- bash
}
