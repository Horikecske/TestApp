//
//  RepositoriesResponse.swift
//  TestApp
//
//  Created by Nyilas Zsombor on 19/02/2024.
//

import Foundation

// MARK: - RepositoriesResponse
struct RepositoriesResponse: Codable, Equatable {
    let totalCount: Int?
    let incompleteResults: Bool?
    let items: [Repository]?

    enum CodingKeys: String, CodingKey {
        case totalCount = "total_count"
        case incompleteResults = "incomplete_results"
        case items = "items"
    }
    
}

// MARK: - Repository
struct Repository: Codable, Equatable, Hashable {
    let id: Int?
    let nodeID: String?
    let name: String?
    let fullName: String?
    let owner: Owner?
    let itemPrivate: Bool?
    let htmlURL: String?
    let description: String?
    let fork: Bool?
    let url: String?
    let createdAt: String?
    let updatedAt: String?
    let pushedAt: String?
    let homepage: String?
    let size: Int?
    let stargazersCount: Int?
    let watchersCount: Int?
    let language: String?
    let forksCount: Int?
    let openIssuesCount: Int?
    let masterBranch: String?
    let defaultBranch: String?
    let score: Int?
    let archiveURL: String?
    let assigneesURL: String?
    let blobsURL: String?
    let branchesURL: String?
    let collaboratorsURL: String?
    let commentsURL: String?
    let commitsURL: String?
    let compareURL: String?
    let contentsURL: String?
    let contributorsURL: String?
    let deploymentsURL: String?
    let downloadsURL: String?
    let eventsURL: String?
    let forksURL: String?
    let gitCommitsURL: String?
    let gitRefsURL: String?
    let gitTagsURL: String?
    let gitURL: String?
    let issueCommentURL: String?
    let issueEventsURL: String?
    let issuesURL: String?
    let keysURL: String?
    let labelsURL: String?
    let languagesURL: String?
    let mergesURL: String?
    let milestonesURL: String?
    let notificationsURL: String?
    let pullsURL: String?
    let releasesURL: String?
    let sshURL: String?
    let stargazersURL: String?
    let statusesURL: String?
    let subscribersURL: String?
    let subscriptionURL: String?
    let tagsURL: String?
    let teamsURL: String?
    let treesURL: String?
    let cloneURL: String?
    let mirrorURL: String?
    let hooksURL: String?
    let svnURL: String?
    let forks: Int?
    let openIssues: Int?
    let watchers: Int?
    let hasIssues: Bool?
    let hasProjects: Bool?
    let hasPages: Bool?
    let hasWiki: Bool?
    let hasDownloads: Bool?
    let archived: Bool?
    let disabled: Bool?
    let visibility: String?
    let license: License?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case nodeID = "node_id"
        case name = "name"
        case fullName = "full_name"
        case owner = "owner"
        case itemPrivate = "private"
        case htmlURL = "html_url"
        case description = "description"
        case fork = "fork"
        case url = "url"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case pushedAt = "pushed_at"
        case homepage = "homepage"
        case size = "size"
        case stargazersCount = "stargazers_count"
        case watchersCount = "watchers_count"
        case language = "language"
        case forksCount = "forks_count"
        case openIssuesCount = "open_issues_count"
        case masterBranch = "master_branch"
        case defaultBranch = "default_branch"
        case score = "score"
        case archiveURL = "archive_url"
        case assigneesURL = "assignees_url"
        case blobsURL = "blobs_url"
        case branchesURL = "branches_url"
        case collaboratorsURL = "collaborators_url"
        case commentsURL = "comments_url"
        case commitsURL = "commits_url"
        case compareURL = "compare_url"
        case contentsURL = "contents_url"
        case contributorsURL = "contributors_url"
        case deploymentsURL = "deployments_url"
        case downloadsURL = "downloads_url"
        case eventsURL = "events_url"
        case forksURL = "forks_url"
        case gitCommitsURL = "git_commits_url"
        case gitRefsURL = "git_refs_url"
        case gitTagsURL = "git_tags_url"
        case gitURL = "git_url"
        case issueCommentURL = "issue_comment_url"
        case issueEventsURL = "issue_events_url"
        case issuesURL = "issues_url"
        case keysURL = "keys_url"
        case labelsURL = "labels_url"
        case languagesURL = "languages_url"
        case mergesURL = "merges_url"
        case milestonesURL = "milestones_url"
        case notificationsURL = "notifications_url"
        case pullsURL = "pulls_url"
        case releasesURL = "releases_url"
        case sshURL = "ssh_url"
        case stargazersURL = "stargazers_url"
        case statusesURL = "statuses_url"
        case subscribersURL = "subscribers_url"
        case subscriptionURL = "subscription_url"
        case tagsURL = "tags_url"
        case teamsURL = "teams_url"
        case treesURL = "trees_url"
        case cloneURL = "clone_url"
        case mirrorURL = "mirror_url"
        case hooksURL = "hooks_url"
        case svnURL = "svn_url"
        case forks = "forks"
        case openIssues = "open_issues"
        case watchers = "watchers"
        case hasIssues = "has_issues"
        case hasProjects = "has_projects"
        case hasPages = "has_pages"
        case hasWiki = "has_wiki"
        case hasDownloads = "has_downloads"
        case archived = "archived"
        case disabled = "disabled"
        case visibility = "visibility"
        case license = "license"
    }
    
    static func exampleData() -> Repository {
            return Repository(
                id: nil,
                nodeID: nil,
                name: "Tetris",
                fullName: nil,
                owner: Owner.exampleData(),
                itemPrivate: nil,
                htmlURL: "https://github.com/dtrupenn/Tetris",
                description: "A C implementation of Tetris using Pennsim through LC4",
                fork: nil,
                url: nil,
                createdAt: "2012-01-01T00:31:50Z",
                updatedAt: "2013-01-05T17:58:47Z",
                pushedAt: nil,
                homepage: nil,
                size: nil,
                stargazersCount: 1,
                watchersCount: nil,
                language: nil,
                forksCount: 0,
                openIssuesCount: nil,
                masterBranch: nil,
                defaultBranch: nil,
                score: nil,
                archiveURL: nil,
                assigneesURL: nil,
                blobsURL: nil,
                branchesURL: nil,
                collaboratorsURL: nil,
                commentsURL: nil,
                commitsURL: nil,
                compareURL: nil,
                contentsURL: nil,
                contributorsURL: nil,
                deploymentsURL: nil,
                downloadsURL: nil,
                eventsURL: nil,
                forksURL: nil,
                gitCommitsURL: nil,
                gitRefsURL: nil,
                gitTagsURL: nil,
                gitURL: nil,
                issueCommentURL: nil,
                issueEventsURL: nil,
                issuesURL: nil,
                keysURL: nil,
                labelsURL: nil,
                languagesURL: nil,
                mergesURL: nil,
                milestonesURL: nil,
                notificationsURL: nil,
                pullsURL: nil,
                releasesURL: nil,
                sshURL: nil,
                stargazersURL: nil,
                statusesURL: nil,
                subscribersURL: nil,
                subscriptionURL: nil,
                tagsURL: nil,
                teamsURL: nil,
                treesURL: nil,
                cloneURL: nil,
                mirrorURL: nil,
                hooksURL: nil,
                svnURL: nil,
                forks: nil,
                openIssues: nil,
                watchers: nil,
                hasIssues: nil,
                hasProjects: nil,
                hasPages: nil,
                hasWiki: nil,
                hasDownloads: nil,
                archived: nil,
                disabled: nil,
                visibility: nil,
                license: nil
            )
    }
}

// MARK: - License
struct License: Codable, Equatable, Hashable {
    let key: String?
    let name: String?
    let url: String?
    let spdxID: String?
    let nodeID: String?
    let htmlURL: String?

    enum CodingKeys: String, CodingKey {
        case key = "key"
        case name = "name"
        case url = "url"
        case spdxID = "spdx_id"
        case nodeID = "node_id"
        case htmlURL = "html_url"
    }
}

// MARK: - Owner
struct Owner: Codable, Equatable, Hashable {
    let login: String?
    let id: Int?
    let nodeID: String?
    let avatarURL: String?
    let gravatarID: String?
    let url: String?
    let receivedEventsURL: String?
    let type: String?
    let htmlURL: String?
    let followersURL: String?
    let followingURL: String?
    let gistsURL: String?
    let starredURL: String?
    let subscriptionsURL: String?
    let organizationsURL: String?
    let reposURL: String?
    let eventsURL: String?
    let siteAdmin: Bool?

    enum CodingKeys: String, CodingKey {
        case login = "login"
        case id = "id"
        case nodeID = "node_id"
        case avatarURL = "avatar_url"
        case gravatarID = "gravatar_id"
        case url = "url"
        case receivedEventsURL = "received_events_url"
        case type = "type"
        case htmlURL = "html_url"
        case followersURL = "followers_url"
        case followingURL = "following_url"
        case gistsURL = "gists_url"
        case starredURL = "starred_url"
        case subscriptionsURL = "subscriptions_url"
        case organizationsURL = "organizations_url"
        case reposURL = "repos_url"
        case eventsURL = "events_url"
        case siteAdmin = "site_admin"
    }
    
    static func exampleData() -> Owner {
        return Owner(
            login: "dtrupenn",
            id: nil,
            nodeID: nil,
            avatarURL: "https://secure.gravatar.com/avatar/e7956084e75f239de85d3a31bc172ace?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
            gravatarID: nil,
            url: nil,
            receivedEventsURL: nil,
            type: nil,
            htmlURL: "https://github.com/octocat",
            followersURL: nil,
            followingURL: nil,
            gistsURL: nil,
            starredURL: nil,
            subscriptionsURL: nil,
            organizationsURL: nil,
            reposURL: nil,
            eventsURL: nil,
            siteAdmin: nil
        )
    }
}
