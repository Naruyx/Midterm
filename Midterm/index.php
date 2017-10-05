<?php
    require_once('database.php');

    $customerID = '1004';

    $query = "SELECT products.name,registrations.productCode
                FROM products JOIN registrations ON products.productCode = registrations.productCode
                WHERE customerID = '1004'";
    $stmt = $conn->prepare($query);
    $stmt->execute();

    $stmt->store_result();
 
    $stmt->bind_result($name,$productCode);
  
?>

    <!-- header information comes from include file -->
<head>
    <link rel="stylesheet" type="text/css" href="lab7.css" />
</head>    
    
<body>
    <div id ="page">
        <div id="header">
            <h1>Products</h1>
        </div>
        
        <div id="main">
            
            <h1>Product Code List</h1>
            
            <div id="content">
                <!-- display a list of orders -->
                
                <table>
                    <tr>
                        <th>Product Name</th>
                        <th>Product Code</th>
                    </tr>
                    <?php while ($stmt ->fetch()) { ?>
                    <tr>
                        <td><?php echo $name; ?></td>
                        <td><?php echo $productCode; ?></td>
                    </tr>
                    <!-- result set is available -->
                    
                    <?php }
                    
        $stmt ->free_result();
        $conn ->close();?>
                </table>
                <br>
            </div>
        </div>
        <div id="footer">
            <p>&copy; <?php echo date ("Y"); ?> Columbus State University</p>
        </div>
    </div>
</body>    