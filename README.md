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

## UIView extensions

### Get Top and Bottom anchor to SafeArea

Get the top and bottom anchor constraint to SafeAfea no matter if the device has notch or not

```swift
  
  let myView = UIView()
  // remember to set this to false to use AutoLayout
  myView.translatesAutoresizingMaskIntoConstraints = false
  .
  .
  myView.topAnchor.constraint(self.view.getTopAnchor()).isActive = true
  myView.topAnchor.constraint(self.view.getBottomAnchor()).isActive = true
```