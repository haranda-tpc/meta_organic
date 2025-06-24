# Define the database connection to be used for this model.
connection: "pr-mktg-analyt-bq-conn-analytics"

# include all the views
include: "/views/**/*.view.lkml"
include: "/explores/**/*.explore.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: meta_insights_organic_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: meta_insights_organic_default_datagroup
