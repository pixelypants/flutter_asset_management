## Flutter Asset Management
This project demonstrates how to manage and reuse assets across multiple packages in a Flutter application. The assets are stored in a separate package (assets_package) and __used in both the UI package (asset_ui) and the root application__.  

### Project Structure
* __assets_package:__ Contains the assets (e.g., images).
* __asset_ui:__ Contains the UI components that use the assets.
* __flutter_asset_management:__ The root application that uses the UI components from asset_ui.

### Advantages of This Approach
* __Modularity:__ Easier to manage and maintain assets independently.
* __Reusability:__ Assets can be reused across multiple projects or packages.
* __Separation of Concerns:__ Focus on UI logic in the UI package and asset management in the asset package.
* __Scalability:__ Easier to scale as the project grows.
* __Version Control:__ Better version control for assets.
* __Collaboration:__ Allows different team members to work on assets and UI components simultaneously without conflicts.

### Running the App Root

1. **Navigate to the project root directory:**
   ```sh
   $ cd /path/to/your/repo/flutter_asset_management
   ```
   
2. **Get the dependencies:**
   ```sh
   $ flutter pub get
    ```

3. **Run the app:**
   ```sh
   $ flutter run
    ```
   
### Running Widgetbook

1. **Navigate to the project root directory:**
   ```sh
   $ cd /path/to/your/repo/flutter_asset_management/packages/asset_ui
   ```
   
2. **Get the dependencies:**
   ```sh
   $ flutter pub get
    ```
   
3. **Generate the Widgetbook directories:**  
   ```sh
   $ flutter pub run build_runner build --delete-conflicting-outputs
    ```

4. **Run Widgetbook:**
   ```sh
   $ flutter run -d chrome -t lib/widgetbook.dart
    ```
   
pixelypants 2025
