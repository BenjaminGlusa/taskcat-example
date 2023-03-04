ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

create:
	aws cloudformation create-stack --stack-name pipeline-taskcat --capabilities CAPABILITY_NAMED_IAM --disable-rollback --template-body file:///${ROOT_DIR}/pipeline-taskcat.yml
	
update:
	aws cloudformation update-stack --stack-name pipeline-taskcat --capabilities CAPABILITY_NAMED_IAM --template-body file:///${ROOT_DIR}/pipeline-taskcat.yml 