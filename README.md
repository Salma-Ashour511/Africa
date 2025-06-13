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

## Screenshots
Launch Screen

![Simulator Screenshot - iPhone 16 Pro - 2025-06-13 at 20 21 23](https://github.com/user-attachments/assets/a7efd119-eab1-4ae0-b451-2a7c3b722107)


Home [Animals List]

![Simulator Screenshot - iPhone 16 Pro - 2025-06-13 at 20 20 08](https://github.com/user-attachments/assets/13f715a7-2fb5-4d43-b600-a56d54727a1e)


Home [Animals Grid]

![Simulator Screenshot - iPhone 16 Pro - 2025-06-13 at 20 20 12](https://github.com/user-attachments/assets/5a7e0f9e-1538-4125-a4cd-be7e580c7613)

![Simulator Screenshot - iPhone 16 Pro - 2025-06-13 at 20 20 15](https://github.com/user-attachments/assets/30b2961a-c2ad-4bfe-8e14-7de5715a2beb)

![Simulator Screenshot - iPhone 16 Pro - 2025-06-13 at 20 20 17](https://github.com/user-attachments/assets/b1f2accc-47d5-47fa-8f39-782326fdb4a5)


Animal Details

![Simulator Screenshot - iPhone 16 Pro - 2025-06-13 at 20 20 56](https://github.com/user-attachments/assets/046572d9-57ec-44f8-9c36-b9ce5544b3b0)

![Simulator Screenshot - iPhone 16 Pro - 2025-06-13 at 20 21 01](https://github.com/user-attachments/assets/b3d3fc7b-82d2-4268-8620-c28c1aceb57e)

![Simulator Screenshot - iPhone 16 Pro - 2025-06-13 at 20 21 07](https://github.com/user-attachments/assets/8ef55bb0-5cb3-46cc-9eb9-26504cf1b981)

![Simulator Screenshot - iPhone 16 Pro - 2025-06-13 at 20 21 23](https://github.com/user-attachments/assets/2862440c-915c-4f1c-90ec-a32f5b488f5a)


Videos List

![Simulator Screenshot - iPhone 16 Pro - 2025-06-13 at 20 20 23](https://github.com/user-attachments/assets/34ca1468-7236-42b7-90a2-4b1062a0ba5f)


Video Player

![Simulator Screenshot - iPhone 16 Pro - 2025-06-13 at 20 20 27](https://github.com/user-attachments/assets/5e6497a1-6170-478f-839e-bf5d96d59714)


Map

![Simulator Screenshot - iPhone 16 Pro - 2025-06-13 at 20 20 34](https://github.com/user-attachments/assets/1163469d-28e1-45a7-8fb8-32791083c2a1)


Gallery

![Simulator Screenshot - iPhone 16 Pro - 2025-06-13 at 20 20 37](https://github.com/user-attachments/assets/fd906a2f-dd7c-49e1-a330-ddea66406197)

![Simulator Screenshot - iPhone 16 Pro - 2025-06-13 at 20 20 40](https://github.com/user-attachments/assets/86b4f5a0-65ec-45f8-8282-80b4c1586be8)
