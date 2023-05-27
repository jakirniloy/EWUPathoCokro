<!DOCTYPE html>
<html>
<head>
    <title>Picture Gallery</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }
        
        h1 {
            text-align: center;
        }
        
        .gallery {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
        }
        
        .gallery-item {
            max-width: 300px;
            border: 1px solid #ddd;
            border-radius: 4px;
            padding: 10px;
        }
        
        .gallery-item img {
            display: block;
            width: 100%;
            height: auto;
            border-radius: 4px;
        }
        
        .gallery-item .caption {
            text-align: center;
            margin-top: 10px;
            color: #666;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <h1>Picture Gallery</h1>
    <div class="gallery">
        <?php
        // Assuming you have a database connection
        $dbHost = 'localhost';
        $dbUser = 'root';
        $dbPass = 'blog_oop';
        $dbName = 'your_db_name';
        
        $conn = mysqli_connect($dbHost, $dbUser, $dbPass, $dbName);
        if (!$conn) {
            die("Database connection failed: " . mysqli_connect_error());
        }
        
        // Retrieve image URLs and captions from the database
        $sql = "SELECT url, caption FROM images";
        $result = mysqli_query($conn, $sql);
        
        while ($row = mysqli_fetch_assoc($result)) {
            $imageUrl = $row['url'];
            $caption = $row['caption'];
        ?>
        <div class="gallery-item">
            <img src="<?php echo $imageUrl; ?>" alt="Image">
            <div class="caption"><?php echo $caption; ?></div>
        </div>
        <?php } ?>
        
        <?php
        // Close the database connection
        mysqli_close($conn);
        ?>
    </div>
</body>
</html>