<?PHP
/*
 * Connection class 
 * Using thid class to be used in the connection system 
*/
class this_con{
    public $con_user = "root"; // username
    public $con_pass = "root"; // password

    public function get_con_user(){
        return $this->con_user; // return username
    }
    public function get_con_pass(){
        return $this->con_pass; // return password
    }
}
?>
