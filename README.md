Elm Application Insight
---
Native library for sending tracking information from Elm to Application Insight.

DISCLAIMER: All functions here are purely side effect function, but it shouldn't modify the data you pass to the function, and should return it as is.

Example:
```elm
import AppInsight

-- You can send string
AppInsight.trackEvent "This is the event message"

-- You can also send arbritary value like records
AppInsight.trackEvent { id = 1, value = "One" }

-- You can also add this to a pipe 
{ data = "One" }
    |> ..
    |> AppInsight.trackEvent 
    |> updateData
    |> .. 
```