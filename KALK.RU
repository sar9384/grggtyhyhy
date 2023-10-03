import math
while True:
    print("Выберите операцию из списка: +, -, *, /, ^, sqrt, factorial, sin, cos, tan")
    operator = input("Операция: ")
    if operator in ['sqrt', 'factorial', 'sin', 'cos', 'tan']:
        num = input("Введите число: ")
        if not check_number_input(num):
            print("Ошибка: некорректный ввод числа")
            continue

        if operator == 'sqrt':
            result = square_root(float(num))
        elif operator == 'factorial':
            result = factorial(int(num))
        elif operator == 'sin':
            result = sin(float(num))
        elif operator == 'cos':
            result = cos(float(num))
        elif operator == 'tan':
            result = tan(float(num))

        print("Результат:", result)

    else:
        num1 = input("Введите первое число: ")
        num2 = input("Введите второе число: ")

        if not check_number_input(num1) or not check_number_input(num2):
            print("Ошибка: некорректный ввод числа")
            continue

        num1 = float(num1)
        num2 = float(num2)

        if operator == '+':
            result = add(num1, num2)
        elif operator == '-':
            result = subtract(num1, num2)
        elif operator == '*':
            result = multiply(num1, num2)
        elif operator == '/':
            result = divide(num1, num2)
        elif operator == '^':
            result = power(num1, num2)

        print("Результат:", result)

    repeat = input("Продолжить? (y/n): ")
    if repeat != 'y':
        break