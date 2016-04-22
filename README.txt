CSC450 Group Project

Members:
 - Celes Dreyer
 - Mark Frye
 - Timothy Lester

How To Run:

Features:

 - Agent View
    - The agent view allows listing agents to view properties that are for sale, update properties,
      mark properties as sold, or create new property listings.
    - On the left side of the screen is a list of available search parameters that the agent can use
      to filter the listing results.
    - Below the search parameters there is a button called "Update Selected" that opens a popup
      on click with a form filled out with the current information about the property. The agent can
      then modify any of the details about the property and click the "Save Changes" button in the
      bottom right. (NOTE: If no changes are made a connection to the database is not attempted.) The
      agent will then close the popup to return to the previous screen.
    - Another button below the search parameters is the "Create New Listing" button. When clicked, a
      popup window will open on the screen with a new listing form without any information entered.
      All fields are required in this form to be valid. Once all fields have information entered the
      agent then will click the "Create" button in the bottom right to insert the new property into
      the database. The agent can then close the popup window to return to the previous screen.
    - The agent view allows both available and sold properties to be seen. Seller information is also
      shown on each listing.

 - Buyer View
    - The buyer view is a simplified version of the agent view that is meant only for potential buyers
      to see available properties. Like the agent view, the buyer view features a list of search
      criteria on the left side of the screen that can be used to filter the list of properties
      available on the market.
    - This view only shows information about the property itself. Details about the seller and sales
      information of a property are hidden on this screen.
    - The buyer does not have the ability to add or modify listing.
