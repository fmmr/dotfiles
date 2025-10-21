function silentlypgforward() {
    pgcluster=$1
    shift
    port=$1
    shift
kubectl port-forward --context=nmp-rc-toripg-apps-gke01 -n postgresql $(kubectl get pods --context=nmp-rc-toripg-apps-gke01 -n postgresql -o custom-columns=:metadata.name --field-selector status.podIP=$(kubectl --context=nmp-rc-toripg-apps-gke01 -n postgresql get endpoints $pgcluster -o go-template='{{ (index (index .subsets 0).addresses 0).ip }}')) $port:5432 > /dev/null 2>&1
}

# The next line updates PATH for the Google Cloud SDK. source '/usr/local/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
if [ -f "/usr/local/google-cloud-sdk/completion.bash.inc" ]; then
    source "/usr/local/google-cloud-sdk/completion.bash.inc"
fi
