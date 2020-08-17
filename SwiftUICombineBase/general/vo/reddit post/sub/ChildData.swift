// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let childData = try? newJSONDecoder().decode(ChildData.self, from: jsonData)

import Foundation

// MARK: - ChildData
public struct ChildData: Codable {
    public let approvedAtUTC: String?
    public let subreddit: Subreddit?
    public let selftext, authorFullname: String?
    public let saved: Bool?
    public let modReasonTitle: String?
    public let gilded: Int?
    public let clicked: Bool?
    public let title: String?
    public let linkFlairRichtext: [String]?
    public let subredditNamePrefixed: SubredditNamePrefixed?
    public let hidden: Bool?
    public let pwls: Int?
    public let linkFlairCSSClass: String?
    public let downs: Int?
    public let topAwardedType: String?
    public let hideScore: Bool?
    public let name: String?
    public let quarantine: Bool?
    public let linkFlairTextColor: LinkFlairTextColor?
    public let upvoteRatio: Double?
    public let authorFlairBackgroundColor: String?
    public let subredditType: SubredditType?
    public let ups, totalAwardsReceived: Int?
    public let mediaEmbed: Gildings?
    public let authorFlairTemplateID: String?
    public let isOriginalContent: Bool?
    public let userReports: [String]?
    public let secureMedia: String?
    public let isRedditMediaDomain, isMeta: Bool?
    public let category: String?
    public let secureMediaEmbed: Gildings?
    public let linkFlairText: String?
    public let canModPost: Bool?
    public let score: Int?
    public let approvedBy: String?
    public let authorPremium: Bool?
    public let thumbnail: String?
    public let edited: Edited?
    public let authorFlairCSSClass: String?
    public let authorFlairRichtext: [String]?
    public let gildings: Gildings?
    public let contentCategories: String?
    public let isSelf: Bool?
    public let modNote: String?
    public let created: Int?
    public let linkFlairType: FlairType?
    public let wls: Int?
    public let removedByCategory, bannedBy: String?
    public let authorFlairType: FlairType?
    public let domain: Domain?
    public let allowLiveComments: Bool?
    public let selftextHTML: String?
    public let likes, suggestedSort, bannedAtUTC, viewCount: String?
    public let archived, noFollow, isCrosspostable, pinned: Bool?
    public let over18: Bool?
    public let allAwardings, awarders: [String]?
    public let mediaOnly, canGild, spoiler, locked: Bool?
    public let authorFlairText: String?
    public let treatmentTags: [String]?
    public let visited: Bool?
    public let removedBy, numReports, distinguished: String?
    public let subredditID: SubredditID?
    public let modReasonBy, removalReason: String?
    public let linkFlairBackgroundColor, id: String?
    public let isRobotIndexable: Bool?
    public let reportReasons: String?
    public let author: String?
    public let discussionType: String?
    public let numComments: Int?
    public let sendReplies: Bool?
    public let whitelistStatus: WhitelistStatus?
    public let contestMode: Bool?
    public let modReports: [String]?
    public let authorPatreonFlair: Bool?
    public let authorFlairTextColor: String?
    public let permalink: String?
    public let parentWhitelistStatus: WhitelistStatus?
    public let stickied: Bool?
    public let url: String?
    public let subredditSubscribers, createdUTC, numCrossposts: Int?
    public let media: String?
    public let isVideo: Bool?
    public let urlOverriddenByDest: String?
    public let mediaMetadata: MediaMetadata?

    enum CodingKeys: String, CodingKey {
        case approvedAtUTC = "approved_at_utc"
        case subreddit, selftext
        case authorFullname = "author_fullname"
        case saved
        case modReasonTitle = "mod_reason_title"
        case gilded, clicked, title
        case linkFlairRichtext = "link_flair_richtext"
        case subredditNamePrefixed = "subreddit_name_prefixed"
        case hidden, pwls
        case linkFlairCSSClass = "link_flair_css_class"
        case downs
        case topAwardedType = "top_awarded_type"
        case hideScore = "hide_score"
        case name, quarantine
        case linkFlairTextColor = "link_flair_text_color"
        case upvoteRatio = "upvote_ratio"
        case authorFlairBackgroundColor = "author_flair_background_color"
        case subredditType = "subreddit_type"
        case ups
        case totalAwardsReceived = "total_awards_received"
        case mediaEmbed = "media_embed"
        case authorFlairTemplateID = "author_flair_template_id"
        case isOriginalContent = "is_original_content"
        case userReports = "user_reports"
        case secureMedia = "secure_media"
        case isRedditMediaDomain = "is_reddit_media_domain"
        case isMeta = "is_meta"
        case category
        case secureMediaEmbed = "secure_media_embed"
        case linkFlairText = "link_flair_text"
        case canModPost = "can_mod_post"
        case score
        case approvedBy = "approved_by"
        case authorPremium = "author_premium"
        case thumbnail, edited
        case authorFlairCSSClass = "author_flair_css_class"
        case authorFlairRichtext = "author_flair_richtext"
        case gildings
        case contentCategories = "content_categories"
        case isSelf = "is_self"
        case modNote = "mod_note"
        case created
        case linkFlairType = "link_flair_type"
        case wls
        case removedByCategory = "removed_by_category"
        case bannedBy = "banned_by"
        case authorFlairType = "author_flair_type"
        case domain
        case allowLiveComments = "allow_live_comments"
        case selftextHTML = "selftext_html"
        case likes
        case suggestedSort = "suggested_sort"
        case bannedAtUTC = "banned_at_utc"
        case viewCount = "view_count"
        case archived
        case noFollow = "no_follow"
        case isCrosspostable = "is_crosspostable"
        case pinned
        case over18 = "over_18"
        case allAwardings = "all_awardings"
        case awarders
        case mediaOnly = "media_only"
        case canGild = "can_gild"
        case spoiler, locked
        case authorFlairText = "author_flair_text"
        case treatmentTags = "treatment_tags"
        case visited
        case removedBy = "removed_by"
        case numReports = "num_reports"
        case distinguished
        case subredditID = "subreddit_id"
        case modReasonBy = "mod_reason_by"
        case removalReason = "removal_reason"
        case linkFlairBackgroundColor = "link_flair_background_color"
        case id
        case isRobotIndexable = "is_robot_indexable"
        case reportReasons = "report_reasons"
        case author
        case discussionType = "discussion_type"
        case numComments = "num_comments"
        case sendReplies = "send_replies"
        case whitelistStatus = "whitelist_status"
        case contestMode = "contest_mode"
        case modReports = "mod_reports"
        case authorPatreonFlair = "author_patreon_flair"
        case authorFlairTextColor = "author_flair_text_color"
        case permalink
        case parentWhitelistStatus = "parent_whitelist_status"
        case stickied, url
        case subredditSubscribers = "subreddit_subscribers"
        case createdUTC = "created_utc"
        case numCrossposts = "num_crossposts"
        case media
        case isVideo = "is_video"
        case urlOverriddenByDest = "url_overridden_by_dest"
        case mediaMetadata = "media_metadata"
    }

    public init(approvedAtUTC: String?, subreddit: Subreddit?, selftext: String?, authorFullname: String?, saved: Bool?, modReasonTitle: String?, gilded: Int?, clicked: Bool?, title: String?, linkFlairRichtext: [String]?, subredditNamePrefixed: SubredditNamePrefixed?, hidden: Bool?, pwls: Int?, linkFlairCSSClass: String?, downs: Int?, topAwardedType: String?, hideScore: Bool?, name: String?, quarantine: Bool?, linkFlairTextColor: LinkFlairTextColor?, upvoteRatio: Double?, authorFlairBackgroundColor: String?, subredditType: SubredditType?, ups: Int?, totalAwardsReceived: Int?, mediaEmbed: Gildings?, authorFlairTemplateID: String?, isOriginalContent: Bool?, userReports: [String]?, secureMedia: String?, isRedditMediaDomain: Bool?, isMeta: Bool?, category: String?, secureMediaEmbed: Gildings?, linkFlairText: String?, canModPost: Bool?, score: Int?, approvedBy: String?, authorPremium: Bool?, thumbnail: String?, edited: Edited?, authorFlairCSSClass: String?, authorFlairRichtext: [String]?, gildings: Gildings?, contentCategories: String?, isSelf: Bool?, modNote: String?, created: Int?, linkFlairType: FlairType?, wls: Int?, removedByCategory: String?, bannedBy: String?, authorFlairType: FlairType?, domain: Domain?, allowLiveComments: Bool?, selftextHTML: String?, likes: String?, suggestedSort: String?, bannedAtUTC: String?, viewCount: String?, archived: Bool?, noFollow: Bool?, isCrosspostable: Bool?, pinned: Bool?, over18: Bool?, allAwardings: [String]?, awarders: [String]?, mediaOnly: Bool?, canGild: Bool?, spoiler: Bool?, locked: Bool?, authorFlairText: String?, treatmentTags: [String]?, visited: Bool?, removedBy: String?, numReports: String?, distinguished: String?, subredditID: SubredditID?, modReasonBy: String?, removalReason: String?, linkFlairBackgroundColor: String?, id: String?, isRobotIndexable: Bool?, reportReasons: String?, author: String?, discussionType: String?, numComments: Int?, sendReplies: Bool?, whitelistStatus: WhitelistStatus?, contestMode: Bool?, modReports: [String]?, authorPatreonFlair: Bool?, authorFlairTextColor: String?, permalink: String?, parentWhitelistStatus: WhitelistStatus?, stickied: Bool?, url: String?, subredditSubscribers: Int?, createdUTC: Int?, numCrossposts: Int?, media: String?, isVideo: Bool?, urlOverriddenByDest: String?, mediaMetadata: MediaMetadata?) {
        self.approvedAtUTC = approvedAtUTC
        self.subreddit = subreddit
        self.selftext = selftext
        self.authorFullname = authorFullname
        self.saved = saved
        self.modReasonTitle = modReasonTitle
        self.gilded = gilded
        self.clicked = clicked
        self.title = title
        self.linkFlairRichtext = linkFlairRichtext
        self.subredditNamePrefixed = subredditNamePrefixed
        self.hidden = hidden
        self.pwls = pwls
        self.linkFlairCSSClass = linkFlairCSSClass
        self.downs = downs
        self.topAwardedType = topAwardedType
        self.hideScore = hideScore
        self.name = name
        self.quarantine = quarantine
        self.linkFlairTextColor = linkFlairTextColor
        self.upvoteRatio = upvoteRatio
        self.authorFlairBackgroundColor = authorFlairBackgroundColor
        self.subredditType = subredditType
        self.ups = ups
        self.totalAwardsReceived = totalAwardsReceived
        self.mediaEmbed = mediaEmbed
        self.authorFlairTemplateID = authorFlairTemplateID
        self.isOriginalContent = isOriginalContent
        self.userReports = userReports
        self.secureMedia = secureMedia
        self.isRedditMediaDomain = isRedditMediaDomain
        self.isMeta = isMeta
        self.category = category
        self.secureMediaEmbed = secureMediaEmbed
        self.linkFlairText = linkFlairText
        self.canModPost = canModPost
        self.score = score
        self.approvedBy = approvedBy
        self.authorPremium = authorPremium
        self.thumbnail = thumbnail
        self.edited = edited
        self.authorFlairCSSClass = authorFlairCSSClass
        self.authorFlairRichtext = authorFlairRichtext
        self.gildings = gildings
        self.contentCategories = contentCategories
        self.isSelf = isSelf
        self.modNote = modNote
        self.created = created
        self.linkFlairType = linkFlairType
        self.wls = wls
        self.removedByCategory = removedByCategory
        self.bannedBy = bannedBy
        self.authorFlairType = authorFlairType
        self.domain = domain
        self.allowLiveComments = allowLiveComments
        self.selftextHTML = selftextHTML
        self.likes = likes
        self.suggestedSort = suggestedSort
        self.bannedAtUTC = bannedAtUTC
        self.viewCount = viewCount
        self.archived = archived
        self.noFollow = noFollow
        self.isCrosspostable = isCrosspostable
        self.pinned = pinned
        self.over18 = over18
        self.allAwardings = allAwardings
        self.awarders = awarders
        self.mediaOnly = mediaOnly
        self.canGild = canGild
        self.spoiler = spoiler
        self.locked = locked
        self.authorFlairText = authorFlairText
        self.treatmentTags = treatmentTags
        self.visited = visited
        self.removedBy = removedBy
        self.numReports = numReports
        self.distinguished = distinguished
        self.subredditID = subredditID
        self.modReasonBy = modReasonBy
        self.removalReason = removalReason
        self.linkFlairBackgroundColor = linkFlairBackgroundColor
        self.id = id
        self.isRobotIndexable = isRobotIndexable
        self.reportReasons = reportReasons
        self.author = author
        self.discussionType = discussionType
        self.numComments = numComments
        self.sendReplies = sendReplies
        self.whitelistStatus = whitelistStatus
        self.contestMode = contestMode
        self.modReports = modReports
        self.authorPatreonFlair = authorPatreonFlair
        self.authorFlairTextColor = authorFlairTextColor
        self.permalink = permalink
        self.parentWhitelistStatus = parentWhitelistStatus
        self.stickied = stickied
        self.url = url
        self.subredditSubscribers = subredditSubscribers
        self.createdUTC = createdUTC
        self.numCrossposts = numCrossposts
        self.media = media
        self.isVideo = isVideo
        self.urlOverriddenByDest = urlOverriddenByDest
        self.mediaMetadata = mediaMetadata
    }
}
