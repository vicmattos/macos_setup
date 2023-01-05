
vm-active() {
gcloud compute instances list | grep -v TERMINATED
}