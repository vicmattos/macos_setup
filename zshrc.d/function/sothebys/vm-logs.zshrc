vm-logs() {
zone=$(gcloud compute instances list | grep $1 | awk '{print $2}')
id=$(gcloud compute instances describe --zone $zone $1 | grep 'id:' | awk '{print $2}' | awk '{print substr($0, 2, length($0) - 2)}')
gcloud logging read "resource.type=\"gce_instance\" resource.labels.instance_id=\""$id"\"" --format="value(jsonPayload.message)" --freshness=3d --limit 100 | sed '/^[[:space:]]*$/d' | tail -r
}