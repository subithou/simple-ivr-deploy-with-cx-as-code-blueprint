import subprocess
import sys
import os
import time
import PureCloudPlatformClientV2

# CLIENT_ID = os.environ["GENESYSCLOUD_OAUTHCLIENT_ID"]
# CLIENT_SECRET = os.environ["GENESYSCLOUD_OAUTHCLIENT_SECRET"]

# CLIENT_REGION = os.environ["GENESYSCLOUD_REGION"]
# CLIENT_API_REGION = os.environ["GENESYSCLOUD_API_REGION"]

# PureCloudPlatformClientV2.configuration.host = 	CLIENT_API_REGION
# apiClient = PureCloudPlatformClientV2.api_client.ApiClient().get_client_credentials_token(CLIENT_ID, CLIENT_SECRET)
apiClient = PureCloudPlatformClientV2.api_client.ApiClient().get_client_credentials_token('94a34097-24d0-4ba9-b6aa-66afa52870c1', 'Vy62YXuW8NFM8bMxeVhDR5dzgv_XOiad2_nu2PPkC5Q')


routingApi = PureCloudPlatformClientV2.RoutingApi(apiClient)
integrationsApi = PureCloudPlatformClientV2.IntegrationsApi(apiClient)
userApi = PureCloudPlatformClientV2.UsersApi(apiClient);
didPoolApi = PureCloudPlatformClientV2.TelephonyProvidersEdgeApi(apiClient);
flowApi = PureCloudPlatformClientV2.ArchitectApi(apiClient);


def findQueue(queueName):
  results = routingApi.get_routing_queues(name=queueName)
  if len(results.entities)==1:
    queue_id = results.entities[0].id
    routingApi.delete_routing_queue(queue_id, force_delete=True)
    print('queue deleted', queueName)
    return True
  else: 
    return None

def findUser(userName):
  results = userApi.get_users(state='active', page_size=1000)
  for i in results.entities:
    if i.name == userName:
      userApi.delete_user(i.id)
      print('user deleted', userName)
  # print(results)

def findDidPool(description):
  results = didPoolApi.get_telephony_providers_edges_didpools(page_size=1000)
  # print(results)
  # for i in results.entities:
  #   print(i.description)
  for i in results.entities:
   if i.description == description:
      didPoolApi.delete_telephony_providers_edges_didpool(i.id)
      print('Deleted DID pool - ')


def findIntegrationAction(actionName):
  results = integrationsApi.get_integrations_actions(name=actionName)

  if len(results.entities)==1:
    return results.entities[0]
  else: 
    return None    

def findIVR(IvrName):
  results = flowApi.get_architect_ivrs(name=IvrName)
  if len(results.entities)==1:
    flowApi.delete_architect_ivr(results.entities[0].id)
    print('deleted', IvrName)


def findFlow(flowName):
  results = flowApi.get_flows(name=flowName)
  if len(results.entities)==1:
    flowApi.delete_flow(results.entities[0].id)
    print('deleted flow', flowName)


def checkQueues():
  Simple_Financial_IRA_queue = findQueue("Simple Financial IRA queue")
  Simple_Financial_401K_queue = findQueue("Simple Financial 401K queue") 

def checkUsers():
  findUser("Jane Smith")
  findUser("John Smith")

def checkDidPools():
  findDidPool("GCV Number for inbound calls")

def checkIVRs():
  findIVR("A simple IVR")
  
def checkFlows():
  findFlow("ci_cd_flow")


#adding check
checkQueues()
checkUsers()
checkDidPools()
checkIVRs()
checkFlows()







