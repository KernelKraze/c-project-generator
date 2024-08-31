#!/bin/bash

# Function to create a file with content
create_file() {
    local file_path="$1"
    local content="$2"
    mkdir -p "$(dirname "$file_path")"
    echo "$content" > "$file_path"
    echo "Created: $file_path"
}

# Create project structure
mkdir -p project_root/{src,include,lib,tests,obj,bin}
cd project_root

# Create Makefile
create_file "Makefile" "# Compiler settings
CC := gcc
CFLAGS := -Wall -Wextra -Werror -std=c99 -I./include

# Directories
SRC_DIR := src
OBJ_DIR := obj
BIN_DIR := bin

# Source files
SRCS := \$(wildcard \$(SRC_DIR)/*.c)
OBJS := \$(patsubst \$(SRC_DIR)/%.c,\$(OBJ_DIR)/%.o,\$(SRCS))

# Executable name
TARGET := \$(BIN_DIR)/program

# Default target
all: \$(TARGET)

# Rule to create object files
\$(OBJ_DIR)/%.o: \$(SRC_DIR)/%.c
	@mkdir -p \$(@D)
	\$(CC) \$(CFLAGS) -c \$< -o \$@

# Rule to create the executable
\$(TARGET): \$(OBJS)
	@mkdir -p \$(@D)
	\$(CC) \$(CFLAGS) \$^ -o \$@

# Clean rule
clean:
	rm -rf \$(OBJ_DIR) \$(BIN_DIR)

# Phony targets
.PHONY: all clean"

# Create main.c
create_file "src/main.c" "#include <stdio.h>
#include \"module1.h\"
#include \"module2.h\"

int main(void)
{
    printf(\"Hello, Modular C Project!\\n\");
    module1_function();
    module2_function();
    return 0;
}"

# Create module1.c
create_file "src/module1.c" "#include <stdio.h>
#include \"module1.h\"

void module1_function(void)
{
    printf(\"This is module 1\\n\");
}"

# Create module2.c
create_file "src/module2.c" "#include <stdio.h>
#include \"module2.h\"

void module2_function(void)
{
    printf(\"This is module 2\\n\");
}"

# Create module1.h
create_file "include/module1.h" "#ifndef MODULE1_H
#define MODULE1_H

void module1_function(void);

#endif /* MODULE1_H */"

# Create module2.h
create_file "include/module2.h" "#ifndef MODULE2_H
#define MODULE2_H

void module2_function(void);

#endif /* MODULE2_H */"

# Create README.md
create_file "README.md" "# Modular C Project

This is a simple modular C project structure.

## Building the project

To build the project, run:

\`\`\`
make
\`\`\`

## Running the program

After building, you can run the program with:

\`\`\`
./bin/program
\`\`\`

## Cleaning up

To clean up built files, run:

\`\`\`
make clean
\`\`\`"

echo "Project structure created successfully in 'project_root' directory."
