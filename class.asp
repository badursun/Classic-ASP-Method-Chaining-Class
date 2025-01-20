<%
'-----------------------------------------------------------------------------
' Method Chaining (Fluent Interface) Example in Classic ASP
' This example demonstrates method chaining usage through a math class
' Date: 19.01.2025
'-----------------------------------------------------------------------------

Class Mathematics
    Private m_number 'Variable for mathematical operations
    
    Private Sub Class_Initialize()
        m_number = 0 'Initialize with 0 when class is instantiated
    End Sub
    
    'Addition operation and returns class instance (this)
    Public Function Add(number)
        m_number = m_number + number
        Set Add = Me 'Return class instance for method chaining
    End Function
    
    'Subtraction operation and returns class instance (this)
    Public Function Subtract(number)
        m_number = m_number - number
        Set Subtract = Me
    End Function
    
    'Multiplication operation and returns class instance (this)
    Public Function Multiply(number)
        m_number = m_number * number
        Set Multiply = Me
    End Function
    
    'Division operation and returns class instance (this)
    Public Function Divide(number)
        If number <> 0 Then
            m_number = m_number / number
        End If
        Set Divide = Me
    End Function

    'Power operation and returns class instance
    Public Function Power(number)
        m_number = m_number ^ number
        Set Power = Me
    End Function

    'Square root operation and returns class instance
    Public Function SquareRoot()
        If m_number >= 0 Then
            m_number = Sqr(m_number)
        End If
        Set SquareRoot = Me
    End Function

    'Modulus operation and returns class instance
    Public Function Modulus(number)
        If number <> 0 Then
            m_number = m_number Mod number
        End If
        Set Modulus = Me
    End Function

    'Round operation and returns class instance
    Public Function RoundUp()
        m_number = Round(m_number)
        Set RoundUp = Me
    End Function

    'Ceiling operation and returns class instance
    Public Function Ceiling()
        m_number = Int(m_number)
        If m_number < 0 Then
            If m_number = Int(m_number) Then
                m_number = m_number
            Else
                m_number = Int(m_number)
            End If
        Else
            If m_number = Int(m_number) Then
                m_number = m_number
            Else
                m_number = Int(m_number) + 1
            End If
        End If
        Set Ceiling = Me
    End Function

    'Floor operation and returns class instance
    Public Function Floor()
        m_number = Int(m_number)
        Set Floor = Me
    End Function
    
    'Returns the final result
    Public Function GetResult()
        GetResult = m_number
    End Function
End Class
%>