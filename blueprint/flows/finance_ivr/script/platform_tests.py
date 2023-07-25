import subprocess
import sys
import os
import time
import PureCloudPlatformClientV2

api_client = PureCloudPlatformClientV2.api_client.ApiClient().get_client_credentials_token('682b4a94-5e61-4219-b399-e52764c8da30','9c7Op9xuqC2NXlgUfXywP5YyClYzEbhu_FChShRQOtY')

api_instance = PureCloudPlatformClientV2.UsersApi(api_client);

page_size = 25 # int | Page size (optional) (default to 25)
page_number = 1 # int | Page number (optional) (default to 1)
# id = ['id_example'] # list[str] | A list of user IDs to fetch by bulk (optional)
# jabber_id = ['jabber_id_example'] # list[str] | A list of jabberIds to fetch by bulk (cannot be used with the \"id\" parameter) (optional)
sort_order = ''ASC'' # str | Ascending or descending sort order (optional) (default to 'ASC')
# expand = ['expand_example'] # list[str] | Which fields, if any, to expand (optional)
# integration_presence_source = 'integration_presence_source_example' # str | Gets an integration presence for users instead of their defaults. This parameter will only be used when presence is provided as an \"expand\". When using this parameter the maximum number of users that can be returned is 100. (optional)
state = 'active' # str | Only list users of this state (optional) (default to 'active')

try:
    # Get the list of available users.
    api_response = api_instance.get_users(page_size=page_size, page_number=page_number, sort_order=sort_order, state=state)
    print(api_response)
except ApiException as e:
    print("Exception when calling UsersApi->get_users: %s\n" % e)



# CLIENT_ID = os.environ["GENESYSCLOUD_OAUTHCLIENT_ID"]
# CLIENT_SECRET = os.environ["GENESYSCLOUD_OAUTHCLIENT_SECRET"]
# CLIENT_REGION = os.environ["GENESYSCLOUD_REGION"]
# CLIENT_API_REGION = os.environ["GENESYSCLOUD_API_REGION"]

# PureCloudPlatformClientV2.configuration.host = 	CLIENT_API_REGION
# apiClient = PureCloudPlatformClientV2.api_client.ApiClient().get_client_credentials_token(CLIENT_ID, CLIENT_SECRET)
# routingApi = PureCloudPlatformClientV2.RoutingApi(apiClient)
# integrationsApi = PureCloudPlatformClientV2.IntegrationsApi(apiClient)

# def findQueue(queueName):
#   results = routingApi.get_routing_queues(name=queueName)

#   if len(results.entities)==1:
#     return results.entities[0]
#   else: 
#     return None

# def findIntegrationAction(actionName):
#   results = integrationsApi.get_integrations_actions(name=actionName)

#   if len(results.entities)==1:
#     return results.entities[0]
#   else: 
#     return None    

# def checkQueues():
#   ira = findQueue("IRA")
#   K401 = findQueue("401K") 
#   CS529 = findQueue("529") 
#   GS    = findQueue("GeneralSupport")   
  
#   assert not(ira is None)
#   assert not(K401 is None)
#   assert not(CS529 is None)
#   assert not(GS is None)
  
#   assert (ira.name=="IRA")==True,   "Retrieved IRA queue name does not match"
#   assert (K401.name=="401K")==True, "Retrieved 401K queue name does not match"
#   assert (CS529.name=="529")==True, "Retrieved 529 queue name does not match"
#   assert (GS.name=="GeneralSupport")==True, "Retrieved IRA queue name does not match"  

# def checkIntegrationAction():
#   comprehendDataAction = findIntegrationAction("LookupQueueName")  

#   assert not(comprehendDataAction is None)

# #adding check
# checkQueues()
# checkIntegrationAction()