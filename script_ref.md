## Bash references
### Commands
> `find`
```bash
find $DIR_PATH -name $FINE_NAME -exec cp -R {} \; -exec ... {} \;
```
> `grep`

### Flow Control
> `getopts`
* get options from command line with embeded environment values.
```bash
while getopts 'a:rR'; opt do
  case $opt in
    a) # Options a form -a VAL
      A_OPT="${OPTARG}"
      ;;
    [rR]) # Option without value
      SOME_OPTION_LIKE_RECURSIVE='-R'
    *)
      exit 2;
    esac
done
```
> `stdout stderr`
* Redirect standard out(1) and standard err(2)
```bash
ifconfig 1>out.txt
ifconfig > out.txt
ifconfig -t 2>err.txt
ifconfig > out.txt 2>&1
```
