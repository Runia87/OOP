<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>
        Create Post
    </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
   
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-8 offset-md-2">
<form action = "/store.php" method="POST">
<div class="form-group">
<label for="">Title</label>
<input type="text" name="title" class="form-control">
<div class="form-group"><button class ="btn btn-success">Add Post</button></div>
</div>
</div>
</div>
</div>


</form>
</body>
</html>