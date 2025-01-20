# Classic ASP Method Chaining (fluent interfaces)

**Chained Method Calls Sample Class**

This repository demonstrates **Chained Method Calls** (or fluent interfaces) in Classic ASP. Although Classic ASP is an older technology introduced by Microsoft in 1996, it can still benefit from modern programming techniques. By returning the current instance (`Me`) from each method, developers can achieve a chained call style similar to those in more recent languages.

## Overview

- **Language**: Classic ASP (VBScript)
- **Concept**: Chained Method Calls / Fluent Interface
- **Goal**: Improve code readability and maintainability by executing multiple method calls concisely on a single object.

## What is Chain Method (or Fluent Interfaces)

Chained methods (often referred to as a fluent interface) allow multiple method calls on the same object in a single statement. Each method returns the current object (e.g., this in many languages), enabling a sequential chain of operations without needing separate variables or lines for each call. This approach makes code more readable and concise, as it clearly shows the flow of actions applied to the object.

## Core Principles

1. **Class Structure**

   - Encapsulate functionality within a `Class` block.
   - Use a private variable (e.g., `m_number`) to maintain state.

2. **Returning the Class Instance**

   - Each method (except the final result method) should return the current instance:
     ```vbscript
     Set <MethodName> = Me
     ```

3. **`Me` Keyword**
   - Similar to `this` in other languages, `Me` refers to the current class instance in VBScript.

## Available Methods for Sample Class

The `Mathematics` class offers the following methods:

### Basic Arithmetic

- `Add(number)`: Addition
- `Subtract(number)`: Subtraction
- `Multiply(number)`: Multiplication
- `Divide(number)`: Division (with zero check)

### Advanced Operations

- `Power(number)`: Exponentiation
- `SquareRoot()`: Square root (with negative number check)
- `Modulus(number)`: Modulo operation (with zero check)

### Rounding Operations

- `RoundUp()`: Standard rounding
- `Ceiling()`: Rounds up to the nearest integer
- `Floor()`: Rounds down to the nearest integer

### Result

- `GetResult()`: Returns the final calculated value

## Example Usage

```vbscript
<%
' Basic arithmetic operations
Set Math = New Mathematics
    Result = Math.Add(10).Subtract(5).Multiply(2).Divide(2).GetResult()
Set Math = Nothing

' More complex operations
Set Math = New Mathematics
    Result = Math.Add(16).Power(2).SquareRoot().GetResult()
Set Math = Nothing
%>
```

**With Line Continuation Sample**

```vbscript
<%
Set Math0 = New Mathematics
    Response.Write Math0.Add(10)_
        .Subtract(5)_
        .Multiply(2)_
        .Divide(2)_
        .GetResult()
Set Math0 = Nothing
%>
```

## Best Practices

When using chained method calls in Classic ASP, consider the following best practices:

1. **Memory Management**

   - Always use `Set object = Nothing` when you’re done.
   - Keep chain lengths reasonable to avoid memory issues.

2. **Error Handling**

   - Implement proper error handling in each method.
   - Use `On Error Resume Next` cautiously.

3. **Performance**
   - Long chains can affect performance.
   - Break down complex operations into smaller steps if needed.

## Advanced Examples for Math Class Sample

Below are some more involved chained method call examples:

```vbscript
' Complex mathematical operations
Result = Math.Add(10).Multiply(2).Divide(4).Subtract(3).GetResult()

' Nested operations
Result = Math.Add(5).Multiply(Math.Add(3).Multiply(2).GetResult()).GetResult()

' Using modulus and rounding
Result = Math.Add(17).Modulus(5).Ceiling().GetResult()
```

## Test

The repository includes a `test.asp` file with comprehensive test scenarios:

1. Basic arithmetic operations
2. Exponentiation and square root
3. Modulus and rounding
4. Complex chained operations
5. Error handling scenarios
6. Negative number operations

## Contributing

Contributions are welcome! Please submit a Pull Request. For major changes, open an issue first to discuss what you would like to modify.

## License

This project is licensed under the MIT License as described in the [LICENSE](LICENSE) file.

> Document for Educational Purposes

- Project: Classic-ASP-Method-Chaining-Class
- Date: 19.01.2025 - V1.0
- Author: Anthony Burak DURSUN
- E-Mail: badursun🐌gmail.com
