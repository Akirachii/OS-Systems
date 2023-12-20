# Prompt the user to enter the name of the company (or project)
$empresa = Read-Host "Dime el nombre de la empresa"

# Create the main directory for the company (or project)
New-Item -Path $empresa -ItemType Directory

# Create subdirectories for CSS and images within the main directory
New-Item -Path $empresa\css -ItemType Directory
New-Item -Path $empresa\imgs -ItemType Directory

# Create an empty index.html file within the main directory
New-Item -Path $empresa\index.html -ItemType File

# Create an empty style.css file within the CSS subdirectory
New-Item -Path $empresa\css\style.css -ItemType File

# Define the content for the index.html file
$index = @"
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
    </body>
</html>
"@

# Set the content of the index.html file
Set-Content -Path $empresa\index.html -Value $index

# Define the content for the style.css file
$style = @"
body { }
"@

# Set the content of the style.css file
Set-Content -Path $empresa\css\style.css -Value $style
