---
page_type: sample
languages:
- Power Apps
description: Power Apps based app template to incentivize and track participation in training and other adoption and change management initiatives.
urlFragment: microsoft-teams-apps-incentives
---


**Incentives App Template**
| [Documentation](https://github.com/OfficeDev/microsoft-teams-apps-incentives/wiki/Solution-overview) | [Deployment guide](https://github.com/OfficeDev/microsoft-teams-apps-incentives/wiki/Deployment-guide) | [Architecture](https://github.com/OfficeDev/microsoft-teams-apps-incentives/wiki/Solution-overview) |
| ---- | ---- | ---- |

Incentives is a Teams Power Apps app template designed to incentivize and track participation in training and other adoption and change management initiatives.
The app is based on a system of rewarding success and effort in the workplace by allowing employees to earn prizes or recognition once they complete nominated activities.

Core Scenario:
- Employees participate in incentivized events or activities and then enter a unique code in the App, thus receiving points for each activity. The unique code is set when an activity is created by Admins and passed onto the participants on completion of the activity.
- Employees can track their progress on the Leaderboard
- Points can be redeemed for Rewards (Coffee, Food, Shopping, etc…)
- The organization can then leverage the data to track and report on progress associated with employee participation

The usual app workflow would be:
- App Admins will create activities and assign points for each activity. They will also create rewards and set the minimum number of points that users will have to accumulate to be eligible for those rewards.
- End users on completion of an activity will be awarded the set number of points for the activity. They will start accumulating points for each activity they complete.
- They will be able to request rewards once they become eligible for them and choose to claim one or more of them
- For every reward requested by an end user, Admins will approve the request individually by providing a unique voucher code for the reward which can be then redeemed by the end users at retail outlets/cafeteria etc.

The app is divided into two modules:

**Home**

This is the app landing page that is displayed to the users once they login to the app. The page is divided into 5 sections
1. **Collect your points**: Users will be able to collect points by entering unique codes for each activity.
2. **Leaderboard**: Shows the user's current ranking compared to peers within the organization. 
3. **Rewards**: Shows a catalog of rewards which are available.
4. **Your progress**: Shows metrics related to user's current progress like Accumulated points, No of rewards collected etc.  
5. **Activities with incentives**: Shows the list of activities which are currently running and active.

![App Home screen](https://github.com/OfficeDev/microsoft-teams-apps-incentives/wiki/Images/IncentivesApp-PersonalScope.png)

**Admin**

Before the apps can be used by end users, Admins will have to log in to the app and create activities and rewards. They will log in to the app and navigate to the Admin module through a link at the top of the landing page.

The admin module will have the following tabs:
1. **Update activities**: Add and edit activities 
2. **Update rewards**: Add and edit rewards
3. **Approve rewards**: Approve reward requests from users and assign voucher codes
4. **Adjust points**: Manually add or remove points for a user. For e.g.: Admins can adjust points for a user if they find out that the user has not completed an activity but has marked it as complete in the App.   

Admins can navigate back to the home page at any point. They will be able to perform all the activities that an end user can perform. Please note that the voucher codes are created outside the scope of the app. It is assumed that the Admins keep a list of such codes to track the usage of the total budget/reward pool. The app will accept any codes the admin chooses to enter.

![App Admin screen](https://github.com/OfficeDev/microsoft-teams-apps-incentives/wiki/Images/IncentivesApp_Admin.png)

## Legal Notice
This app template is provided under the [MIT License](https://github.com/OfficeDev/microsoft-teams-apps-incentives/blob/master/LICENSE) terms.  In addition to these terms, by using this app template you agree to the following:

- You, not Microsoft, will license the use of your app to users or organization. 

- This app template is not intended to substitute your own regulatory due diligence or make you or your app compliant with respect to any applicable regulations, including but not limited to privacy, healthcare, employment, or financial regulations.

- You are responsible for complying with all applicable privacy and security regulations including those related to use, collection and handling of any personal data by your app. This includes complying with all internal privacy and security policies of your organization if your app is developed to be sideloaded internally within your organization. Where applicable, you may be responsible for data related incidents or data subject requests for data collected through your app.

- Any trademarks or registered trademarks of Microsoft in the United States and/or other countries and logos included in this repository are the property of Microsoft, and the license for this project does not grant you rights to use any Microsoft names, logos or trademarks outside of this repository. Microsoft’s general trademark guidelines can be found [here](https://www.microsoft.com/en-us/legal/intellectualproperty/trademarks/usage/general.aspx).

- If the app template enables access to any Microsoft Internet-based services (e.g., Office365), use of those services will be subject to the separately-provided terms of use. In such cases, Microsoft may collect telemetry data related to app template usage and operation. Use and handling of telemetry data will be performed in accordance with such terms of use.

- Use of this template does not guarantee acceptance of your app to the Teams app store. To make this app available in the Teams app store, you will have to comply with the [submission and validation process](https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/deploy-and-publish/appsource/publish), and all associated requirements such as including your own privacy statement and terms of use for your app.
 

## Getting Started
Begin with the [Solution overview](https://github.com/OfficeDev/microsoft-teams-apps-incentives/wiki/Solution-Overview) to read about what the app does and how it works.

When you're ready to try out Incentives Power App, follow the steps in the [Deployment guide](https://github.com/OfficeDev/microsoft-teams-apps-incentives/wiki/Deployment-Guide).

## Feedback
Thoughts? Questions? Ideas? Share them with us on [Teams UserVoice](https://microsoftteams.uservoice.com/forums/555103-public)!

Please report bugs and other code issues [here](https://github.com/OfficeDev/microsoft-teams-apps-incentives/blob/master/LICENSE).

## Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.opensource.microsoft.com.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.
