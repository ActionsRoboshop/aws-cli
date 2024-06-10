# To create to 3 volumes
for i in {1..3}
do
  aws ec2 create-volume \
      --availability-zone ap-south-1a \
      --no-encrypted \
      --volume-type gp2 \
      --size 2 \
      --tag-specifications "ResourceType=volume,Tags=[{Key=Name,Value=volume{i}},{Key=Project,Value=Roboshop}]"
done


