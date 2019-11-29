rm -rf /Users/computer/code/neo4j-community-3.5.13/data/databases/graph.db
/Users/computer/code/neo4j-community-3.5.13/bin/neo4j-import \
--into /Users/computer/code/neo4j-community-3.5.13/data/databases/graph.db \
--id-type string \
--nodes:Post csvs/posts.csv \
--nodes:User csvs/users.csv \
--nodes:Tag csvs/tags.csv \
--relationships:PARENT_OF csvs/posts_rel.csv \
--relationships:HAS_TAG csvs/tags_posts_rel.csv \
--relationships:POSTED csvs/users_posts_rel.csv
/Users/computer/code/neo4j-community-3.5.13/bin/neo4j restart