.class public Lcom/obs/services/internal/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/internal/Constants$ObsRequestParams;,
        Lcom/obs/services/internal/Constants$CommonHeaders;
    }
.end annotation


# static fields
.field public static final ACL_AUTHENTICATED_READ:Ljava/lang/String; = "authenticated-read"

.field public static final ACL_BUCKET_OWNER_FULL_CONTROL:Ljava/lang/String; = "bucket-owner-full-control"

.field public static final ACL_BUCKET_OWNER_READ:Ljava/lang/String; = "bucket-owner-read"

.field public static final ACL_LOG_DELIVERY_WRITE:Ljava/lang/String; = "log-delivery-write"

.field public static final ACL_PRIVATE:Ljava/lang/String; = "private"

.field public static final ACL_PUBLIC_READ:Ljava/lang/String; = "public-read"

.field public static final ACL_PUBLIC_READ_DELIVERED:Ljava/lang/String; = "public-read-delivered"

.field public static final ACL_PUBLIC_READ_WRITE:Ljava/lang/String; = "public-read-write"

.field public static final ACL_PUBLIC_READ_WRITE_DELIVERED:Ljava/lang/String; = "public-read-write-delivered"

.field public static final ALLOWED_REQUEST_HTTP_HEADER_METADATA_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALLOWED_RESOURCE_PARAMTER_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALLOWED_RESPONSE_HTTP_HEADER_METADATA_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALL_USERS_URI:Ljava/lang/String; = "http://acs.amazonaws.com/groups/global/AllUsers"

.field public static final AUTHENTICATED_USERS_URI:Ljava/lang/String; = "http://acs.amazonaws.com/groups/global/AuthenticatedUsers"

.field public static final AUTHTICATION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/obs/services/model/AuthTypeEnum;",
            "Lcom/obs/services/internal/utils/AbstractAuthentication;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTENT_SHA256:Ljava/lang/String; = "content-sha256"

.field public static final CONVERTOR_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/obs/services/model/AuthTypeEnum;",
            "Lcom/obs/services/internal/IConvertor;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final DERECTIVE_COPY:Ljava/lang/String; = "COPY"

.field public static final DERECTIVE_REPLACE:Ljava/lang/String; = "REPLACE"

.field public static final DERECTIVE_REPLACE_NEW:Ljava/lang/String; = "REPLACE_NEW"

.field public static final DISABLED:Ljava/lang/String; = "Disabled"

.field public static final ENABLED:Ljava/lang/String; = "Enabled"

.field public static final EXPIRATION_DATE_FORMATTER:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

.field public static final FALSE:Ljava/lang/String; = "false"

.field public static final FS_SUMMARY_DIR_LIST:Ljava/lang/String; = "fs-summary-dir-list"

.field public static final GMT_TIMEZONE:Ljava/util/TimeZone;

.field public static final HEADERS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/obs/services/model/AuthTypeEnum;",
            "Lcom/obs/services/internal/IHeaders;",
            ">;"
        }
    .end annotation
.end field

.field public static final HEADER_DATE_FORMATTER:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss z"

.field public static final HMAC_SHA1_ALGORITHM:Ljava/lang/String; = "HmacSHA1"

.field public static final HMAC_SHA256_ALGORITHM:Ljava/lang/String; = "HmacSHA256"

.field public static final ISO_8859_1_ENCOING:Ljava/lang/String; = "ISO-8859-1"

.field public static final LOG_DELIVERY_URI:Ljava/lang/String; = "http://acs.amazonaws.com/groups/s3/LogDelivery"

.field public static final LONG_DATE_FORMATTER:Ljava/lang/String; = "yyyyMMdd\'T\'HHmmss\'Z\'"

.field public static final MAX_PART_SIZE:J = 0x140000000L

.field public static final MIN_PART_SIZE:J = 0x19000L

.field public static final NOT_NEED_HEADER_PREFIXES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final OBJECT:Ljava/lang/String; = "OBJECT"

.field public static final OBS_HEADER_META_PREFIX:Ljava/lang/String; = "x-obs-meta-"

.field public static final OBS_HEADER_PREFIX:Ljava/lang/String; = "x-obs-"

.field public static final OBS_SDK_VERSION:Ljava/lang/String; = "3.23.9"

.field public static final OEF_MARKER:Ljava/lang/String; = "oef-marker"

.field public static final PERMISSION_FULL_CONTROL:Ljava/lang/String; = "FULL_CONTROL"

.field public static final PERMISSION_FULL_CONTROL_OBJECT:Ljava/lang/String; = "FULL_CONTROL_OBJECT"

.field public static final PERMISSION_READ:Ljava/lang/String; = "READ"

.field public static final PERMISSION_READ_ACP:Ljava/lang/String; = "READ_ACP"

.field public static final PERMISSION_READ_OBJECT:Ljava/lang/String; = "READ_OBJECT"

.field public static final PERMISSION_WRITE:Ljava/lang/String; = "WRITE"

.field public static final PERMISSION_WRITE_ACP:Ljava/lang/String; = "WRITE_ACP"

.field public static final PFS:Ljava/lang/String; = "PFS"

.field public static final POSIX:Ljava/lang/String; = "POSIX"

.field public static final PROPERTY_NAME_OBS:Ljava/lang/String; = "obs"

.field public static final REQUEST_ID_HEADER:Ljava/lang/String; = "request-id"

.field public static final REQUEST_TAG:Ljava/lang/String; = "aws4_request"

.field public static final RESULTCODE_SUCCESS:Ljava/lang/String; = "0"

.field public static final SERVICE:Ljava/lang/String; = "s3"

.field public static final SHORT_DATE_FORMATTER:Ljava/lang/String; = "yyyyMMdd"

.field public static final TRUE:Ljava/lang/String; = "true"

.field public static final USER_AGENT_VALUE:Ljava/lang/String; = "obs-sdk-java/3.23.9"

.field public static final V2_HEADER_META_PREFIX:Ljava/lang/String; = "x-amz-meta-"

.field public static final V2_HEADER_PREFIX:Ljava/lang/String; = "x-amz-"

.field public static final V2_HEADER_PREFIX_CAMEL:Ljava/lang/String; = "X-Amz-"

.field public static final V4_ALGORITHM:Ljava/lang/String; = "AWS4-HMAC-SHA256"

.field public static final YES:Ljava/lang/String; = "yes"


# direct methods
.method static constructor <clinit>()V
    .registers 62

    .line 144
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/obs/services/model/AuthTypeEnum;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 145
    sget-object v2, Lcom/obs/services/model/AuthTypeEnum;->V2:Lcom/obs/services/model/AuthTypeEnum;

    invoke-static {}, Lcom/obs/services/internal/V2Headers;->getInstance()Lcom/obs/services/internal/IHeaders;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v3, Lcom/obs/services/model/AuthTypeEnum;->V4:Lcom/obs/services/model/AuthTypeEnum;

    invoke-static {}, Lcom/obs/services/internal/V2Headers;->getInstance()Lcom/obs/services/internal/IHeaders;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v4, Lcom/obs/services/model/AuthTypeEnum;->OBS:Lcom/obs/services/model/AuthTypeEnum;

    invoke-static {}, Lcom/obs/services/internal/ObsHeaders;->getInstance()Lcom/obs/services/internal/IHeaders;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/Constants;->HEADERS_MAP:Ljava/util/Map;

    .line 150
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 151
    invoke-static {}, Lcom/obs/services/internal/V2Convertor;->getInstance()Lcom/obs/services/internal/IConvertor;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-static {}, Lcom/obs/services/internal/V2Convertor;->getInstance()Lcom/obs/services/internal/IConvertor;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-static {}, Lcom/obs/services/internal/ObsConvertor;->getInstance()Lcom/obs/services/internal/IConvertor;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/Constants;->CONVERTOR_MAP:Ljava/util/Map;

    .line 156
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 157
    invoke-static {}, Lcom/obs/services/internal/utils/V2Authentication;->getInstance()Lcom/obs/services/internal/utils/AbstractAuthentication;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {}, Lcom/obs/services/internal/utils/ObsAuthentication;->getInstance()Lcom/obs/services/internal/utils/AbstractAuthentication;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/Constants;->AUTHTICATION_MAP:Ljava/util/Map;

    .line 214
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/Constants;->GMT_TIMEZONE:Ljava/util/TimeZone;

    .line 240
    const-string v0, "X-Amz-"

    const-string v1, "x-amz-"

    const-string v2, "x-obs-meta-"

    const-string v3, "x-obs-"

    const-string v4, "x-amz-meta-"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/Constants;->NOT_NEED_HEADER_PREFIXES:Ljava/util/List;

    .line 271
    const-string v24, "connection"

    const-string v25, "pragma"

    const-string v1, "content-type"

    const-string v2, "content-md5"

    const-string v3, "content-length"

    const-string v4, "content-language"

    const-string v5, "expires"

    const-string v6, "origin"

    const-string v7, "cache-control"

    const-string v8, "content-disposition"

    const-string v9, "content-encoding"

    const-string v10, "x-default-storage-class"

    const-string v11, "location"

    const-string v12, "date"

    const-string v13, "etag"

    const-string v14, "host"

    const-string v15, "last-modified"

    const-string v16, "content-range"

    const-string v17, "x-reserved"

    const-string v18, "x-reserved-indicator"

    const-string v19, "access-control-allow-origin"

    const-string v20, "access-control-allow-headers"

    const-string v21, "access-control-max-age"

    const-string v22, "access-control-allow-methods"

    const-string v23, "access-control-expose-headers"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 271
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/Constants;->ALLOWED_RESPONSE_HTTP_HEADER_METADATA_NAMES:Ljava/util/List;

    .line 278
    const-string v32, "x-obs-hash-crc64ecma"

    const-string v33, "x-amz-hash-crc64ecma"

    const-string v1, "content-type"

    const-string v2, "content-md5"

    const-string v3, "content-length"

    const-string v4, "content-language"

    const-string v5, "expires"

    const-string v6, "origin"

    const-string v7, "cache-control"

    const-string v8, "content-disposition"

    const-string v9, "content-encoding"

    const-string v10, "access-control-request-method"

    const-string v11, "access-control-request-headers"

    const-string v12, "success-action-redirect"

    const-string v13, "x-default-storage-class"

    const-string v14, "location"

    const-string v15, "date"

    const-string v16, "etag"

    const-string v17, "range"

    const-string v18, "host"

    const-string v19, "if-modified-since"

    const-string v20, "if-unmodified-since"

    const-string v21, "if-match"

    const-string v22, "if-none-match"

    const-string v23, "last-modified"

    const-string v24, "content-range"

    const-string v25, "x-cache-control"

    const-string v26, "x-obs-bucket-type"

    const-string v27, "accept-encoding"

    const-string v28, "x-amz-fs-summary-dir-list"

    const-string v29, "x-obs-fs-summary-dir-list"

    const-string v30, "x-obs-callback"

    const-string v31, "x-amz-callback"

    filled-new-array/range {v1 .. v33}, [Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 278
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/Constants;->ALLOWED_REQUEST_HTTP_HEADER_METADATA_NAMES:Ljava/util/List;

    .line 287
    const-string v60, "select"

    const-string v61, "select-type"

    const-string v1, "acl"

    const-string v2, "backtosource"

    const-string v3, "policy"

    const-string v4, "torrent"

    const-string v5, "logging"

    const-string v6, "location"

    const-string v7, "storageinfo"

    const-string v8, "quota"

    const-string v9, "storagepolicy"

    const-string v10, "storageclass"

    const-string v11, "requestpayment"

    const-string v12, "versions"

    const-string v13, "versioning"

    const-string v14, "versionid"

    const-string v15, "uploads"

    const-string v16, "uploadid"

    const-string v17, "partnumber"

    const-string v18, "website"

    const-string v19, "notification"

    const-string v20, "lifecycle"

    const-string v21, "deletebucket"

    const-string v22, "delete"

    const-string v23, "cors"

    const-string v24, "restore"

    const-string v25, "tagging"

    const-string v26, "replication"

    const-string v27, "metadata"

    const-string v28, "encryption"

    const-string v29, "directcoldaccess"

    const-string v30, "mirrorrefresh"

    const-string v31, "mirrorbacktosource"

    const-string v32, "obsbucketalias"

    const-string v33, "obsalias"

    const-string v34, "replication_progress"

    const-string v35, "inventory"

    const-string v36, "append"

    const-string v37, "position"

    const-string v38, "truncate"

    const-string v39, "modify"

    const-string v40, "rename"

    const-string v41, "length"

    const-string v42, "name"

    const-string v43, "fileinterface"

    const-string v44, "readahead"

    const-string v45, "response-content-type"

    const-string v46, "response-content-language"

    const-string v47, "response-expires"

    const-string v48, "response-cache-control"

    const-string v49, "response-content-disposition"

    const-string v50, "response-content-encoding"

    const-string v51, "x-image-save-bucket"

    const-string v52, "x-image-save-object"

    const-string v53, "x-image-process"

    const-string v54, "x-obs-sse-kms-key-project-id"

    const-string v55, "x-oss-process"

    const-string v56, "ignore-sign-in-query"

    const-string v57, "listcontentsummary"

    const-string v58, "multilistcontentsummary"

    const-string v59, "getcontentsummary"

    filled-new-array/range {v1 .. v61}, [Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 287
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/Constants;->ALLOWED_RESOURCE_PARAMTER_NAMES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
