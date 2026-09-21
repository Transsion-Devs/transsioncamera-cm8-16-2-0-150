.class public abstract Lcom/obs/services/internal/service/AclHeaderConvertor;
.super Lcom/obs/services/internal/service/AbstractRequestConvertor;
.source "SourceFile"


# static fields
.field private static final log:Lcom/obs/log/ILogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-string v0, "com.obs.services.ObsClient"

    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/String;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/service/AclHeaderConvertor;->log:Lcom/obs/log/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCredential(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 156
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "/"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "region"

    .line 157
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "s3"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "aws4_request"

    .line 158
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected prepareRESTHeaderAcl(Ljava/lang/String;Ljava/util/Map;Lcom/obs/services/model/AccessControlList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/obs/services/model/AccessControlList;",
            ")Z"
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/obs/services/model/AuthTypeEnum;->OBS:Lcom/obs/services/model/AuthTypeEnum;

    if-ne v0, v1, :cond_11

    .line 151
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/internal/service/AclHeaderConvertor;->prepareRESTHeaderAclForOBS(Ljava/lang/String;Ljava/util/Map;Lcom/obs/services/model/AccessControlList;)Z

    move-result p0

    return p0

    .line 152
    :cond_11
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/internal/service/AclHeaderConvertor;->prepareRESTHeaderAclForV2(Ljava/lang/String;Ljava/util/Map;Lcom/obs/services/model/AccessControlList;)Z

    move-result p0

    return p0
.end method

.method prepareRESTHeaderAclForOBS(Ljava/lang/String;Ljava/util/Map;Lcom/obs/services/model/AccessControlList;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/obs/services/model/AccessControlList;",
            ")Z"
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PRIVATE:Lcom/obs/services/model/AccessControlList;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_8

    .line 70
    const-string p3, "private"

    goto :goto_43

    .line 71
    :cond_8
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PUBLIC_READ:Lcom/obs/services/model/AccessControlList;

    if-ne p3, v0, :cond_f

    .line 72
    const-string p3, "public-read"

    goto :goto_43

    .line 73
    :cond_f
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PUBLIC_READ_WRITE:Lcom/obs/services/model/AccessControlList;

    if-ne p3, v0, :cond_16

    .line 74
    const-string p3, "public-read-write"

    goto :goto_43

    .line 75
    :cond_16
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PUBLIC_READ_DELIVERED:Lcom/obs/services/model/AccessControlList;

    if-ne p3, v0, :cond_1d

    .line 76
    const-string p3, "public-read-delivered"

    goto :goto_43

    .line 77
    :cond_1d
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PUBLIC_READ_WRITE_DELIVERED:Lcom/obs/services/model/AccessControlList;

    if-ne p3, v0, :cond_24

    .line 78
    const-string p3, "public-read-write-delivered"

    goto :goto_43

    .line 79
    :cond_24
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_AUTHENTICATED_READ:Lcom/obs/services/model/AccessControlList;

    const/4 v2, 0x1

    if-ne p3, v0, :cond_2d

    .line 81
    const-string p3, "authenticated-read"

    :goto_2b
    move v1, v2

    goto :goto_43

    .line 82
    :cond_2d
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_BUCKET_OWNER_READ:Lcom/obs/services/model/AccessControlList;

    if-ne p3, v0, :cond_34

    .line 84
    const-string p3, "bucket-owner-read"

    goto :goto_2b

    .line 85
    :cond_34
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_BUCKET_OWNER_FULL_CONTROL:Lcom/obs/services/model/AccessControlList;

    if-ne p3, v0, :cond_3b

    .line 87
    const-string p3, "bucket-owner-full-control"

    goto :goto_2b

    .line 88
    :cond_3b
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_LOG_DELIVERY_WRITE:Lcom/obs/services/model/AccessControlList;

    if-ne p3, v0, :cond_42

    .line 90
    const-string p3, "log-delivery-write"

    goto :goto_2b

    :cond_42
    const/4 p3, 0x0

    :goto_43
    if-eqz v1, :cond_5b

    .line 93
    sget-object v0, Lcom/obs/services/internal/service/AclHeaderConvertor;->log:Lcom/obs/log/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Canned ACL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/obs/log/ILogger;->info(Ljava/lang/CharSequence;)V

    .line 96
    :cond_5b
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object p0

    invoke-interface {p0}, Lcom/obs/services/internal/IHeaders;->aclHeader()Ljava/lang/String;

    move-result-object p0

    if-eqz p3, :cond_68

    .line 98
    invoke-interface {p2, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_68
    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method prepareRESTHeaderAclForOBSObject(Ljava/lang/String;Ljava/util/Map;Lcom/obs/services/model/AccessControlList;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/obs/services/model/AccessControlList;",
            ")Z"
        }
    .end annotation

    .line 114
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PRIVATE:Lcom/obs/services/model/AccessControlList;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_8

    .line 115
    const-string p3, "private"

    goto :goto_41

    .line 116
    :cond_8
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PUBLIC_READ:Lcom/obs/services/model/AccessControlList;

    const-string v2, "public-read"

    if-ne p3, v0, :cond_10

    :goto_e
    move-object p3, v2

    goto :goto_41

    .line 118
    :cond_10
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PUBLIC_READ_WRITE:Lcom/obs/services/model/AccessControlList;

    const-string v3, "public-read-write"

    if-ne p3, v0, :cond_18

    :goto_16
    move-object p3, v3

    goto :goto_41

    .line 120
    :cond_18
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PUBLIC_READ_DELIVERED:Lcom/obs/services/model/AccessControlList;

    if-ne p3, v0, :cond_1d

    goto :goto_e

    .line 122
    :cond_1d
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PUBLIC_READ_WRITE_DELIVERED:Lcom/obs/services/model/AccessControlList;

    if-ne p3, v0, :cond_22

    goto :goto_16

    .line 124
    :cond_22
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_AUTHENTICATED_READ:Lcom/obs/services/model/AccessControlList;

    const/4 v2, 0x1

    if-ne p3, v0, :cond_2b

    .line 126
    const-string p3, "authenticated-read"

    :goto_29
    move v1, v2

    goto :goto_41

    .line 127
    :cond_2b
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_BUCKET_OWNER_READ:Lcom/obs/services/model/AccessControlList;

    if-ne p3, v0, :cond_32

    .line 129
    const-string p3, "bucket-owner-read"

    goto :goto_29

    .line 130
    :cond_32
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_BUCKET_OWNER_FULL_CONTROL:Lcom/obs/services/model/AccessControlList;

    if-ne p3, v0, :cond_39

    .line 132
    const-string p3, "bucket-owner-full-control"

    goto :goto_29

    .line 133
    :cond_39
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_LOG_DELIVERY_WRITE:Lcom/obs/services/model/AccessControlList;

    if-ne p3, v0, :cond_40

    .line 135
    const-string p3, "log-delivery-write"

    goto :goto_29

    :cond_40
    const/4 p3, 0x0

    :goto_41
    if-eqz v1, :cond_59

    .line 138
    sget-object v0, Lcom/obs/services/internal/service/AclHeaderConvertor;->log:Lcom/obs/log/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Canned ACL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/obs/log/ILogger;->info(Ljava/lang/CharSequence;)V

    .line 141
    :cond_59
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object p0

    invoke-interface {p0}, Lcom/obs/services/internal/IHeaders;->aclHeader()Ljava/lang/String;

    move-result-object p0

    if-eqz p3, :cond_66

    .line 143
    invoke-interface {p2, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_66
    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method prepareRESTHeaderAclForV2(Ljava/lang/String;Ljava/util/Map;Lcom/obs/services/model/AccessControlList;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/obs/services/model/AccessControlList;",
            ")Z"
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PRIVATE:Lcom/obs/services/model/AccessControlList;

    if-ne p3, v0, :cond_7

    .line 40
    const-string p3, "private"

    goto :goto_3e

    .line 41
    :cond_7
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PUBLIC_READ:Lcom/obs/services/model/AccessControlList;

    const-string v1, "public-read"

    if-ne p3, v0, :cond_f

    :goto_d
    move-object p3, v1

    goto :goto_3e

    .line 43
    :cond_f
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PUBLIC_READ_WRITE:Lcom/obs/services/model/AccessControlList;

    const-string v2, "public-read-write"

    if-ne p3, v0, :cond_17

    :goto_15
    move-object p3, v2

    goto :goto_3e

    .line 45
    :cond_17
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PUBLIC_READ_DELIVERED:Lcom/obs/services/model/AccessControlList;

    if-ne p3, v0, :cond_1c

    goto :goto_d

    .line 47
    :cond_1c
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PUBLIC_READ_WRITE_DELIVERED:Lcom/obs/services/model/AccessControlList;

    if-ne p3, v0, :cond_21

    goto :goto_15

    .line 49
    :cond_21
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_AUTHENTICATED_READ:Lcom/obs/services/model/AccessControlList;

    if-ne p3, v0, :cond_28

    .line 50
    const-string p3, "authenticated-read"

    goto :goto_3e

    .line 51
    :cond_28
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_BUCKET_OWNER_READ:Lcom/obs/services/model/AccessControlList;

    if-ne p3, v0, :cond_2f

    .line 52
    const-string p3, "bucket-owner-read"

    goto :goto_3e

    .line 53
    :cond_2f
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_BUCKET_OWNER_FULL_CONTROL:Lcom/obs/services/model/AccessControlList;

    if-ne p3, v0, :cond_36

    .line 54
    const-string p3, "bucket-owner-full-control"

    goto :goto_3e

    .line 55
    :cond_36
    sget-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_LOG_DELIVERY_WRITE:Lcom/obs/services/model/AccessControlList;

    if-ne p3, v0, :cond_3d

    .line 56
    const-string p3, "log-delivery-write"

    goto :goto_3e

    :cond_3d
    const/4 p3, 0x0

    .line 58
    :goto_3e
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object p0

    invoke-interface {p0}, Lcom/obs/services/internal/IHeaders;->aclHeader()Ljava/lang/String;

    move-result-object p0

    if-eqz p3, :cond_4b

    .line 60
    invoke-interface {p2, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_4b
    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected prepareRESTHeaderAclObject(Ljava/lang/String;Ljava/util/Map;Lcom/obs/services/model/AccessControlList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/obs/services/model/AccessControlList;",
            ")Z"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/obs/services/model/AuthTypeEnum;->OBS:Lcom/obs/services/model/AuthTypeEnum;

    if-ne v0, v1, :cond_11

    .line 106
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/internal/service/AclHeaderConvertor;->prepareRESTHeaderAclForOBSObject(Ljava/lang/String;Ljava/util/Map;Lcom/obs/services/model/AccessControlList;)Z

    move-result p0

    return p0

    .line 107
    :cond_11
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/internal/service/AclHeaderConvertor;->prepareRESTHeaderAclForV2(Ljava/lang/String;Ljava/util/Map;Lcom/obs/services/model/AccessControlList;)Z

    move-result p0

    return p0
.end method

.method protected putAclImpl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;Ljava/lang/String;Z)V
    .registers 10

    if-eqz p3, :cond_70

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->ACL:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_19

    .line 175
    const-string v1, "versionId"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_19
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 179
    const-string v1, "Content-Type"

    const-string v2, "application/xml"

    invoke-interface {p4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v1

    invoke-static {p2}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-interface {v1, p3, v3}, Lcom/obs/services/internal/IConvertor;->transAccessControlList(Lcom/obs/services/model/AccessControlList;Z)Ljava/lang/String;

    move-result-object p3

    .line 181
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Content-Length"

    invoke-interface {p4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v1, "Content-MD5"

    invoke-static {p3}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v1

    invoke-virtual {p0, p5, p4, v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(ZLjava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 184
    new-instance p5, Lcom/obs/services/internal/trans/NewTransResult;

    invoke-direct {p5}, Lcom/obs/services/internal/trans/NewTransResult;-><init>()V

    .line 185
    sget-object v1, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    invoke-virtual {p5, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHttpMethod(Lcom/obs/services/model/HttpMethodEnum;)V

    .line 186
    invoke-virtual {p5, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setBucketName(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p5, p2}, Lcom/obs/services/internal/trans/NewTransResult;->setObjectKey(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p5, p4}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 189
    invoke-virtual {p5, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 190
    invoke-virtual {p0, v2, p3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    .line 191
    invoke-virtual {p0, p5}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    :cond_70
    return-void
.end method
