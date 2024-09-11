#name
#date 9/11/2024
#PV function
PV <- function(FV, r, n) {
  return(FV / (1 + r)^n)
}

# Parameters
FV <- 1000
r <- 0.05
n_years <- 1:20

# Calculate PV for each year
PV_values <- PV(FV, r, n_years)

# Create the dataframe
df <- data.frame(Year = n_years, Present_Value = PV_values)
print(df)

# Load ggplot2 library
library(ggplot2)

# Beautified plot
ggplot(df, aes(x = Year, y = Present_Value)) +
  geom_line(color = "green", size = 1.5) +  # Thicker line and better color
  geom_point(color = "purple", size = 3) +     # Adding points to the line
  labs(title = "Present Value Over 20 Years",
       subtitle = "Discount Rate: 5%, Future Value: $1000",
       x = "Year",
       y = "Present Value (USD)") +
  theme_minimal() +
  theme(
    plot.background = element_rect(fill = "black", color = NA),  # Black background
    panel.background = element_rect(fill = "black", color = NA),  # Black panel background
    plot.title = element_text(hjust = 0.5, face = "bold", size = 16, color = "white"),  # White title
    plot.subtitle = element_text(hjust = 0.5, size = 12, color = "white"),  # White subtitle
    axis.title.x = element_text(face = "bold", size = 12, color = "white"),  # White X-axis title
    axis.title.y = element_text(face = "bold", size = 12, color = "white"),  # White Y-axis title
    axis.text = element_text(size = 10, color = "white"),  # White axis text
    panel.grid.major = element_line(color = "white"),  # White major grid lines
    panel.grid.minor = element_line(color = "gray80"),  # Lighter white minor grid lines
    panel.border = element_blank(),  # Remove panel border
    legend.background = element_rect(fill = "black"),  # Black legend background if used
    legend.text = element_text(color = "white")  # White text in legend
  )


#Sources
#https://www.datanovia.com/en/blog/ggplot-themes-gallery/
#https://chatgpt.com/share/12ca3861-5a97-4589-8da7-4d796b711108
