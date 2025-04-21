# 🌲 SwiftUI NeoSoftAssignment

A modern, clean SwiftUI app showcasing:
- ✅ An image **carousel** with page swipe
- 🔍 A sticky **search bar** to filter list content
- 📋 A responsive **list** with titles, subtitles & images
- ➕ A floating action button (**FAB**) that opens a **statistics bottom sheet**

---

## 📱 Features

### 🖼 Image Carousel
- Horizontal swipeable images (local or remote)
- Each image switches the associated list content
- Built with native `TabView` – no third-party libraries!

### 🔍 Searchable List
- Sticky search bar pins at the top
- Dynamically filters list content per page
- Smooth scrolling experience

### 📊 Floating Action Button
- Opens a bottom sheet with:
  - 📦 Count of list items
  - 🔠 Top 3 most frequent characters in list words

### 🧪 Data-Driven Design
- Supports **local JSON** or **remote image URLs**
- Uses `AsyncImage` for loading online images
