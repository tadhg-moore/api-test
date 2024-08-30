# Use an official R image as a base
FROM r-base

# Install R packages
RUN R -e "install.packages('plumber')"

# Copy your API script
COPY api.R /api.R

# Expose the API port
EXPOSE 8000

# Run the API
CMD ["Rscript", "api.R"]
