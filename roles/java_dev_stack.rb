# Name of the role should match the name of the file
name "java_dev_stack"

override_attributes(
    "mysql" => {
        "server_root_password" => 'toor999!',
        "server_repl_password" => 'toor999!',
        "server_debian_password" => 'toor999!'
    })

# Run list function we mentioned earlier
run_list(
	"apt",
	"desktop",
    "create_user",
    "oracle_java7",
    "ark", "jboss", "mysql"
)
