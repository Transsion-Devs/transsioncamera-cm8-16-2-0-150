.class public Lcom/obs/services/internal/ObsService;
.super Lcom/obs/services/internal/service/ObsExtensionService;
.source "SourceFile"


# static fields
.field private static final NON_CONTINUE_STRING_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/obs/services/internal/ObsService;->NON_CONTINUE_STRING_LIST:Ljava/util/Set;

    .line 58
    const-string v1, "acl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v1, "bucket"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v1, "key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v1, "success_action_redirect"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    const-string v1, "redirect"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    const-string v1, "success_action_status"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/obs/services/internal/service/ObsExtensionService;-><init>()V

    return-void
.end method

.method private appendAccessKey(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/internal/security/BasicSecurityKey;)Ljava/lang/String;
    .registers 4

    .line 166
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object p0

    sget-object p1, Lcom/obs/services/model/AuthTypeEnum;->OBS:Lcom/obs/services/model/AuthTypeEnum;

    if-ne p0, p1, :cond_f

    const-string p0, "AccessKeyId="

    goto :goto_11

    :cond_f
    const-string p0, "AWSAccessKeyId="

    .line 168
    :goto_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/obs/services/internal/security/BasicSecurityKey;->getAccessKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private appendExpiresParams(Lcom/obs/services/model/AbstractTemporarySignatureRequest;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 150
    instance-of p0, p1, Lcom/obs/services/model/TemporarySignatureRequest;

    if-eqz p0, :cond_19

    .line 151
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&Expires="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 152
    :cond_19
    instance-of p0, p1, Lcom/obs/services/model/PolicyTempSignatureRequest;

    if-eqz p0, :cond_32

    .line 153
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&Policy="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_32
    return-object p2
.end method

.method private appendOriginPolicy(Lcom/obs/services/model/PostSignatureRequest;ZLcom/obs/services/internal/security/BasicSecurityKey;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 284
    invoke-virtual {p3}, Lcom/obs/services/internal/security/BasicSecurityKey;->getSecurityToken()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p5

    move-object v5, p6

    .line 283
    invoke-direct/range {v0 .. v5}, Lcom/obs/services/internal/ObsService;->prepareSignatureParameters(Lcom/obs/services/model/PostSignatureRequest;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 289
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x1

    move p2, p1

    :cond_17
    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 290
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-static {p5}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_17

    .line 291
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    sget-object p6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p5, p6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    .line 293
    const-string p6, "bucket"

    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    const/4 v2, 0x0

    if-eqz p6, :cond_4a

    move p1, v2

    goto :goto_53

    .line 295
    :cond_4a
    const-string p6, "key"

    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_53

    move p2, v2

    .line 299
    :cond_53
    :goto_53
    sget-object p6, Lcom/obs/services/internal/Constants;->ALLOWED_REQUEST_HTTP_HEADER_METADATA_NAMES:Ljava/util/List;

    invoke-interface {p6, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_7a

    .line 300
    invoke-virtual {v1}, Lcom/obs/services/model/PostSignatureRequest;->getBucketName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v0, p6}, Lcom/obs/services/internal/RestStorageService;->getRestHeaderPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_7a

    const-string p6, "x-obs-"

    .line 301
    invoke-virtual {p5, p6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_7a

    sget-object p6, Lcom/obs/services/internal/ObsService;->NON_CONTINUE_STRING_LIST:Ljava/util/Set;

    .line 302
    invoke-interface {p6, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_7a

    goto :goto_17

    .line 305
    :cond_7a
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p6

    if-nez p6, :cond_83

    const-string p3, ""

    goto :goto_8b

    :cond_83
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 306
    :goto_8b
    const-string p6, "{\""

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "\":"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "\""

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\"},"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_17

    :cond_a7
    if-eqz p1, :cond_ae

    .line 311
    const-string p0, "[\"starts-with\", \"$bucket\", \"\"],"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ae
    if-eqz p2, :cond_b5

    .line 315
    const-string p0, "[\"starts-with\", \"$key\", \"\"],"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b5
    return-void
.end method

.method private appendQueryParams(Lcom/obs/services/model/AbstractTemporarySignatureRequest;Ljava/lang/String;Lcom/obs/services/internal/security/BasicSecurityKey;)Ljava/lang/String;
    .registers 6

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    .line 221
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getQueryParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 222
    invoke-virtual {p3}, Lcom/obs/services/internal/security/BasicSecurityKey;->getSecurityToken()Ljava/lang/String;

    move-result-object p3

    .line 223
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v1

    invoke-interface {v1}, Lcom/obs/services/internal/IHeaders;->securityTokenHeader()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 224
    invoke-static {p3}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 225
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getBucketName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object p0

    invoke-interface {p0}, Lcom/obs/services/internal/IHeaders;->securityTokenHeader()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_3c
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_44
    :goto_44
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_84

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 230
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_44

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_44

    .line 231
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/obs/services/internal/utils/RestUtils;->uriEncode(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object p2

    .line 233
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string p2, "="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/obs/services/internal/utils/RestUtils;->uriEncode(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_44

    .line 240
    :cond_84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private appendSignature(Ljava/lang/String;Lcom/obs/services/internal/security/BasicSecurityKey;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 159
    invoke-virtual {p2}, Lcom/obs/services/internal/security/BasicSecurityKey;->getSecretKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/obs/services/internal/utils/ServiceUtils;->signWithHmacSha1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 160
    invoke-static {p0}, Lcom/obs/services/internal/utils/RestUtils;->encodeUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 161
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&Signature="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private concatHeaderString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 480
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 481
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 482
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 483
    invoke-direct {p0, p1, p2, v3}, Lcom/obs/services/internal/ObsService;->formatHeaderKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 486
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_40

    const-string v4, ""

    goto :goto_4a

    :cond_40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 487
    :goto_4a
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getRestMetadataPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_59

    .line 488
    invoke-static {v4, v6}, Lcom/obs/services/internal/utils/RestUtils;->uriEncode(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v4

    .line 490
    :cond_59
    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    .line 492
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v5

    sub-int/2addr v5, v6

    if-eq v1, v5, :cond_7a

    .line 493
    const-string v1, ";"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    :cond_7a
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v3

    goto :goto_9

    :cond_89
    return-void
.end method

.method private concatQueryString(Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 443
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 444
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 445
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3, v0}, Lcom/obs/services/internal/utils/RestUtils;->uriEncode(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v3

    .line 447
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_53

    .line 450
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/obs/services/internal/utils/RestUtils;->uriEncode(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v2

    .line 451
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_58

    .line 454
    :cond_53
    const-string v2, ""

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_58
    add-int/lit8 v2, v1, 0x1

    .line 456
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_6a

    .line 457
    const-string v1, "&"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6a
    move v1, v2

    goto :goto_a

    :cond_6c
    return-void
.end method

.method private convertHeader(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 192
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_d
    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 193
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 194
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-direct {p0, p1, p3, v2}, Lcom/obs/services/internal/ObsService;->formatHeaderKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 198
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_44

    const-string v3, ""

    goto :goto_4e

    :cond_44
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 199
    :goto_4e
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getRestMetadataPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const/4 v2, 0x1

    .line 200
    invoke-static {v3, v2}, Lcom/obs/services/internal/utils/RestUtils;->uriEncode(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v3

    .line 202
    :cond_5d
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_6b
    return-object v0
.end method

.method private createBaseQueryParams(Lcom/obs/services/model/TemporarySignatureRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/TemporarySignatureRequest;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 515
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 516
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getQueryParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 517
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v1

    invoke-interface {v1}, Lcom/obs/services/internal/IHeaders;->securityTokenHeader()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 518
    invoke-static {p6}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 519
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v1

    invoke-interface {v1}, Lcom/obs/services/internal/IHeaders;->securityTokenHeader()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    :cond_33
    const-string p6, "X-Amz-Algorithm"

    const-string v1, "AWS4-HMAC-SHA256"

    invoke-interface {v0, p6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const-string p6, "X-Amz-Credential"

    .line 525
    invoke-virtual {p0, p3, p5}, Lcom/obs/services/internal/service/AclHeaderConvertor;->getCredential(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 524
    invoke-interface {v0, p6, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const-string p3, "X-Amz-Date"

    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-virtual {p1}, Lcom/obs/services/model/TemporarySignatureRequest;->getExpires()J

    move-result-wide p3

    const-wide/16 p5, 0x0

    cmp-long p3, p3, p5

    if-gtz p3, :cond_55

    const-wide/16 p3, 0x12c

    goto :goto_59

    :cond_55
    invoke-virtual {p1}, Lcom/obs/services/model/TemporarySignatureRequest;->getExpires()J

    move-result-wide p3

    :goto_59
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 527
    const-string p4, "X-Amz-Expires"

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string p3, "X-Amz-SignedHeaders"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getSpecialParam()Lcom/obs/services/model/SpecialParamEnum;

    move-result-object p2

    if-eqz p2, :cond_94

    .line 532
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getSpecialParam()Lcom/obs/services/model/SpecialParamEnum;

    move-result-object p2

    sget-object p3, Lcom/obs/services/model/SpecialParamEnum;->STORAGECLASS:Lcom/obs/services/model/SpecialParamEnum;

    if-eq p2, p3, :cond_7d

    .line 533
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getSpecialParam()Lcom/obs/services/model/SpecialParamEnum;

    move-result-object p2

    sget-object p3, Lcom/obs/services/model/SpecialParamEnum;->STORAGEPOLICY:Lcom/obs/services/model/SpecialParamEnum;

    if-ne p2, p3, :cond_88

    .line 534
    :cond_7d
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getBucketName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->getSpecialParamForStorageClass(Ljava/lang/String;)Lcom/obs/services/model/SpecialParamEnum;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->setSpecialParam(Lcom/obs/services/model/SpecialParamEnum;)V

    .line 536
    :cond_88
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getSpecialParam()Lcom/obs/services/model/SpecialParamEnum;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_94
    return-object v0
.end method

.method private createBaseRequestHeaders(Lcom/obs/services/model/TemporarySignatureRequest;Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/TemporarySignatureRequest;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 502
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 503
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 504
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpsOnly()Z

    move-result p1

    const-string v1, "Host"

    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpsPort()I

    move-result p1

    const/16 v2, 0x1bb

    if-eq p1, v2, :cond_2a

    :cond_1c
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpsOnly()Z

    move-result p1

    if-nez p1, :cond_2e

    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpPort()I

    move-result p1

    const/16 v2, 0x50

    if-ne p1, v2, :cond_2e

    .line 505
    :cond_2a
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 507
    :cond_2e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpsOnly()Z

    move-result p2

    if-eqz p2, :cond_46

    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpsPort()I

    move-result p0

    goto :goto_4a

    :cond_46
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpPort()I

    move-result p0

    :goto_4a
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 507
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private createBaseSignedUrl(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 8

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpsOnly()Z

    move-result v1

    const-string v2, ":"

    const-string v3, ""

    if-eqz v1, :cond_37

    .line 430
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpsPort()I

    move-result v1

    const/16 v4, 0x1bb

    if-ne v1, v4, :cond_18

    goto :goto_2b

    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpsPort()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 431
    :goto_2b
    const-string p0, "https://"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5e

    .line 433
    :cond_37
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpPort()I

    move-result v1

    const/16 v4, 0x50

    if-ne v1, v4, :cond_40

    goto :goto_53

    :cond_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpPort()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 434
    :goto_53
    const-string p0, "http://"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :goto_5e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private formatHeaderKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 465
    sget-object v0, Lcom/obs/services/internal/Constants;->ALLOWED_REQUEST_HTTP_HEADER_METADATA_NAMES:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 466
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getRestHeaderPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "x-obs-"

    .line 467
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_42

    .line 469
    :cond_1b
    const-string v0, "PUT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "POST"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 p0, 0x0

    return-object p0

    .line 470
    :cond_2e
    :goto_2e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getRestMetadataPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_42
    :goto_42
    return-object p3
.end method

.method private getExpiresParams(Lcom/obs/services/model/AbstractTemporarySignatureRequest;)Ljava/lang/String;
    .registers 6

    .line 174
    instance-of p0, p1, Lcom/obs/services/model/TemporarySignatureRequest;

    if-eqz p0, :cond_24

    .line 175
    check-cast p1, Lcom/obs/services/model/TemporarySignatureRequest;

    .line 176
    invoke-virtual {p1}, Lcom/obs/services/model/TemporarySignatureRequest;->getExpires()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_13

    const-wide/16 p0, 0x12c

    goto :goto_17

    .line 177
    :cond_13
    invoke-virtual {p1}, Lcom/obs/services/model/TemporarySignatureRequest;->getExpires()J

    move-result-wide p0

    .line 178
    :goto_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    add-long/2addr p0, v0

    .line 179
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 180
    :cond_24
    instance-of p0, p1, Lcom/obs/services/model/PolicyTempSignatureRequest;

    if-eqz p0, :cond_39

    .line 181
    check-cast p1, Lcom/obs/services/model/PolicyTempSignatureRequest;

    .line 182
    invoke-virtual {p1}, Lcom/obs/services/model/PolicyTempSignatureRequest;->generatePolicy()Ljava/lang/String;

    move-result-object p0

    .line 183
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 186
    :cond_39
    const-string p0, ""

    return-object p0
.end method

.method private getFormatExpiration(Lcom/obs/services/model/PostSignatureRequest;)Ljava/lang/String;
    .registers 10

    .line 320
    invoke-virtual {p1}, Lcom/obs/services/model/PostSignatureRequest;->getRequestDate()Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p1}, Lcom/obs/services/model/PostSignatureRequest;->getRequestDate()Ljava/util/Date;

    move-result-object p0

    goto :goto_10

    :cond_b
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 321
    :goto_10
    invoke-static {}, Lcom/obs/services/internal/utils/ServiceUtils;->getExpirationDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 322
    invoke-virtual {p1}, Lcom/obs/services/model/PostSignatureRequest;->getExpiryDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_39

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 323
    invoke-virtual {p1}, Lcom/obs/services/model/PostSignatureRequest;->getExpires()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-gtz p0, :cond_2d

    const-wide/16 p0, 0x12c

    goto :goto_31

    :cond_2d
    invoke-virtual {p1}, Lcom/obs/services/model/PostSignatureRequest;->getExpires()J

    move-result-wide p0

    :goto_31
    const-wide/16 v4, 0x3e8

    mul-long/2addr p0, v4

    add-long/2addr v2, p0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_3d

    .line 324
    :cond_39
    invoke-virtual {p1}, Lcom/obs/services/model/PostSignatureRequest;->getExpiryDate()Ljava/util/Date;

    move-result-object v1

    .line 326
    :goto_3d
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private prepareSignatureParameters(Lcom/obs/services/model/PostSignatureRequest;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/PostSignatureRequest;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    if-eqz p2, :cond_18

    .line 334
    const-string p2, "X-Amz-Algorithm"

    const-string v1, "AWS4-HMAC-SHA256"

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string p2, "X-Amz-Date"

    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string p2, "X-Amz-Credential"

    invoke-interface {v0, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_18
    invoke-virtual {p1}, Lcom/obs/services/model/PostSignatureRequest;->getFormParams()Ljava/util/Map;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 341
    invoke-virtual {p1}, Lcom/obs/services/model/PostSignatureRequest;->getBucketName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object p2

    invoke-interface {p2}, Lcom/obs/services/internal/IHeaders;->securityTokenHeader()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_46

    .line 342
    invoke-static {p3}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_46

    .line 343
    invoke-virtual {p1}, Lcom/obs/services/model/PostSignatureRequest;->getBucketName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object p0

    invoke-interface {p0}, Lcom/obs/services/internal/IHeaders;->securityTokenHeader()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_46
    invoke-virtual {p1}, Lcom/obs/services/model/PostSignatureRequest;->getBucketName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_59

    .line 348
    const-string p0, "bucket"

    invoke-virtual {p1}, Lcom/obs/services/model/PostSignatureRequest;->getBucketName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :cond_59
    invoke-virtual {p1}, Lcom/obs/services/model/PostSignatureRequest;->getObjectKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6c

    .line 352
    const-string p0, "key"

    invoke-virtual {p1}, Lcom/obs/services/model/PostSignatureRequest;->getObjectKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6c
    return-object v0
.end method


# virtual methods
.method protected createPostSignatureResponse(Lcom/obs/services/model/PostSignatureRequest;Z)Lcom/obs/services/model/PostSignatureResponse;
    .registers 16

    .line 245
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/internal/security/ProviderCredentials;->getSecurityKey()Lcom/obs/services/internal/security/BasicSecurityKey;

    move-result-object v4

    .line 246
    invoke-direct {p0, p1}, Lcom/obs/services/internal/ObsService;->getFormatExpiration(Lcom/obs/services/model/PostSignatureRequest;)Ljava/lang/String;

    move-result-object v9

    .line 248
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    const-string v0, "{\"expiration\":"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"conditions\":["

    .line 250
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p1}, Lcom/obs/services/model/PostSignatureRequest;->getRequestDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {p1}, Lcom/obs/services/model/PostSignatureRequest;->getRequestDate()Ljava/util/Date;

    move-result-object v0

    goto :goto_38

    :cond_33
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 253
    :goto_38
    invoke-static {}, Lcom/obs/services/internal/utils/ServiceUtils;->getShortDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 254
    invoke-static {}, Lcom/obs/services/internal/utils/ServiceUtils;->getLongDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 255
    invoke-virtual {v4}, Lcom/obs/services/internal/security/BasicSecurityKey;->getAccessKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lcom/obs/services/internal/service/AclHeaderConvertor;->getCredential(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 256
    invoke-virtual {p1}, Lcom/obs/services/model/PostSignatureRequest;->getConditions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_72

    invoke-virtual {p1}, Lcom/obs/services/model/PostSignatureRequest;->getConditions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_72

    .line 257
    invoke-virtual {p1}, Lcom/obs/services/model/PostSignatureRequest;->getConditions()Ljava/util/List;

    move-result-object p0

    const-string p1, ","

    invoke-static {p0, p1}, Lcom/obs/services/internal/utils/ServiceUtils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p2

    goto :goto_78

    :cond_72
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    .line 259
    invoke-direct/range {v1 .. v7}, Lcom/obs/services/internal/ObsService;->appendOriginPolicy(Lcom/obs/services/model/PostSignatureRequest;ZLcom/obs/services/internal/security/BasicSecurityKey;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :goto_78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_95

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 p1, 0x2c

    if-ne p0, p1, :cond_95

    .line 263
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 266
    :cond_95
    const-string p0, "]}"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object p0

    if-eqz v3, :cond_c3

    .line 270
    invoke-virtual {v4}, Lcom/obs/services/internal/security/BasicSecurityKey;->getSecretKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v8, p1}, Lcom/obs/services/internal/utils/V4Authentication;->caculateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object p1, v5

    .line 271
    new-instance v5, Lcom/obs/services/model/V4PostSignatureResponse;

    move-object v12, v9

    move-object v9, v7

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AWS4-HMAC-SHA256"

    move-object v10, v6

    move-object v6, p0

    invoke-direct/range {v5 .. v12}, Lcom/obs/services/model/V4PostSignatureResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_c3
    move-object v6, p0

    move-object p1, v5

    move-object v12, v9

    .line 274
    invoke-virtual {v4}, Lcom/obs/services/internal/security/BasicSecurityKey;->getSecretKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/obs/services/internal/utils/AbstractAuthentication;->calculateSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 275
    new-instance v5, Lcom/obs/services/model/PostSignatureResponse;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 276
    invoke-virtual {v4}, Lcom/obs/services/internal/security/BasicSecurityKey;->getAccessKey()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/obs/services/model/PostSignatureResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method protected createTemporarySignatureResponse(Lcom/obs/services/model/AbstractTemporarySignatureRequest;)Lcom/obs/services/model/TemporarySignatureResponse;
    .registers 14

    .line 72
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->isPathStyle()Z

    move-result v1

    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-static {v0, v1, v2}, Lcom/obs/services/internal/utils/ServiceUtils;->generateHostnameForBucket(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    const-string v3, ""

    if-eqz v1, :cond_23

    .line 77
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/obs/services/internal/utils/RestUtils;->encodeUrlPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_24

    :cond_23
    move-object v1, v3

    .line 78
    :goto_24
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getEndpoint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_62

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getEndpoint()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_5e

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5f

    :cond_5e
    move-object v4, v3

    :goto_5f
    move-object v5, v4

    move-object v4, v1

    goto :goto_89

    .line 85
    :cond_62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getBucketName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_73

    move-object v5, v3

    goto :goto_7b

    .line 86
    :cond_73
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getBucketName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    :goto_7b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    .line 89
    :goto_89
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->isCname()Z

    move-result v6

    if-eqz v6, :cond_a7

    .line 90
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getEndpoint()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_a8

    :cond_a7
    move-object v1, v4

    .line 95
    :goto_a8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getSpecialParam()Lcom/obs/services/model/SpecialParamEnum;

    move-result-object v4

    if-eqz v4, :cond_f6

    .line 97
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getSpecialParam()Lcom/obs/services/model/SpecialParamEnum;

    move-result-object v4

    sget-object v6, Lcom/obs/services/model/SpecialParamEnum;->STORAGECLASS:Lcom/obs/services/model/SpecialParamEnum;

    if-eq v4, v6, :cond_cf

    .line 98
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getSpecialParam()Lcom/obs/services/model/SpecialParamEnum;

    move-result-object v4

    sget-object v6, Lcom/obs/services/model/SpecialParamEnum;->STORAGEPOLICY:Lcom/obs/services/model/SpecialParamEnum;

    if-ne v4, v6, :cond_da

    .line 99
    :cond_cf
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->getSpecialParamForStorageClass(Ljava/lang/String;)Lcom/obs/services/model/SpecialParamEnum;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->setSpecialParam(Lcom/obs/services/model/SpecialParamEnum;)V

    .line 101
    :cond_da
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getSpecialParam()Lcom/obs/services/model/SpecialParamEnum;

    move-result-object v1

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    :cond_f6
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v4

    invoke-virtual {v4}, Lcom/obs/services/internal/security/ProviderCredentials;->getSecurityKey()Lcom/obs/services/internal/security/BasicSecurityKey;

    move-result-object v4

    .line 106
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getBucketName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v1, v4}, Lcom/obs/services/internal/ObsService;->appendAccessKey(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/internal/security/BasicSecurityKey;)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-direct {p0, p1}, Lcom/obs/services/internal/ObsService;->getExpiresParams(Lcom/obs/services/model/AbstractTemporarySignatureRequest;)Ljava/lang/String;

    move-result-object v10

    .line 109
    invoke-direct {p0, p1, v1, v10}, Lcom/obs/services/internal/ObsService;->appendExpiresParams(Lcom/obs/services/model/AbstractTemporarySignatureRequest;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-direct {p0, p1, v1, v4}, Lcom/obs/services/internal/ObsService;->appendQueryParams(Lcom/obs/services/model/AbstractTemporarySignatureRequest;Ljava/lang/String;Lcom/obs/services/internal/security/BasicSecurityKey;)Ljava/lang/String;

    move-result-object v1

    .line 114
    instance-of v6, p1, Lcom/obs/services/model/TemporarySignatureRequest;

    if-eqz v6, :cond_128

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_128
    move-object v8, v3

    .line 118
    sget-object v3, Lcom/obs/services/internal/Constants;->AUTHTICATION_MAP:Ljava/util/Map;

    .line 119
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v5

    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getBucketName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/obs/services/internal/utils/AbstractAuthentication;

    if-nez v3, :cond_143

    .line 121
    invoke-static {}, Lcom/obs/services/internal/utils/V2Authentication;->getInstance()Lcom/obs/services/internal/utils/AbstractAuthentication;

    move-result-object v3

    :cond_143
    move-object v6, v3

    .line 124
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 125
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpsOnly()Z

    move-result v0

    if-eqz v0, :cond_168

    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpsPort()I

    move-result v0

    goto :goto_16c

    :cond_168
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpPort()I

    move-result v0

    :goto_16c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    const-string v5, "Host"

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getMethod()Lcom/obs/services/model/HttpMethodEnum;

    move-result-object v0

    if-eqz v0, :cond_188

    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getMethod()Lcom/obs/services/model/HttpMethodEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/model/HttpMethodEnum;->getOperationType()Ljava/lang/String;

    move-result-object v0

    :goto_186
    move-object v7, v0

    goto :goto_18b

    :cond_188
    const-string v0, "GET"

    goto :goto_186

    .line 130
    :goto_18b
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getBucketName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3, v7}, Lcom/obs/services/internal/ObsService;->convertHeader(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    .line 131
    sget-object v11, Lcom/obs/services/internal/Constants;->ALLOWED_RESOURCE_PARAMTER_NAMES:Ljava/util/List;

    invoke-virtual/range {v6 .. v11}, Lcom/obs/services/internal/utils/AbstractAuthentication;->makeServiceCanonicalString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-direct {p0, v1, v4, p1}, Lcom/obs/services/internal/ObsService;->appendSignature(Ljava/lang/String;Lcom/obs/services/internal/security/BasicSecurityKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpsOnly()Z

    move-result p0

    if-eqz p0, :cond_1a6

    .line 138
    const-string p0, "https://"

    goto :goto_1a8

    .line 140
    :cond_1a6
    const-string p0, "http://"

    .line 142
    :goto_1a8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 143
    new-instance p1, Lcom/obs/services/model/TemporarySignatureResponse;

    invoke-direct {p1, p0}, Lcom/obs/services/model/TemporarySignatureResponse;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Lcom/obs/services/model/TemporarySignatureResponse;->getActualSignedRequestHeaders()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p1
.end method

.method protected createV4TemporarySignature(Lcom/obs/services/model/TemporarySignatureRequest;)Lcom/obs/services/model/TemporarySignatureResponse;
    .registers 18

    move-object/from16 v0, p0

    .line 359
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-virtual {v0}, Lcom/obs/services/internal/RestConnectionService;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v3

    .line 364
    invoke-virtual {v0}, Lcom/obs/services/internal/RestConnectionService;->isCname()Z

    move-result v4

    const/4 v5, 0x0

    const-string v8, "/"

    if-nez v4, :cond_63

    .line 365
    invoke-static {v1}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 366
    invoke-virtual {v0}, Lcom/obs/services/internal/RestConnectionService;->isPathStyle()Z

    move-result v4

    if-nez v4, :cond_48

    invoke-static {v1}, Lcom/obs/services/internal/utils/ServiceUtils;->isBucketNameValidDNSName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f

    goto :goto_48

    .line 369
    :cond_2f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_52

    .line 367
    :cond_48
    :goto_48
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :goto_52
    invoke-static {v3}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 372
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v5}, Lcom/obs/services/internal/utils/RestUtils;->uriEncode(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_73

    .line 376
    :cond_63
    invoke-static {v3}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 377
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v5}, Lcom/obs/services/internal/utils/RestUtils;->uriEncode(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_73
    :goto_73
    invoke-virtual {v0}, Lcom/obs/services/internal/RestConnectionService;->isCname()Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 382
    invoke-virtual {v0}, Lcom/obs/services/internal/RestConnectionService;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    :cond_7d
    move-object v9, v2

    .line 385
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getMethod()Lcom/obs/services/model/HttpMethodEnum;

    move-result-object v2

    if-eqz v2, :cond_8d

    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getMethod()Lcom/obs/services/model/HttpMethodEnum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/obs/services/model/HttpMethodEnum;->getOperationType()Ljava/lang/String;

    move-result-object v2

    goto :goto_8f

    :cond_8d
    const-string v2, "GET"

    .line 386
    :goto_8f
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v10, p1

    .line 388
    invoke-direct {v0, v10, v9}, Lcom/obs/services/internal/ObsService;->createBaseRequestHeaders(Lcom/obs/services/model/TemporarySignatureRequest;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 390
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    invoke-direct/range {v0 .. v6}, Lcom/obs/services/internal/ObsService;->concatHeaderString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    move-object v11, v2

    move-object v12, v3

    move-object v13, v5

    move-object v14, v6

    .line 395
    invoke-virtual {v10}, Lcom/obs/services/model/TemporarySignatureRequest;->getRequestDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_b6

    .line 397
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 399
    :cond_b6
    invoke-static {}, Lcom/obs/services/internal/utils/ServiceUtils;->getShortDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 400
    invoke-static {}, Lcom/obs/services/internal/utils/ServiceUtils;->getLongDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/internal/security/ProviderCredentials;->getSecurityKey()Lcom/obs/services/internal/security/BasicSecurityKey;

    move-result-object v15

    .line 403
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 404
    invoke-virtual {v15}, Lcom/obs/services/internal/security/BasicSecurityKey;->getAccessKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Lcom/obs/services/internal/security/BasicSecurityKey;->getSecurityToken()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v10

    .line 403
    invoke-direct/range {v0 .. v6}, Lcom/obs/services/internal/ObsService;->createBaseQueryParams(Lcom/obs/services/model/TemporarySignatureRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 406
    invoke-direct {v0, v7, v9}, Lcom/obs/services/internal/ObsService;->createBaseSignedUrl(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 407
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    invoke-direct {v0, v1, v2, v5}, Lcom/obs/services/internal/ObsService;->concatQueryString(Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_fe

    move-object v7, v8

    :cond_fe
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "UNSIGNED-PAYLOAD"

    .line 413
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AWS4-HMAC-SHA256"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "region"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "s3"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "aws4_request"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/obs/services/internal/utils/V4Authentication;->sha256encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/obs/services/internal/utils/V4Authentication;->byteToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "X-Amz-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Signature="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-virtual {v15}, Lcom/obs/services/internal/security/BasicSecurityKey;->getSecretKey()Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-static {v0, v3, v1}, Lcom/obs/services/internal/utils/V4Authentication;->caculateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    new-instance v0, Lcom/obs/services/model/TemporarySignatureResponse;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/obs/services/model/TemporarySignatureResponse;-><init>(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0}, Lcom/obs/services/model/TemporarySignatureResponse;->getActualSignedRequestHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method protected initThreadPool(Lcom/obs/services/model/AbstractBulkRequest;)Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 9

    .line 543
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractBulkRequest;->getTaskThreadNum()I

    move-result v1

    .line 544
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractBulkRequest;->getTaskQueueNum()I

    move-result p0

    .line 545
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6, p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    const-wide/16 v3, 0x0

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 547
    new-instance p0, Lcom/obs/services/internal/task/BlockRejectedExecutionHandler;

    invoke-direct {p0}, Lcom/obs/services/internal/task/BlockRejectedExecutionHandler;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v0
.end method

.method protected recordBulkTaskStatus(Lcom/obs/services/internal/task/DefaultTaskProgressStatus;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/model/TaskProgressListener;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/internal/task/DefaultTaskProgressStatus;",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/DeleteObjectResult;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/obs/services/model/TaskProgressListener;",
            "I)V"
        }
    .end annotation

    .line 554
    invoke-virtual {p1}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->execTaskIncrement()V

    if-eqz p3, :cond_1c

    .line 556
    invoke-virtual {p1}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->getExecTaskNum()I

    move-result p0

    rem-int/2addr p0, p4

    if-nez p0, :cond_f

    .line 557
    invoke-interface {p3, p1}, Lcom/obs/services/model/TaskProgressListener;->progressChanged(Lcom/obs/services/model/TaskProgressStatus;)V

    .line 559
    :cond_f
    invoke-virtual {p1}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->getExecTaskNum()I

    move-result p0

    invoke-virtual {p1}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->getTotalTaskNum()I

    move-result p2

    if-ne p0, p2, :cond_1c

    .line 560
    invoke-interface {p3, p1}, Lcom/obs/services/model/TaskProgressListener;->progressChanged(Lcom/obs/services/model/TaskProgressStatus;)V

    :cond_1c
    return-void
.end method
