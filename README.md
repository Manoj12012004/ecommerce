
# **E-Commerce App**

A **Flutter-based e-commerce application** that utilizes the **FakeStoreAPI** to provide product listings, user authentication, and a shopping cart experience.

---

## **Features**

- **Homepage with Infinite Scrolling**: Displays an initial set of 10 products, with infinite scrolling to load more.
- **Product Detail Page**: Shows detailed information about the product, including:
  - Product images.
  - Price.
  - Description.
  - Ratings.
- **Search Functionality**: Allows users to search for products by name.
- **User Authentication**: Supports the following actions:
  - Login.
  - Logout.
  - Registration.
- **Product Sorting**: Sort products by:
  - Price.
  - Rating.
  - Popularity.
- **Product Filtering**: Filter products based on:
  - Category.
  - Price range.
  - Rating.
- **Cart Functionality**: Allows users to:
  - Add/remove products from the cart.
  - Checkout.

---

## **Setup Instructions**

### 1. **Clone the Repository**

        Clone the repository to your local machine:

        ```bash
        git clone <repository-url>
        cd ecommerce_app
        ```

### 2. **Install Dependencies**

        Run the following command to install required dependencies:

        ```bash
        flutter pub get
        ```

### 3. **Run the App**

        Once dependencies are installed, you can run the app:

        ```bash
        flutter run
        ```

---

## **Dependencies**

    The following dependencies are used in the project:

    - **`http`**: For making API calls to fetch product data.
    - **`provider`**: For state management, ensuring a responsive and scalable app.
    - **`cached_network_image`**: Efficient image loading with caching support.
    - **`flutter_rating_bar`**: Custom UI for displaying product ratings.

    ---

## **Notes**

    - The app uses **FakeStoreAPI** ([FakeStoreAPI Documentation](https://fakestoreapi.com/)) to fetch product data.
    - The app follows **clean architecture** principles to maintain separation of concerns for better maintainability.
    - The UI is **responsive**, ensuring a smooth experience across different screen sizes.
