<footer>
    <div class="container">
        &copy; 
        <?php 
        $fromYear = 2018; 
        $thisYear = (int)date('Y'); 
        echo $fromYear . (($fromYear != $thisYear) ? '-' . $thisYear : '');
        echo " Linda McGraw ";
        ?> 
    </div>
</footer>  
<!--
changed to preload
<script src="https://code.jquery.com/jquery-3.3.1.js"></script> 
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script> 
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script> 
<script src="themes/js/Monkedia.js"></script>-->
</body>
</html>