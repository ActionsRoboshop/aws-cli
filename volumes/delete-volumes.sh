for i in `aws ec2 describe-volumes  --filters Name=volume-type,Values=gp3 Name=tag:Project,Values=Roboshop  --query "Volumes[*].VolumeId"  --output text | xargs -n1`; do
aws ec2 delete-volume \
    --volume-id ${i}
done
