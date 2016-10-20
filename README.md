Elm Application Insights
---
Native library for sending tracking information from Elm to Application Insights.

DISCLAIMER: All functions here are purely side effect function, but it shouldn't modify the data you pass to the function, and should return it as is.

Example:
```elm
import AppInsights

-- You can send string
AppInsights.trackEvent "This is the event message"

-- You can also send arbritary value like records
AppInsights.trackEvent { id = 1, value = "One" }

-- You can also add this to a pipe 
{ data = "One" }
    |> ..
    |> AppInsights.trackEvent 
    |> updateData
    |> .. 
```