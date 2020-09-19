##############################################################

#### for MFA Tenant use ####

## fill this 2 parameter below

$siteurl ="https://m365x129757.sharepoint.com/"
$sitename ="Incentives"


Connect-PnPOnline -Url $siteurl -SPOManagementShell -ClearTokenCache
$incentivesiteurl = New-PnPSite -Type TeamSite -Title $sitename -Alias $sitename 
Connect-PnPOnline -Url $incentivesiteurl -UseWebLogin 


#Creates a new list for Incentives
New-PnPList -Title 'Incentives' -Template GenericList -Url Lists/Incentives -ErrorAction Continue

#Adds new fields(columns) for Incentives
# Add-PnPField -List "Incentives" -DisplayName "Title" -InternalName "Title" -Type Text -AddToDefaultView
Add-PnPField -List "Incentives" -DisplayName "Name" -InternalName "Name" -Type Text -AddToDefaultView
Add-PnPField -List "Incentives" -DisplayName "Points" -InternalName "Points" -Type Number -AddToDefaultView
Add-PnPField -List "Incentives" -DisplayName "IncentiveCode" -InternalName "IncentiveCode" -Type Text -AddToDefaultView
Add-PnPField -List "Incentives" -DisplayName "CreatedBy" -InternalName "CreatedBy" -Type Text -AddToDefaultView
Add-PnPField -List "Incentives" -DisplayName "CreatedOn" -InternalName "CreatedOn" -Type DateTime -AddToDefaultView
Add-PnPField -List "Incentives" -DisplayName "DueDate" -InternalName "DueDate" -Type Date -AddToDefaultView
Add-PnPField -List "Incentives" -DisplayName "UpdatedBy" -InternalName "UpdatedBy" -Type Text -AddToDefaultView
Add-PnPField -List "Incentives" -DisplayName "UpdatedOn" -InternalName "UpdatedOn" -Type DateTime -AddToDefaultView
Add-PnPField -List "Incentives" -DisplayName "IsIncentiveLive" -InternalName "IsIncentiveLive" -Type Choice -Choices "true","false" -AddToDefaultView 
Set-PnPField -List "Incentives" -Identity "IsIncentiveLive" -Values @{DefaultValue="true"}

#Attachments column is present by default in sharepoint lists, this may show error like "Attachments field exists"
#Need to click on add column inside list and goto Show/hide columns and make Attachments visible
#Add-PnPField -List "Incentives" -DisplayName "Attachments" -InternalName "Attachments" -Type Attachments -AddToDefaultView




#Creates a new list for Rewards
New-PnPList -Title 'Rewards' -Template GenericList -Url Lists/Rewards -ErrorAction Continue

#Adds new fields for Rewards
# Add-PnPField -List "Rewards" -DisplayName "Title" -InternalName "Title" -Type Text -AddToDefaultView
Add-PnPField -List "Rewards" -DisplayName "Name" -InternalName "Name" -Type Text -AddToDefaultView
Add-PnPField -List "Rewards" -DisplayName "Points" -InternalName "Points" -Type Number -AddToDefaultView
Add-PnPField -List "Rewards" -DisplayName "CreatedBy" -InternalName "CreatedBy" -Type Text -AddToDefaultView
Add-PnPField -List "Rewards" -DisplayName "CreatedOn" -InternalName "CreatedOn" -Type DateTime -AddToDefaultView
Add-PnPField -List "Rewards" -DisplayName "UpdatedBy" -InternalName "UpdatedBy" -Type Text -AddToDefaultView
Add-PnPField -List "Rewards" -DisplayName "UpdatedOn" -InternalName "UpdatedOn" -Type DateTime -AddToDefaultView

#Attachments column is present by default in sharepoint lists, this may show error like "Attachments field exists"
#Need to click on add column inside list and goto Show/hide columns and make Attachments visible
# Add-PnPField -List "Rewards" -DisplayName "Attachments" -InternalName "Attachments" -Type Attachments -AddToDefaultView


#Creates a new list for UserIncentives
New-PnPList -Title 'UserIncentives' -Template GenericList -Url Lists/UserIncentives -ErrorAction Continue

#Adds new fields for UserIncentives

# Add-PnPField -List "UserIncentives" -DisplayName "Title" -InternalName "Title" -Type Text -AddToDefaultView
Add-PnPField -List "UserIncentives" -DisplayName "UserName" -InternalName "UserName" -Type Text -AddToDefaultView
Add-PnPField -List "UserIncentives" -DisplayName "IncentiveName" -InternalName "IncentiveName" -Type Text -AddToDefaultView
Add-PnPField -List "UserIncentives" -DisplayName "IncentivePoints" -InternalName "IncentivePoints" -Type Number -AddToDefaultView
Add-PnPField -List "UserIncentives" -DisplayName "IncentiveCode" -InternalName "IncentiveCode" -Type Text -AddToDefaultView
Add-PnPField -List "UserIncentives" -DisplayName "ReceivedOn" -InternalName "ReceivedOn" -Type DateTime -AddToDefaultView
Add-PnPField -List "UserIncentives" -DisplayName "ReasonForEdit" -InternalName "ReasonForEdit" -Type Text -AddToDefaultView


#Creates a new list for UserRewards
New-PnPList -Title 'UserRewards' -Template GenericList -Url Lists/UserRewards -ErrorAction Continue

#Adds New Fields for UserRewards
# Add-PnPField -List "UserRewards" -DisplayName "Title" -InternalName "Title" -Type Text -AddToDefaultView
Add-PnPField -List "UserRewards" -DisplayName "UserName" -InternalName "UserName" -Type Text -AddToDefaultView
Add-PnPField -List "UserRewards" -DisplayName "RewardName" -InternalName "RewardName" -Type Text -AddToDefaultView
Add-PnPField -List "UserRewards" -DisplayName "RewardPoint" -InternalName "RewardPoint" -Type Number -AddToDefaultView
Add-PnPField -List "UserRewards" -DisplayName "Status" -InternalName "Status" -Type Text -AddToDefaultView
Add-PnPField -List "UserRewards" -DisplayName "VoucherCode" -InternalName "VoucherCode" -Type Text -AddToDefaultView
Add-PnPField -List "UserRewards" -DisplayName "CreatedOn" -InternalName "CreatedOn" -Type DateTime -AddToDefaultView

#Closes the connection
Disconnect-PnPOnline