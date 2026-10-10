# API Interaction Summary

## What is a REST API?
A REST API allows applications to communicate over HTTP and exchange data. It commonly uses methods such as GET to retrieve information from a server.

## HTTP Status Codes
- 200 OK: The request was successful.
- 404 Not Found: The requested resource could not be found.

## GitHub API and JSONPlaceholder
The GitHub API provides public profile information in JSON format. JSONPlaceholder provides sample post data for testing API requests.

## jq Filter Explanation
The filter used is:
`{name: .name, repos: .public_repos, followers: .followers, joined: .created_at}`

- `.name`: extracts the profile name.
- `.public_repos`: extracts the number of public repositories.
- `.followers`: extracts the follower count.
- `.created_at`: extracts the account creation date.

The `jq` tool reads JSON and selects the required fields.
