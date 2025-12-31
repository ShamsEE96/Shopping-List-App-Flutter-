# Section 2: Basic Flutter Widgets guide

In Flutter, **everything is a widget**. Think of them as Lego blocks you stack together to build your app.

Here are the most common widgets you will use in almost every app, many of which you can find in the default Counter App code.

## 1. Structural Widgets
These provide the "skeleton" or basic structure of a page.

### `Scaffold`
*   **What it is**: The standard "canvas" for a Material Design app.
*   **What it does**: It gives you slots for standard app elements like an `appBar`, a `body`, a `floatingActionButton`, and a `drawer`.
*   **Analogy**: The chassis of a car. You bolt everything else onto it.

### `AppBar`
*   **What it is**: The blue bar (usually) at the top of the screen.
*   **Usage**: Holds the `title`, menu icons, or back buttons.

### `SafeArea` (Bonus)
*   **What it does**: Keeps your UI away from "dangerous" areas of the screen like the iPhone notch or the Android status bar.

---

## 2. Layout Widgets
These don't show anything themselves; they control *where* other widgets sit.

### `Column` & `Row`
*   **`Column`**: Arranges its children vertically (top into bottom).
    *   *Found in `main.dart`: Lines 91-113*
*   **`Row`**: Arranges its children horizontally (left to right).
*   **Key Properties**:
    *   `mainAxisAlignment`: How to align items along the main axis (e.g., Vertical for Column).
    *   `crossAxisAlignment`: How to align items across the other axis (e.g., Horizontal for Column).

### `Center`
*   **What it is**: The simplest layout widget.
*   **What it does**: Takes a single child and places it perfectly in the middle of the parent area.

### `Container`
*   **What it is**: A versatile box that can have padding, margins, borders, and background colors.
*   **Analogy**: A magical box that you can paint, shrink, or pad before putting an item inside it.

---

## 3. Content Widgets
These are the visible elements the user actually sees or interacts with.

### `Text`
*   **What it is**: Displays a string of text.
*   **Styling**: You style it using the `style:` property with a `TextStyle` object (color, font size, weight).

### `Icon`
*   **What it is**: A small graphical symbol (like the "+" sign on the button).
*   **Usage**: `Icon(Icons.add)` or `Icon(Icons.home)`. Flutter has thousands built-in.

### `Image`
*   **What it is**: Displays pictures.
*   **Variants**:
    *   `Image.asset`: For local images (added in `pubspec.yaml`).
    *   `Image.network`: For loading images from the internet URL.

### `FloatingActionButton` (FAB)
*   **What it is**: The circular button floating above the content (usually in the bottom right).
*   **Purpose**: The primary action of the screen (e.g., "Add new item", "Compose email").

---

## 4. Interaction Widgets

### `ElevatedButton` / `TextButton` / `OutlinedButton`
*   The standard clickable buttons.
*   They all take an `onPressed` function (what happens when clicked) and a `child` (usually Text or Icon).

### `TextFormField`
*   **What it is**: A standard input box for users to type text (like email or password).
*   **Key Features**:
    *   `decoration`: Use `InputDecoration` to add labels, hints, and borders.
    *   `validator`: Built-in way to check if the text is valid (e.g., "Field cannot be empty").
    *   `controller`: Used to read or clear the text from your code.

---

## Comparison: Stateless vs Stateful
*   **`StatelessWidget`**: Immutable. Once drawn, it never changes (like a printed photo).
    *   *Example*: `MyApp` class.
*   **`StatefulWidget`**: Mutable. It can change its appearance when data changes (like a video screen). structure.
    *   *Example*: `MyHomePage` class (because the counter number changes).
