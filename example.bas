Dim KeyPress As String
Dim KeyAscii As Integer

'$include: 'KeyConst.bas'

Do

    KeyPress = InKey$
    If (KeyPress <> "") Then
        If Len(KeyPress) > 0 Then
            KeyAscii = ASCII_16(KeyPress)
        Else: KeyAscii = 0
        End If
        Print KeyPress, KeyAscii
        KeyPress = ""
    End If

Loop

Function ASCII_16 (K As String)
    Dim A As Long
    A = Asc(Mid$(K, 1, 1))
    If Len(K) = 2 Then
        A = A + (Asc(Mid$(K, 2, 1)) * 256)
    End If
    ASCII_16 = A
End Function
