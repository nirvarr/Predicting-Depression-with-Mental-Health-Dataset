# Step 1: Install required packages (only if not already installed)
if (!require("readxl")) install.packages("readxl")
if (!require("ggcorrplot")) install.packages("ggcorrplot")
if (!require("tidyverse")) install.packages("tidyverse")

# Step 2: Load libraries
library(readxl)
library(ggcorrplot)
library(tidyverse)

# Step 3: Load Excel file
data <- read_excel("normalized_mental_health.xlsx")

# Step 4: Clean column names (remove extra spaces)
names(data) <- str_trim(names(data))

# Step 5: Print all column names to verify
cat("✅ Column Names:\n")
print(colnames(data))

# Step 6: Define the selected feature columns
selected_columns <- c(
  "Gender", "Birth Year", "Ethnic Group", "Educational Background", "Occupation",
  "Number of Children", "Work Status", "Health Condition", "Health Limits Daily Activity",
  "Chronic Disease", "Medical Test for COVID-19",
  "COVID-19 Infection", "Staying in Community with COVID-19 Infection", "Origin of COVID-19",
  "Sufficient PPE", "Frequency of Washing Hands", "Frequency of Wearing Facemask",
  "Support Government in Lockdown", "Support Government in Closing National Borders",
  "Hours of Work Per Day", "Days of Work in Usual Workplace", "Hours of Work From Home Per Day",
  "Hours on Gadgets Per Day", "Hours on Social Media Per Day", "Hours on Social Media (COVID-19 Info) Per Day",
  "Hours of Exercise Per Day", "Anxiety", "Depression", "Insomnia"
)

# Step 7: Select and convert to numeric
data_subset <- data %>% select(all_of(selected_columns))

# Step 8: Encode all variables as numeric (factors for categorical)
data_numeric <- data_subset %>%
  mutate(across(everything(), ~as.numeric(as.factor(.))))

# Step 9: Compute correlation matrix
cor_matrix <- cor(data_numeric, use = "complete.obs")

# Step 10: Plot heatmap
heatmap_plot <- ggcorrplot(cor_matrix,
           hc.order = TRUE,
           type = "lower",
           lab = TRUE,
           lab_size = 2.5,
           show.legend = TRUE,
           colors = c("blue", "white", "red"),
           title = "Correlation Matrix of Mental Health Features",
           ggtheme = theme_minimal())

print(heatmap_plot)
ggsave("correlation_heatmap.png", plot = heatmap_plot, width = 12, height = 10, dpi = 300)