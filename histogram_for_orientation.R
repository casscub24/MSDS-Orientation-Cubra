install.packages("readxl")
library(readxl)
# Specify the path to your Excel file
file_path <- "C:/Users/16145/Downloads/MSDS-Orientation-Computer-Survey.xlsx"

# Read the Excel file
data <- read_excel(file_path)

# Print the first few rows of the data
head(data)
install.packages("readxl")

install.packages("ggplot2")
library(ggplot2)

CPU_data <- data$`CPU Number of Cores (int)`

# Identify outliers based on some criteria (e.g., values greater than 100)
outlier_indices <- which(data$`CPU Number of Cores (int)` < 0)

# Remove outliers from the data frame
data_clean <- data[-outlier_indices, ]

# Assuming `readxl` and `ggplot2` packages are already installed and loaded

# Create a rainbow-colored histogram using ggplot2
ggplot(data_clean, aes(x = `CPU Number of Cores (int)`, fill = factor(`CPU Number of Cores (int)`))) +
  geom_histogram(binwidth = 1, color = "black", alpha = 0.8) +
  scale_fill_hue() +  # Use different hues for different factors
  labs(title = "Histogram of CPU Number of Cores (int)",
       x = "CPU Number of Cores (int)",
       y = "Frequency") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, size = 20, face = "bold", color = "blue"),
        axis.title.x = element_text(size = 14, face = "bold", color = "yellow"),
        axis.title.y = element_text(size = 14, face = "bold", color = "red"),
        axis.text = element_text(size = 12, color = "pink"))


