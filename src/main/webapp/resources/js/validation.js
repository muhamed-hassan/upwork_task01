var validExtension = '.xlsx';

function validate(form)
{
    var fileName = document.getElementById('fileContent').value;

    if (fileName.length > 0) //not empty
    {
        if (fileName.substr(fileName.length - validExtension.length, validExtension.length)
                === validExtension)
        {
            return true;
        }

        alert("Invalid file extension, only .xlsx allowed");
        return false;
    }

    alert("You have to select a file");
    return false;
}