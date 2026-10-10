# API Interaction Summary

**Name:** Lakshika Dhasmana  
**Roll Number:** 2601730342

## 1. Introduction
An Application Programming Interface (API) allows applications to exchange data. A REST API commonly uses HTTP requests and returns data in JSON format.

## 2. GitHub REST API
The GitHub REST API provides public information about a GitHub user, including their username, display name, public repository count, follower count, and account creation date.

Endpoint: `https://api.github.com/users/lakshika67`

## 3. JSONPlaceholder API
JSONPlaceholder is a sample REST API used for practice and testing.

Endpoint: `https://jsonplaceholder.typicode.com/posts`

The posts endpoint returns sample post objects containing fields such as `userId`, `id`, `title`, and `body`.

## 4. HTTP Status Codes
- **200 OK:** The request succeeded.
- **404 Not Found:** The requested resource was not found.
- **403 Forbidden:** The server refused the request, which can occur because of access or rate limits.

## 5. JSON
JSON (JavaScript Object Notation) is a text format used to exchange structured data. Tools such as `jq` can extract selected fields from JSON responses.

## 6. Evidence and Results
The files `github_profile.json` and `sample_posts.json` should contain actual responses from the API endpoints above. Screenshots and verified results will be added after running the requests.

## 7. Conclusion
This exercise demonstrates how REST APIs provide data, how JSON structures responses, and how API results can be documented in a developer portfolio.
