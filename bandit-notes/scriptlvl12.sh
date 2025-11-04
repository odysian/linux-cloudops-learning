#!/bin/bash

# Bandit Level 12 - Automated Decompression Script
# This script repeatedly decompresses a file until it reaches ASCII text

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Create a temporary working directory
WORK_DIR=$(mktemp -d)
echo -e "${BLUE}Created working directory: ${WORK_DIR}${NC}"

# Copy the data file to working directory
cp ~/data.txt "${WORK_DIR}/data.txt"
cd "${WORK_DIR}"

# Revert the hexdump
echo -e "${BLUE}Reverting hexdump...${NC}"
xxd -r data.txt current_file

# Counter for iterations
counter=0
max_iterations=20

while [ $counter -lt $max_iterations ]; do
    counter=$((counter + 1))
    echo -e "\n${BLUE}=== Iteration $counter ===${NC}"
    
    # Get file type
    file_type=$(file -b current_file)
    echo "File type: $file_type"
    
    # Check if we've reached ASCII text
    if echo "$file_type" | grep -q "ASCII text"; then
        echo -e "${GREEN}Found ASCII text file!${NC}"
        echo -e "\n${GREEN}=== PASSWORD ===${NC}"
        cat current_file
        break
    fi
    
    # Handle different compression types
    if echo "$file_type" | grep -q "gzip compressed"; then
        echo "Decompressing gzip..."
        mv current_file current_file.gz
        gzip -d current_file.gz
        
    elif echo "$file_type" | grep -q "bzip2 compressed"; then
        echo "Decompressing bzip2..."
        mv current_file current_file.bz2
        bzip2 -d current_file.bz2
        
    elif echo "$file_type" | grep -q "POSIX tar archive"; then
        echo "Extracting tar archive..."
        tar -xf current_file
        # Find the extracted file (excluding the original tar)
        extracted=$(ls -t | grep -v "current_file" | grep -v "data.txt" | head -1)
        if [ -n "$extracted" ]; then
            echo "Extracted: $extracted"
            mv "$extracted" current_file
        else
            echo "Error: Could not find extracted file"
            break
        fi
        
    else
        echo "Unknown or uncompressed file type. Stopping."
        break
    fi
done

if [ $counter -eq $max_iterations ]; then
    echo -e "\n${BLUE}Reached maximum iterations. Current file:${NC}"
    cat current_file
fi

echo -e "\n${BLUE}Working directory: ${WORK_DIR}${NC}"
echo "Files will be automatically cleaned up when /tmp is cleared."