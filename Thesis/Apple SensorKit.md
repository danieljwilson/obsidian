---
title: Apple SensorKit
aliases: []
summary: 
created: 2022-09-01 08:38
modified: 2022-09-01 08:38
tags: []
---

[[Apple HealthKit]]
[[Apple ResearchKit]]
[[thesis]]
[[thesis stage 3 - app|thesis app]]
[[passive data collection]]

# Notes
From [[Basyl Durnan]]:

-   **App Version:** You'll need to ensure you have the latest MyDataHelps app version installed (2022.6).  
-   **Sensor End Date**: A "[Sensor Data Collection End Date](https://support.mydatahelps.org/hc/en-us/articles/4404704688915-Defining-End-of-Project-for-Participants#device-data)" custom field is required.  **NOTE THAT THE DATE IS NOT INCLUSIVE**, so end it the day after the last day of collection
-   **Syncing**: Background SensorKit syncing works best when leveraging HealthKit to wake the app. Enabling at least one HealthKit data type is sufficient, but your project already has a few enabled anyway.  
-   **Permissioning**: We've added a "SensorKit - Request Permissions" survey to your organization. You'll need to deliver it (either [manually](https://support.mydatahelps.org/hc/en-us/articles/4402459144851-Manually-Delivering-Surveys) or via [schedule](https://support.mydatahelps.org/hc/en-us/articles/360022340513-Scheduling-Survey-and-Notification-Delivery-and-Custom-Field-Updates#add-survey-to-deliver)), click on "Request SensorKit Permission" and follow the prompts. Please confirm that the correct sensors are prompted for your study. Once finished, you can click "Done" to complete the survey. The survey can certainly be modified prior to participant use, such as adding more context about what they will next see, but the SensorKit permission screens are not configurable.  
-   **Data Export**: SensorKit has a 24 hour embargo on data before being transferred. If you enable SensorKit today, data won't be received by MyDataHelps until tomorrow and even then, iOS often batches data together for upload, which could be missed tomorrow and not received until Friday. Once received by MyDataHelps, it will show up in the next day's incremental export. The earliest you may receive data is Friday, but it could also be Saturday.

##### Onboarding Screens
![[IMG_7228 1.png | 350]] ![[IMG_7229 1.png | 350]] 
![[IMG_7230 1.png]]
![[IMG_7231 1.png]]
![[IMG_7232 1.png]]
![[IMG_7233 1.png]]
![[IMG_7234 1.png]]
![[IMG_7235 1.png]]



# Resources
**Papers**