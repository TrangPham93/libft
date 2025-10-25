#  Libft

Libft is the very first project which recreates standard C library functions and implement additional utility functions from scratch.
It is provided as a static library (libft.a) that you can link to your C projects.

## Features

Libft is divided into **four main parts**:

### 1. **Libc Functions**
Re-implementation of standard C library functions, such as:
- `ft_memset`, `ft_bzero`, `ft_memcpy`, `ft_memmove`
- `ft_strlen`, `ft_strlcpy`, `ft_strlcat`
- `ft_toupper`, `ft_tolower`, `ft_isalpha`, `ft_isdigit`, etc.

These mimic the behavior of their standard counterparts, with `ft_` prefix.

---

### 2. **Additional Functions**
Functions not present in the standard library, but very useful for programming:
- `ft_substr`, `ft_strjoin`, `ft_strtrim`
- `ft_split`, `ft_itoa`
- `ft_strmapi`, `ft_striteri`

---

### 3. **Bonus Part: Linked List Utilities**
Implementations of singly linked list manipulation functions:
- `ft_lstnew`, `ft_lstadd_front`, `ft_lstadd_back`
- `ft_lstdelone`, `ft_lstclear`, `ft_lstiter`, `ft_lstmap`

---

### 4. **Makefile & Compilation**
Your library can be built using:
```bash
make          # Compile mandatory part
make bonus    # Compile with bonus files
make clean    # Remove object files
make fclean   # Remove object files + library
make re       # Recompile everything
```

## Usage
### Requirement: 
Linux OS
### Installment:
#### 1. Clone the Repository
   ```bash
   git clone https://github.com/TrangPham93/libft.git libft
   cd libft
   ```
#### 2. Compile the Project
To compile both the mandatory and bonus
```bash 
make bonus
```
#### 4. Run
```bash 
cc main.c libft.a
./a.out
```
