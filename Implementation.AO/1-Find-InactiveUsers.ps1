#First Let's Connect to MS Graph
Connect-MgGraph -Scopes 'AuditLog.Read.All'


#Get Users who have not logged in for the past 90 days

# Retrieve only member users who have not signed in for the last 90 days
Get-MsIdInactiveSignInUser -LastSignInBeforeDaysAgo 90 -UserType Member | Out-GridView

# Retrieve only guest users who have not signed in for the last 90 days
# Get-MsIdInactiveSignInUser -LastSignInBeforeDaysAgo 90 -UserType Guest