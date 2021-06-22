
<!doctype html>
<html lang ="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/20c0e024b3.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <title>Nauji kursai</title>
</head>
<body>
<header class="container-fluid shadow">
    <img src="img/logo.png" alt="logo" id="logo">
</header>
<main class="mx-5">
    <section >
        <h1 class="my-5 mr-5">Naujausi kursai</h1>
        <div class="container m-0">
            <div class="row">

                    <?php
                    include 'dbh.php';
                    $sql ="SELECT  coursesinfo.courseId, coursesinfo.imgSrc, coursesinfo.courseName,  coursesinfo.author,  coursesinfo.longDesc,
(SELECT ROUND(AVG(rating), 2) FROM rating WHERE courseId=coursesinfo.courseId) AS rating,
(SELECT COUNT(*) FROM comments WHERE courseId=coursesinfo.courseId) AS comments
FROM coursesinfo";


                    $result = $mysqli_connection->query($sql);
                    if ($result -> num_rows >0) {
                        while ($row =$result -> fetch_assoc()) {
                            echo "<div class='col-12 col-md-6 col-lg-4'>
                    <div class='card shadow mb-2 p-1'>
                        <img class='card-img-top' src='".$row['imgSrc']."' alt='php'>
                        <div class='card-body'>
                           <h2 class='pb-1'>".$row['courseName']."</h2>
                           <h3 class='pb-2'>".$row['author']."</h3>
                            <p class='border-top border-bottom border-secondary py-3'>".$row['longDesc']."</p>
                        </div>
                        <div class='d-flex justify-content-between px-3'>
                            <div class='rating d-inline'>
                            <p>".$row['rating']."</p>                              
                                <form class='rating-container' method='post' action=''>                                 
                                    <div class='star-widget'>
                                        <input type='radio' name='rate' id='rate-5' value='5'>
                                        <label for='rate-5' class='fas fa-star'></label>
                                        <input type='radio' name='rate' id='rate-4' value='4'>
                                        <label for='rate-4' class='fas fa-star'></label>
                                        <input type='radio' name='rate' id='rate-3' value='3'>
                                        <label for='rate-3' class='fas fa-star'></label>
                                        <input type='radio' name='rate' id='rate-2' value='2'>
                                        <label for='rate-2' class='fas fa-star'></label>
                                        <input type='radio' name='rate' id='rate-1' value='1'>
                                        <label for='rate-1' class='fas fa-star'></label>
                                    </div>
                                     <button id='rating-submit' class='btn btn-sm mt-1' type='submit'>Įvertinti</button>
                                </form>
                            </div>
                            <p><i class='fas fa-comment mr-4'></i>".$row['comments']."</p>
                        </div>
                    </div>
                </div>";

                            if (isset($_POST["rate"]))
                            {

                                $rating = $_POST["rate"];

                                $sqlInsert = "INSERT INTO rating (courseId,rating) VALUES (".$row['courseId'].",".$rating.")";


                            }

                        }
                    }
                    mysqli_close($mysqli_connection);
                    ?>

            </div>
    </section>
    <section class="mt-5">
        <h1>Sekite naujienas</h1>
        <p>Norite gauti pranešimus apie naujus kursus? Užsisakykite mūsų naujienlaiškį!</p>
        <div id="success-message"></div>
        <form method="post" action="#">
            <label for="name">Vardas:</label><br>
            <input class="form-control w-50" type="text" id="name" name="name" ><br>
            <label for="email">El. paštas:</label><br>
            <input class="form-control w-50" type="text" id="email" name="email" >
            <button id="button-submit" class="btn btn-lg mt-4" type="submit">Užsisakyti</button>
        </form>
    </section>

</main>
<footer class="container-fluid mt-5 mx-5">
    &#169; 2021 Aleksandra Caj
</footer>

<script src="js/script.js"></script>
</body>
</html>


