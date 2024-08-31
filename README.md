# 🏗️ C Project Generator

This script generates a modular C project structure, following best practices for organizing C code. It's designed to help developers quickly set up a new C project with a standardized directory layout and basic files.

## ✨ Features

- 📁 Creates a complete directory structure for a C project
- 🛠️ Generates a Makefile for easy compilation
- 📄 Sets up initial source files and header files
- 🚀 Creates a basic main function and two example modules
- 🐧 Follows Linux kernel coding style guidelines

## 📋 Prerequisites

- 🐚 Bash shell
- 💻 Unix-like operating system (Linux, macOS, etc.)

## 🚀 Usage

1. Clone this repository:
   ```
   git clone https://github.com/yourusername/c-project-generator.git
   ```

2. Navigate to the cloned directory:
   ```
   cd c-project-generator
   ```

3. Make the script executable:
   ```
   chmod +x generate_c_project.sh
   ```

4. Run the script:
   ```
   ./generate_c_project.sh
   ```

5. A new directory named `project_root` will be created in the current directory, containing the generated project structure.

## 🗂️ Project Structure

The generated project will have the following structure:

```
project_root/
├── src/
│   ├── main.c
│   ├── module1.c
│   └── module2.c
├── include/
│   ├── module1.h
│   └── module2.h
├── lib/
├── tests/
├── obj/
├── bin/
├── Makefile
└── README.md
```

## 🛠️ Customization

You can customize the generated project structure by modifying the `generate_c_project.sh` script. Feel free to add more modules, change the directory structure, or modify the content of generated files to suit your needs.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- 💡 Inspired by best practices in C programming and project organization
- 🐧 Follows Linux kernel coding style guidelines

## 📞 Contact

NONE
