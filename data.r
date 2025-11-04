# Creating a tibble with athlete performance data
athletes <- tibble(
  Name = c("Amit", "Sara", "John", "Priya", "Leo", "Nina", "Raj", "Emily", "Tom", "Zara", "Kunal", "Liam", "Meera", "Alex", "Riya"),
  Sport = c("Cricket", "Tennis", "Football", "Cricket", "Tennis", "Football", "Cricket", "Tennis", "Football", "Cricket", "Tennis", "Football", "Cricket", "Tennis", "Football"),
  Age = c(25, 22, 30, 28, 26, 24, 27, 23, 29, 31, 21, 32, 26, 25, 28),
  Matches = c(50, 40, 60, 55, 45, 48, 52, 38, 62, 58, 36, 65, 47, 43, 59),
  Wins = c(30, 25, 35, 33, 28, 30, 31, 22, 36, 34, 20, 38, 29, 27, 35),
  Rating = c(8.2, 7.5, 8.8, 8.0, 7.9, 8.1, 8.3, 7.4, 8.9, 8.5, 7.2, 9.0, 8.0, 7.8, 8.6),
  Injured = c(FALSE, TRUE, FALSE, FALSE, TRUE, FALSE, FALSE, TRUE, FALSE, FALSE, TRUE, FALSE, FALSE, TRUE, FALSE)
)

# This script uses the 'gss_cat' dataset from the 'forcats' package.
# It contains a sample of General Social Survey (GSS) data with categorical variables.
# The dataset is useful for demonstrating factor manipulation and visualization techniques.
# To load it, ensure the 'forcats' package is installed and use: data(gss_cat)
# The data is then stored in the variable my_data2

# This script uses the 'bancroft.peanut.uniformity' dataset from the 'agridat' package.
# The dataset is useful for demonstrating factor manipulation and visualization techniques.
# To load it, ensure the 'agridat' package is installed and use: data(bancroft.peanut.uniformity)
# The data is then stored in the variable data

# This script uses the 'gapminder' dataset from the 'gapminder' package.
# The dataset is useful for demonstrating factor manipulation and visualization techniques.
# To load it, ensure the 'gapminder' package is installed and use: data(gapminder)