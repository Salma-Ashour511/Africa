# Africa

A SwiftUI project showcasing African wildlife through interactive views, maps, and videos.

## Overview

This project is built using SwiftUI and demonstrates various features such as:
- Interactive animal listings and details
- Gallery views
- Map integration
- Video playback

## Project Structure

```
Africa/
├── Main/
│   └── AfricaApp.swift
├── View/
│   ├── Screens/
│   │   ├── MainView.swift
│   │   ├── AnimalListView.swift
│   │   ├── GalleryView.swift
│   │   ├── MapView.swift
│   │   └── VideoListView.swift
│   └── Components/
│       ├── AnimalGridView.swift
│       ├── AnimalDetailView.swift
│       ├── AnimalListItemView.swift
│       ├── CoverImageView.swift
│       ├── HeadingView.swift
│       ├── InsetFactView.swift
│       ├── InsetGalleryView.swift
│       ├── InsetMapView.swift
│       ├── MapAnnotaionView.swift
│       ├── MotionAnimationView.swift
│       ├── VideoListItem.swift
│       └── VideoPlayerView.swift
├── Model/
│   ├── AnimalModel.swift
│   ├── CoverImageModel.swift
│   ├── LocationModel.swift
│   └── VideoModel.swift
├── Utilities/
│   ├── Bundle+Decode.swift
│   └── VideoPlayerHelper.swift
├── Resources/
│   ├── JSON/
│   │   ├── animals.json
│   │   ├── covers.json
│   │   ├── locations.json
│   │   └── videos.json
│   └── Video/
│       └── *.mp4
├── Assets.xcassets/
└── Info.plist
```

## Setup

1. Clone the repository.
2. Open the project in Xcode.
3. Build and run the project on your simulator or device.

## Requirements

- Xcode 12.0+
- Swift 5.3+
- iOS 14.0+

## License

This project is licensed under the MIT License - see the LICENSE file for details. 