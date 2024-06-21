aws ec2 run-instances \
    --image-id ami-031d574cddc5bb371 \
    --instance-type t3.micro \
     --security-group-ids sg-0a88820d7b4d3ff2a \
     --user-data file://script.txt
