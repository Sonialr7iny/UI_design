# Anime UI & Clean Architecture

This Flutter project serves as a demonstration of a UI design for an anime application, built following the principles of Clean Architecture.Focusing on presentation and domain layers.

## Project Focus

*   **UI/UX Design:** Presenting a visually appealing and intuitive user interface for browsing anime content, including details screens, filterable lists, and character showcases.
*   **Clean Architecture:** Implementing a separation of concerns by dividing the application into distinct layers (Presentation, Domain, Data - though the Data layer be mocked or use local data for this UI demo).
*   **Flutter Best Practices:** Utilizing modern Flutter widgets.

## Key Features Demonstrated

*   **Home Screen:**
    *   Dynamic content filtering (e.g., "All," "Popular," "Trending").
    *   Horizontal scrolling lists for anime posters.
    *   "Top Characters" section with circular avatars.
*   **Details Screen (Conceptual/Implemented):**
    *   Visually rich display for individual anime.
    *   Layered UI with background images, poster art, and textual information.
    *   Display of genre tags, view counts, and season information.
*   **Navigation:**
    *   Custom-styled Bottom Navigation Bar for switching between main sections (Home, Library, Search, etc.).
    *   Animated transitions between views (using `AnimatedSwitcher` or similar).
*   **UI Components:**
    *   Custom layouts for anime and characters.
    *   Styled buttons, SVGs for icons, and custom text styles using specific fonts.
    *   Use of `Stack`, `Positioned`, `DraggableScrollableSheet` .

## Architecture Overview (Clean Architecture)

This project aims to follow Clean Architecture principles:

*   **Presentation Layer:**
    *   Contains Flutter Widgets (Screens, custom UI components).
    *   Handles UI logic and user interaction.
    *   Uses State Management (e.g., `setState`) to manage UI state.
    *   Communicates with the Domain layer .
*   **Domain Layer:**
    *   Contains the core business logic and application-specific rules.
    *   Includes Entities (e.g., `AnimeEntity`, `CharacterEntity`).
    *   This layer is independent of UI and data source implementations.
*   **Data Layer (Mocked/Local for UI Demo):**
    *   For this UI demo, it primarily uses local data services (`local_data_service.dart`) to provide sample anime and character data.
    *   In a full application, this layer would handle API calls, database interactions, etc.


## Project Structure (Illustrative)


<pre>```text
lib/
├── features/
│   ├── presentation/
│   │   ├── screens/         # Home, Details, etc.
│   │   ├── widgets/         # Reusable UI components (custom_nav_bar)
│   ├── domain/
│   │   ├── entities/        # AnimeEntity, CharacterEntity
│   ├── data/
│   │   ├── datasources/
│   │   │   └── local/       # local_data_service.dart
├── main.dart

```</pre>

# -------------


