# EBTools

## General helpers
### Feedback Generator
Generate a Feedback gesture with some UIImpactFeedbackStyle
```swift
  import EBTools
  .
  .
  EBToolsUI.feedback(style: .light)
```

## UI helpers methods 
### RGB to UI color
Convert RGB values and returns UIColor, alpha value is optional and 1.0 by default
```swift
  import EBTools
  .
  .
  let uiColor = EBToolsUI.rgbToColor(r: 0, g: 0, b:0, alpha: 1.0) 
```
