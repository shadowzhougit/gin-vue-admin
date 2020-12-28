echo ##########Formatting code#########################################
go fmt ./ && go vet ./
echo ##########Format the code successfully############################
echo ##########Compiling gva.exe#######################################
go build -o gva cmd/main.go
echo ##########Successfully compiled gva.exe###########################
echo ##########Initializing data using gva.exe#########################
./gva initdb
echo ##########Use gva.exe to initialize data successfully#############
echo ##########Deleting gva.exe########################################
rm -rf gva
echo ##########Deleting gva.exe successfully###########################