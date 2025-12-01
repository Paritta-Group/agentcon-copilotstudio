# 🚨 Mission 00: Course Setup

## 🕵️‍♂️ CODENAME: `OPERATION DEPLOYMENT READY`

> **⏱️ Operation Time Window:** `~30 minutes`  

## 🎯 Mission Brief

Welcome to the first mission of your training as a Copilot Studio Agent.  
Before you can start building your first AI agent, you need to establish your **field-ready development environment**.

This briefing outlines the systems, access credentials, and setup steps required to successfully operate in the Microsoft 365 ecosystem.

## 🔎 Objectives

Your mission includes:

1. Getting a Microsoft 365 account  
1. Gaining access to Microsoft Copilot Studio  
1. (Optional) Securing a Microsoft 365 Copilot license for production publishing
1. Creating a developer environment as your Copilot Studio environment to build in  
1. Creating a SharePoint site to serve as your data source in later missions

---

## 🔍 Prerequisites

Before you begin, ensure you have:

1. f
1. f
1. f
---

## Step 1: Get username and password

Copilot Studio resides within Microsoft 365, so you need a Microsoft 365 account to access it. You can either use an existing account if you have one or follow these steps to use a demo one.

1. Open the [Request Login Form](https://forms.microsoft.com/r/E0hU0pMcsu)
1. Provide your name and email address
1. Select Submit
1. Check your mailbox for instructions on how to login.

---

## Step 2. Create Browser Profile
1. Open Microsoft Edge
1. With the Edge browser launched, select Profile > Sign in to sync data (or if you already have a profile, select Profile > Set up a new profile > Work or School)
1. The additional profile is now available for selection.

## Step 3. Connect to the Power Platform tenant
1. Navigate to [make.powerapps.com](https://make.powerapps.com/)
2. Enter your login credentials, click "Get Started" to set up your Power Apps developer environment.

## Step 4. Connect to your Copilot Studio environment
1. Navigate to [https://copilotstudio.microsoft.com](https://copilotstudio.microsoft.com/)
2. Click "Get Started" to set up your Copilot Studio environment.
---

## Step 5: Create new SharePoint site

A new SharePoint site needs to be created  which will be used in [Lesson 06 - Create a custom agent using the conversational creation experience with Copilot and grounding it with your data](../06-create-agent-from-conversation/README.md#62-add-an-internal-knowledge-source-using-a-sharepoint-site).

1. Select the waffle icon on the top left hand side of Microsoft Copilot Studio to view the menu. Select SharePoint from the menu.

    ![Select SharePoint](images/0.4_01_SelectSharePoint.png)

1. SharePoint will load. Select **+ Create  site** to create a new SharePoint site.

    ![Create site](images/0.4_02_CreateSite.png)

1. A dialog will appear to guide you in creating a new SharePoint site. Select **Team site**.

    ![Team site](images/0.4_03_SelectTeamOrCommunicationSite.png)

1. In the next step, a list of Microsoft templates will load by default. Scroll down and select the **IT help desk** template.

    ![IT help desk template](images/0.4_04_SelectITHelpDeskTemplate.png)

1. Select **Use template** to create a new SharePoint site using the IT help desk template.

    ![Use template](images/0.4_05_SelectUseTemplate.png)

1. Enter information for your site. The following is an example:

    | Field | Value |
    | --- | --- |
    | Site name | Contoso IT |
    | Site description | Copilot Studio for Beginners |
    | Site address | ContosoIT |

    ![Site information](images/0.4_06_SiteDetails.png)

1. In the final step, a language can be selected for the SharePoint site. By default it will be **English**. Leave the Language as **English** and select **Create site**.

    ![Language and other options](images/0.4_07_LanguageOtherOptions.png)

1. The SharePoint site will provision for the next few seconds. In the mean time, you can choose to add other users to your site by entering their email address in the **Add members** field. When completed, select **Finish**.

    ![Select finish](images/0.4_08_SelectFinish.png)

1. The SharePoint site home page will next load. **Copy** the SharePoint site URL.

1. This template provides pages with sample data about various IT policies and two sample lists (Tickets and Devices).

### Use Devices SharePoint list

We will use the **Devices** list for in [Mission 07 - Add new topic with trigger and nodes](../07-add-new-topic-with-trigger/README.md#73-add-a-tool-using-a-connector).

### Add new column

Scroll to the far right in the list and select the **+ Add column** button.  Choose the **hyperlink** type, enter **Image** for the column name, and select add.

### Create sample data in Devices SharePoint list

You need to make sure you fill in this list with at least 4 sample data items and add one additional column to this list.  

When adding sample data, make sure that the following fields are filled out:

- Device photo - use the images from the [device images folder](https://github.com/microsoft/agent-academy/tree/main/docs/recruit/00-course-setup/images/device-images)
- Title
- Status
- Manufacturer
- Model
- Asset Type
- Color
- Serial Number
- Purchase Date
- Purchase Price,
- Order #
- Image - use the following links

|Device  |URL  |
|---------|---------|
|Surface Laptop 13     | [https://raw.githubusercontent.com/microsoft/agent-academy/refs/heads/main/docs/recruit/00-course-setup/images/device-images/Surface-Laptop-13.png](https://raw.githubusercontent.com/microsoft/agent-academy/refs/heads/main/docs/recruit/00-course-setup/images/device-images/Surface-Laptop-13.png)        |
|Surface Laptop 15     | [https://raw.githubusercontent.com/microsoft/agent-academy/refs/heads/main/docs/recruit/00-course-setup/images/device-images/Surface-Laptop-15.png](https://raw.githubusercontent.com/microsoft/agent-academy/refs/heads/main/docs/recruit/00-course-setup/images/device-images/Surface-Laptop-15.png)        |
|Surface Pro    | [https://raw.githubusercontent.com/microsoft/agent-academy/refs/heads/main/docs/recruit/00-course-setup/images/device-images/Surface-Pro-12.png](https://raw.githubusercontent.com/microsoft/agent-academy/refs/heads/main/docs/recruit/00-course-setup/images/device-images/Surface-Pro-12.png)        |
|Surface Studio    | [https://raw.githubusercontent.com/microsoft/agent-academy/refs/heads/main/docs/recruit/00-course-setup/images/device-images/Surface-Studio.png](https://raw.githubusercontent.com/microsoft/agent-academy/refs/heads/main/docs/recruit/00-course-setup/images/device-images/Surface-Studio.png)        |

---

## ✅ Mission Complete

You’ve successfully:

- Set up a Microsoft 365 dev environment  
- Activated your Copilot Studio trial  
- Created a SharePoint site for grounding agents  
- Populated the Devices list for use in future missions

Up next: You'll build your [first declarative agent for M365 Copilot](../01-create-a-declarative-agent-for-M365Copilot/README.md).

<!-- markdownlint-disable-next-line MD033 -->
<img src="https://m365-visitor-stats.azurewebsites.net/agent-academy/recruit/00-course-setup" alt="Analytics" />
