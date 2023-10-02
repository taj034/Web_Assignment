<?php include 'inc/header.php' ?>
<?php include 'inc/sidebar.php' ?>

        <div class="grid_10">
        
            <div class="box round first grid">
                <h2>Update Social Media</h2>

<?php 
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $fb  = $fm->validation($_POST['fb']);
    $tw = $fm->validation($_POST['tw']);
    $ln = $fm->validation($_POST['ln']);
    $gh = $fm->validation($_POST['gh']);
    $fb  = mysqli_real_escape_string($db->link, $fb);
    $tw  = mysqli_real_escape_string($db->link, $tw);
    $ln  = mysqli_real_escape_string($db->link, $ln);
    $gh  = mysqli_real_escape_string($db->link, $gh);

    if ($fb == "" || $tw == "" || $ln == "" || $gh == "") {
        echo "<span class='error'>Field Must Not Be Empty.</span>";
    } else {
        $query = "UPDATE tbl_social
            SET
            fb    = '$fb',
            tw    = '$tw',
            ln    = '$ln',
            gh    = '$gh'

            WHERE id  = '1'";
        $updated_row = $db->update($query);
        if ($updated_row) {
            echo '<span class="success">Data Updated Successfully.</span>';
        } else {
            echo '<span class="error">Data Not Updated.</span>';
        }
    }
}
    ?>




            <div class="block">               

<?php 
                    $query = "SELECT * FROM tbl_social WHERE id ='1'";
                    $social_media = $db->select($query);
                    if ($social_media) {
                        while ($result = $social_media->fetch_assoc()) {
                            ?>


                 <form action="" method="POST">
                    <table class="form">                    
                        <tr>
                            <td>
                                <label>Facebook</label>
                            </td>
                            <td>
                                <input type="text" name="fb" value="<?php echo $result['fb'] ?>" class="medium" />
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <label>Twitter</label>
                            </td>
                            <td>
                                <input type="text" name="tw" value="<?php echo $result['tw'] ?>" class="medium" />
                            </td>
                        </tr>
                        
                         <tr>
                            <td>
                                <label>LinkedIn</label>
                            </td>
                            <td>
                                <input type="text" name="ln" value="<?php echo $result['ln'] ?>" class="medium" />
                            </td>
                        </tr>
                        
                         <tr>
                            <td>
                                <label>Github</label>
                            </td>
                            <td>
                                <input type="text" name="gh" value="<?php echo $result['gh'] ?>" class="medium" />
                            </td>
                        </tr>
                        
                         <tr>
                            <td></td>
                            <td>
                                <input type="submit" name="submit" Value="Update" />
                            </td>
                        </tr>
                    </table>
                    </form>
                     <?php
                        }
                    } ?>
                </div>

               
            </div>
        </div>

        <?php include 'inc/footer.php' ?>
