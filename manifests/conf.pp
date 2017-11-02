class wordpress::conf {
    # You can change the values of these variables
    # according to your preferences

    $root_password = 'midlodza'
    $db_name = 'wordpress'
    $db_user = 'wpuser'
    $db_user_password = 'midlodza'
    $db_host = 'localhost'

    # Don't change the following variables

    # This will evaluate to wp@localhost
    $db_user_host = "${db_user}@${db_host}"

    # This will evaluate to wp@localhost/wordpress.*
    $db_user_host_db = "${db_user}@${db_host}/${db_name}.*"
}
