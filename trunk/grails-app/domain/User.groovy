class User
{

      String username
      String password
      String toString()
            { "$username" }
      def constraints =
      {
            username(email:true)
            password(blank:false, password:true)
      }
      
      
}
