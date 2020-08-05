TF = terraform

init:
	$(TF) init

provision: apply
	bash ./set_kubeconfig.sh

apply: configure
	$(TF) apply --auto-approve

configure:
	bash ./generate_tfvars.sh

destroy:
	$(TF) destroy --auto-approve