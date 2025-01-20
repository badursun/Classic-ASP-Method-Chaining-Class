<!--#include file="class.asp"--><%
'-----------------------------------------------------------------------------
' Test Cases for Method Chaining Mathematics Class
' This file contains comprehensive test scenarios for the Mathematics class
' Date: 19.01.2025
'-----------------------------------------------------------------------------
Response.CharSet = "utf-8"

' Test 0: With Line Continuation Sample
Set Math0 = New Mathematics
Response.Write "<h2>Test 0: With Line Continuation Sample</h2>"
    Response.Write Math0.Add(10)_
        .Subtract(5)_
        .Multiply(2)_
        .Divide(2)_
        .GetResult()
Set Math0 = Nothing

' Test 1: Basic Arithmetic Operations
Set Math1 = New Mathematics
Response.Write "<h2>Test 1: Basic Arithmetic Operations</h2>"
Response.Write "<p>((0 + 10 - 5) * 2) / 2 = "
Response.Write Math1.Add(10).Subtract(5).Multiply(2).Divide(2).GetResult()
Response.Write " (Expected: 5)</p>"
Set Math1 = Nothing

' Test 2: Power and Square Root
Set Math2 = New Mathematics
Response.Write "<h2>Test 2: Power and Square Root</h2>"
Response.Write "<p>√((0 + 16) ^ 2) = "
Response.Write Math2.Add(16).Power(2).SquareRoot().GetResult()
Response.Write " (Expected: 16)</p>"
Set Math2 = Nothing

' Test 3: Modulus and Ceiling
Set Math3 = New Mathematics
Response.Write "<h2>Test 3: Modulus and Ceiling</h2>"
Response.Write "<p>((0 + 17) mod 5) ceiling = "
Response.Write Math3.Add(17).Modulus(5).Ceiling().GetResult()
Response.Write " (Expected: 2)</p>"
Set Math3 = Nothing

' Test 4: Complex Operations
Set Math4 = New Mathematics
Response.Write "<h2>Test 4: Complex Operations</h2>"
Response.Write "<p>((((0 + 10) * 2) ^ 2) mod 7) = "
Response.Write Math4.Add(10).Multiply(2).Power(2).Modulus(7).GetResult()
Response.Write " (Expected: 2)</p>"
Set Math4 = Nothing

' Test 5: Division by Zero Check
Set Math5 = New Mathematics
Response.Write "<h2>Test 5: Division by Zero Check</h2>"
Response.Write "<p>((0 + 10) / 0) = "
Response.Write Math5.Add(10).Divide(0).GetResult()
Response.Write " (Expected: 10 - Division by zero protection works)</p>"
Set Math5 = Nothing

' Test 6: Operations with Negative Numbers
Set Math6 = New Mathematics
Response.Write "<h2>Test 6: Operations with Negative Numbers</h2>"
Response.Write "<p>((0 - 7) * -2) = "
Response.Write Math6.Subtract(7).Multiply(-2).GetResult()
Response.Write " (Expected: 14)</p>"
Set Math6 = Nothing

' Test 7: Rounding Operations
Set Math7 = New Mathematics
Response.Write "<h2>Test 7: Rounding Operations</h2>"
Response.Write "<p>RoundUp(3.7) = "
Response.Write Math7.Add(3.7).RoundUp().GetResult()
Response.Write " (Expected: 4)</p>"

Response.Write "<p>Ceiling(3.2) = "
Response.Write Math7.Add(3.2).Ceiling().GetResult()
Response.Write " (Expected: 4)</p>"

Response.Write "<p>Floor(3.7) = "
Response.Write Math7.Add(3.7).Floor().GetResult()
Response.Write " (Expected: 3)</p>"
Set Math7 = Nothing

' Test 8: Negative Square Root Protection
Set Math8 = New Mathematics
Response.Write "<h2>Test 8: Negative Square Root Protection</h2>"
Response.Write "<p>√(-4) = "
Response.Write Math8.Subtract(4).SquareRoot().GetResult()
Response.Write " (Expected: -4 - Negative square root protection works)</p>"
Set Math8 = Nothing
%>