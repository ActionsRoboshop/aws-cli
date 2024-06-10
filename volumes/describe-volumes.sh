#aws ec2 describe-volumes  --filters Name=tag:Project,Values=Roboshop --query "Volumes[*].{State: State,Size: Size,VolumeType: VolumeType}"  --output table

#volumes=$(aws ec2 describe-volumes  --filters Name=tag:Project,Values=Roboshop --query "Volumes[*].VolumeId" --output text )

#echo $volumes | xargs -n1


#for  i in `echo $volumes | xargs -n1` ; do echo $i ; done

# aws ec2 modify


for i in `aws ec2 describe-volumes  --filters Name=volume-type,Values=gp2 Name=tag:Project,Values=Roboshop  --query "Volumes[*].VolumeId"  --output text | xargs -n1`; do
aws ec2 modify-volume \
    --volume-type gp3 \
    --volume-id ${i}
done