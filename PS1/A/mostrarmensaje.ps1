# Pau Gradoli <3
# We'll ask the user how many times it wants to repeat the phrase
Read-Host "Please state the number of times " $n
# We'll ask the user the phrase
Read-Host "And please state the phrase " $frase
# we'll make a loop to show x times a message
for ($i=$n;$i -ge $n;$i--){
    # And now, we'll write to host the phrase
    Write-Host $i "  "$frase
}
# End of line