

      create or replace transient table ubuntu_db.ubuntu_schema.posts_table  as
      (
select value:"@AnswerCount" as AnswerCount, value:"@Body" as Body, value:"@CommentCount" as CommentCount,
value:"@ContentLicense" as ContentLicense, value:"@CreationDate"::Timestamp as CreationDate,
value:"@FavoriteCount" as FavoriteCount, value:"@Id" as Id, value:"@LastActivityDate"::Timestamp as LastActivityDate,
value:"@LastEditDate"::Timestamp as LastEditDate, value:"@LastEditorUserId" as LastEditorUserId,
value:"@OwnerUserId" as OwnerUserId, value:"@PostTypeId" as PostTypeId, value:"@Score" as Score,
value:"@Tags" as Tags, value:"@Title" as Title, value:"@ViewCount" as ViewCount
from post_xml,
lateral flatten(to_array(post_xml.src_xml:"$"))
      );
    