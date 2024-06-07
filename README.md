# Caching network data

## Starting Project

Use this project to code along with [Caching network data](https://developer.apple.com/tutorials/app-dev-training/caching-network-data).

## What Do I have  ?

1. Network with NSCache to store already loaded data, NSCache with an extension for data and status of .inProgress and .ready.
Network is an actor to safe Thread with against data race on order to cached the datas.
2. Error Handling in side `Quake` model with `.missingData` when `Decoded`.
3. NSCache with TaskGroup and store `.inProgress` or `.ready`.
4. Formatter Number in `QuakeDetailView`.
5. `Preview Content` files to create mocks on develop environment.
6. SwiftUI with `EditMode` and `SelectMode` (Custom) to List.
7. SwiftUI with `@ToolbarContentBuilder`. Toolbar dynamic on top and bottom app.
8. Map , simple Map with Pin, Center and Span.




## Tips:

You can include an optional priority parameter when you create a task. The default priority is userInitiated. 
```swift
View {}.task { // here }
```