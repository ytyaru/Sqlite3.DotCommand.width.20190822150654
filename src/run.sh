SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

# デフォルト
sqlite3 :memory: \
".headers on" \
".mode column" \
"select 1 as id, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' as alphabet;"

# 0
sqlite3 :memory: \
".headers on" \
".mode column" \
".width 0" \
"select 1 as id, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' as alphabet;"
# 1
sqlite3 :memory: \
".headers on" \
".mode column" \
".width 1" \
"select 1 as id, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' as alphabet;"
# 1 4
sqlite3 :memory: \
".headers on" \
".mode column" \
".width 1 4" \
"select 1 as id, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' as alphabet;"
# -1
sqlite3 :memory: \
".headers on" \
".mode column" \
".width -1" \
"select 1 as id, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' as alphabet;"
# -4 -30
sqlite3 :memory: \
".headers on" \
".mode column" \
".width -4 -30" \
"select 1 as id, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' as alphabet;"
 
