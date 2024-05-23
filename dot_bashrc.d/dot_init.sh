THIS_DIR="$(dirname "${BASH_SOURCE[0]:-$0}")"

for BASHRCD_FILE in $(ls ${THIS_DIR}/*.sh); do
	source $BASHRCD_FILE
done
