#
#   Copyright 2019 Ericsson AB.
#   For a full list of individual contributors, please see the commit history.
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
##-------------------------------------------------------------------------------------
## Eiffel K8S environment variable settings
##
## Author: michael.frick@ericsson.com
##
##--------------------------------------------------------------------------------------

# ---- Do NOT Change --------------------------------

export K8S_Ingress_Enabled=true

# ---- Do NOT Change --------------------------------


# -- Domain name for K8S cluster & Namespace ------
# Domainname in K8S Cluster
verbose "Domainname to use: ${K8S_DOMAINNAME}"

# Namespace in K8S Cluster
K8S_NAMESPACE=eiffel
[[ ! -z ${K8S_NAMESPACE_OVERRIDE} ]] && K8S_NAMESPACE=${K8S_NAMESPACE_OVERRIDE}
verbose "Namespace to use: ${K8S_NAMESPACE}"


#---- K8S Release.fullnames
export K8S_RELEASE_EIFFEL_MONGODB=$EIFFEL_MONGODB-${K8S_NAMESPACE}
export K8S_RELEASE_EIFFEL_RABBITMQ=$EIFFEL_RABBITMQ-${K8S_NAMESPACE}
export K8S_RELEASE_EIFFEL_NEXUS3=$EIFFEL_NEXUS3-${K8S_NAMESPACE}
export K8S_RELEASE_EIFFEL_EI_BACKEND_ARTIFACT=$EIFFEL_EI_BACKEND_ARTIFACT-${K8S_NAMESPACE}
export K8S_RELEASE_EIFFEL_EI_BACKEND_SOURCECHANGE=$EIFFEL_EI_BACKEND_SOURCECHANGE-${K8S_NAMESPACE}
export K8S_RELEASE_EIFFEL_EI_BACKEND_TESTEXECUTION=$EIFFEL_EI_BACKEND_TESTEXECUTION-${K8S_NAMESPACE}
export K8S_RELEASE_EIFFEL_EI_BACKEND_ALLEVENTS=$EIFFEL_EI_BACKEND_ALLEVENTS-${K8S_NAMESPACE}
export K8S_RELEASE_EIFFEL_DUMMY_ER=$EIFFEL_DUMMY_ER-${K8S_NAMESPACE}
export K8S_RELEASE_EIFFEL_VICI=$EIFFEL_VICI-${K8S_NAMESPACE}
export K8S_RELEASE_EIFFEL_REMREM_GENERATE=$EIFFEL_REMREM_GENERATE-${K8S_NAMESPACE}
export K8S_RELEASE_EIFFEL_REMREM_PUBLISH=$EIFFEL_REMREM_PUBLISH-${K8S_NAMESPACE}
export K8S_RELEASE_EIFFEL_ER=$EIFFEL_ER-${K8S_NAMESPACE}
export K8S_RELEASE_EIFFEL_JENKINS_FEM=$EIFFEL_JENKINS_FEM-${K8S_NAMESPACE}
export K8S_RELEASE_EIFFEL_JENKINS=$EIFFEL_JENKINS-${K8S_NAMESPACE}
export K8S_RELEASE_EIFFEL_EI_FRONTEND=$EIFFEL_EI_FRONTEND-${K8S_NAMESPACE}
export K8S_RELEASE_EIFFEL_MONGODB_SEED=$EIFFEL_MONGODB_SEED-${K8S_NAMESPACE}


# --- Ingress
export K8S_INGRESS_EIFFEL_RABBITMQ=$K8S_RELEASE_EIFFEL_RABBITMQ.$K8S_DOMAINNAME
export K8S_INGRESS_EIFFEL_DUMMY_ER=$K8S_RELEASE_EIFFEL_DUMMY_ER.$K8S_DOMAINNAME
export K8S_INGRESS_EIFFEL_ER=$K8S_RELEASE_EIFFEL_ER.$K8S_DOMAINNAME
export K8S_INGRESS_EIFFEL_JENKINS_FEM=$K8S_RELEASE_EIFFEL_JENKINS_FEM.$K8S_DOMAINNAME
export K8S_INGRESS_EIFFEL_JENKINS=$K8S_RELEASE_EIFFEL_JENKINS.$K8S_DOMAINNAME
export K8S_INGRESS_EIFFEL_NEXUS3=$K8S_RELEASE_EIFFEL_NEXUS3.$K8S_DOMAINNAME
export K8S_INGRESS_EIFFEL_REMREM_GENERATE=$K8S_RELEASE_EIFFEL_REMREM_GENERATE.$K8S_DOMAINNAME
export K8S_INGRESS_EIFFEL_REMREM_PUBLISH=$K8S_RELEASE_EIFFEL_REMREM_PUBLISH.$K8S_DOMAINNAME
export K8S_INGRESS_EIFFEL_VICI=$K8S_RELEASE_EIFFEL_VICI.$K8S_DOMAINNAME
export K8S_INGRESS_EIFFEL_EI_BACKEND_ALLEVENTS=$K8S_RELEASE_EIFFEL_EI_BACKEND_ALLEVENTS.$K8S_DOMAINNAME
export K8S_INGRESS_EIFFEL_EI_BACKEND_ARTIFACT=$K8S_RELEASE_EIFFEL_EI_BACKEND_ARTIFACT.$K8S_DOMAINNAME
export K8S_INGRESS_EIFFEL_EI_BACKEND_SOURCECHANGE=$K8S_RELEASE_EIFFEL_EI_BACKEND_SOURCECHANGE.$K8S_DOMAINNAME
export K8S_INGRESS_EIFFEL_EI_BACKEND_TESTEXECUTION=$K8S_RELEASE_EIFFEL_EI_BACKEND_TESTEXECUTION.$K8S_DOMAINNAME
export K8S_INGRESS_EIFFEL_EI_FRONTEND=$K8S_RELEASE_EIFFEL_EI_FRONTEND.$K8S_DOMAINNAME


### Common Easy2Use DNS Service names
# ----- Eiffel Servicenames, External Ports, External Ports
export EIFFEL_MONGODB=$K8S_RELEASE_EIFFEL_MONGODB
export EIFFEL_RABBITMQ=$K8S_RELEASE_EIFFEL_RABBITMQ
export EIFFEL_DUMMY_ER=$K8S_RELEASE_EIFFEL_DUMMY_ER
export EIFFEL_ER=$K8S_RELEASE_EIFFEL_ER
export EIFFEL_JENKINS_FEM=$K8S_RELEASE_EIFFEL_JENKINS_FEM
export EIFFEL_JENKINS=$K8S_RELEASE_EIFFEL_JENKINS
export EIFFEL_NEXUS3=$K8S_RELEASE_EIFFEL_NEXUS3
export EIFFEL_REMREM_GENERATE=$K8S_RELEASE_EIFFEL_REMREM_GENERATE
export EIFFEL_REMREM_PUBLISH=$K8S_RELEASE_EIFFEL_REMREM_PUBLISH
export EIFFEL_VICI=$K8S_RELEASE_EIFFEL_VICI
export EIFFEL_EI_BACKEND_ARTIFACT=$K8S_RELEASE_EIFFEL_EI_BACKEND_ARTIFACT
export EIFFEL_EI_BACKEND_SOURCECHANGE=$K8S_RELEASE_EIFFEL_EI_BACKEND_SOURCECHANGE
export EIFFEL_EI_BACKEND_TESTEXECUTION=$K8S_RELEASE_EIFFEL_EI_BACKEND_TESTEXECUTION
export EIFFEL_EI_BACKEND_ALLEVENTS=$K8S_RELEASE_EIFFEL_EI_BACKEND_ALLEVENTS
export EIFFEL_EI_FRONTEND=$K8S_INGRESS_EIFFEL_EI_FRONTEND
export EIFFEL_MONGODB_SEED=$K8S_RELEASE_EIFFEL_MONGODB_SEED

# Ports used for communicate between services in Kubernetes Cluster.
export EIFFEL_MONGODB_APPLICATION_PORT=${EIFFEL_MONGODB_EXTERNAL_PORT}
export EIFFEL_RABBITMQ_AMQP_APPLICATION_PORT=${EIFFEL_RABBITMQ_AMQP_EXTERNAL_PORT}
export EIFFEL_RABBITMQ_WEB_APPLICATION_PORT=${EIFFEL_RABBITMQ_WEB_EXTERNAL_PORT}
export EIFFEL_DUMMY_ER_APPLICATION_PORT=${EIFFEL_DUMMY_ER_EXTERNAL_PORT}
export EIFFEL_ER_APPLICATION_PORT=${EIFFEL_ER_EXTERNAL_PORT}
export EIFFEL_JENKINS_FEM_APPLICATION_PORT=${EIFFEL_JENKINS_FEM_EXTERNAL_PORT}
export EIFFEL_JENKINS_APPLICATION_PORT=${EIFFEL_JENKINS_EXTERNAL_PORT}
export EIFFEL_NEXUS_APPLICATION_PORT=${EIFFEL_NEXUS_EXTERNAL_PORT}
export EIFFEL_REMREM_GENERATE_APPLICATION_PORT=${EIFFEL_REMREM_GENERATE_EXTERNAL_PORT}
export EIFFEL_REMREM_PUBLISH_APPLICATION_PORT=${EIFFEL_REMREM_PUBLISH_EXTERNAL_PORT}
export EIFFEL_VICI_APPLICATION_PORT=${EIFFEL_VICI_EXTERNAL_PORT}
export EIFFEL_EI_BACKEND_ARTIFACT_APPLICATION_PORT=${EIFFEL_EI_BACKEND_ARTIFACT_EXTERNAL_PORT}
export EIFFEL_EI_BACKEND_SOURCECHANGE_APPLICATION_PORT=${EIFFEL_EI_BACKEND_SOURCECHANGE_EXTERNAL_PORT}
export EIFFEL_EI_BACKEND_TESTEXECUTION_APPLICATION_PORT=${EIFFEL_EI_BACKEND_TESTEXECUTION_EXTERNAL_PORT}
export EIFFEL_EI_BACKEND_ALLEVENTS_APPLICATION_PORT=${EIFFEL_EI_BACKEND_ALLEVENTS_EXTERNAL_PORT}
export EIFFEL_EI_FRONTEND_APPLICATION_PORT=${EIFFEL_EI_FRONTEND_EXTERNAL_PORT}
export EIFFEL_EI_FRONTEND_EXTERNAL_APPLICATION_PORT=443



