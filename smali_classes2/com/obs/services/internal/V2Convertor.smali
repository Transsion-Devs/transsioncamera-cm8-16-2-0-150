.class public Lcom/obs/services/internal/V2Convertor;
.super Lcom/obs/services/internal/V2BucketConvertor;
.source "SourceFile"


# static fields
.field private static instance:Lcom/obs/services/internal/IConvertor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Lcom/obs/services/internal/V2Convertor;

    invoke-direct {v0}, Lcom/obs/services/internal/V2Convertor;-><init>()V

    sput-object v0, Lcom/obs/services/internal/V2Convertor;->instance:Lcom/obs/services/internal/IConvertor;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/obs/services/internal/V2BucketConvertor;-><init>()V

    return-void
.end method

.method public static getEncodedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_18

    .line 62
    const-string v0, "url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 64
    :try_start_a
    const-string p1, "UTF-8"

    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    .line 66
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    invoke-direct {p1, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_18
    return-object p0
.end method

.method public static getInstance()Lcom/obs/services/internal/IConvertor;
    .registers 1

    .line 58
    sget-object v0, Lcom/obs/services/internal/V2Convertor;->instance:Lcom/obs/services/internal/IConvertor;

    return-object v0
.end method

.method private transExpiration(Lcom/obs/services/model/LifecycleConfiguration$Rule;Lcom/obs/services/internal/xml/OBSXMLBuilder;)V
    .registers 3

    .line 197
    const-string p0, "Expiration"

    invoke-virtual {p2, p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 198
    invoke-virtual {p1}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getExpiration()Lcom/obs/services/model/LifecycleConfiguration$Expiration;

    move-result-object p2

    invoke-virtual {p2}, Lcom/obs/services/model/LifecycleConfiguration$Expiration;->getDate()Ljava/util/Date;

    move-result-object p2

    if-eqz p2, :cond_26

    .line 199
    const-string p2, "Date"

    invoke-virtual {p0, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 200
    invoke-virtual {p1}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getExpiration()Lcom/obs/services/model/LifecycleConfiguration$Expiration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/obs/services/model/LifecycleConfiguration$Expiration;->getDate()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->formatIso8601MidnightDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    return-void

    .line 201
    :cond_26
    invoke-virtual {p1}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getExpiration()Lcom/obs/services/model/LifecycleConfiguration$Expiration;

    move-result-object p2

    invoke-virtual {p2}, Lcom/obs/services/model/LifecycleConfiguration$Expiration;->getDays()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_45

    .line 202
    const-string p2, "Days"

    invoke-virtual {p0, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getExpiration()Lcom/obs/services/model/LifecycleConfiguration$Expiration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/obs/services/model/LifecycleConfiguration$Expiration;->getDays()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    :cond_45
    return-void
.end method

.method private transNoncurrentVersionTransition(Lcom/obs/services/model/LifecycleConfiguration$Rule;Lcom/obs/services/internal/xml/OBSXMLBuilder;)V
    .registers 7

    .line 184
    invoke-virtual {p1}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getNoncurrentVersionTransitions()Ljava/util/List;

    move-result-object p1

    .line 183
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionTransition;

    .line 185
    invoke-virtual {v0}, Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionTransition;->getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 186
    invoke-virtual {v0}, Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionTransition;->getDays()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 187
    const-string v1, "NoncurrentVersionTransition"

    invoke-virtual {p2, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    .line 188
    const-string v2, "NoncurrentDays"

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v2

    .line 189
    invoke-virtual {v0}, Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionTransition;->getDays()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-virtual {v2, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 190
    const-string v2, "StorageClass"

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    .line 191
    invoke-virtual {v0}, Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionTransition;->getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/V2Convertor;->transStorageClass(Lcom/obs/services/model/StorageClassEnum;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    goto :goto_8

    :cond_49
    return-void
.end method

.method private transTagSet(Lcom/obs/services/model/LifecycleConfiguration$Rule;Lcom/obs/services/internal/xml/OBSXMLBuilder;)V
    .registers 6

    .line 207
    invoke-virtual {p1}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getTagSet()Lcom/obs/services/model/BucketTagInfo$TagSet;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_4a

    .line 210
    :cond_7
    invoke-virtual {p1}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getTagSet()Lcom/obs/services/model/BucketTagInfo$TagSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/model/BucketTagInfo$TagSet;->getTags()Ljava/util/List;

    move-result-object p0

    .line 211
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;

    .line 212
    const-string v0, "Tag"

    invoke-virtual {p2, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    .line 213
    const-string v1, "Key"

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 214
    invoke-virtual {p1}, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Value"

    if-eqz v1, :cond_46

    .line 215
    invoke-virtual {v0, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    goto :goto_13

    .line 217
    :cond_46
    invoke-virtual {v0, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    goto :goto_13

    :cond_4a
    :goto_4a
    return-void
.end method

.method private transTransitions(Lcom/obs/services/model/LifecycleConfiguration$Rule;Lcom/obs/services/internal/xml/OBSXMLBuilder;)V
    .registers 7

    .line 223
    invoke-virtual {p1}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getTransitions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/obs/services/model/LifecycleConfiguration$Transition;

    .line 224
    invoke-virtual {v0}, Lcom/obs/services/model/LifecycleConfiguration$Transition;->getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 225
    const-string v1, "Transition"

    invoke-virtual {p2, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    .line 226
    invoke-virtual {v0}, Lcom/obs/services/model/LifecycleConfiguration$Transition;->getDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 227
    const-string v2, "Date"

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v2

    .line 228
    invoke-virtual {v0}, Lcom/obs/services/model/LifecycleConfiguration$Transition;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/obs/services/internal/utils/ServiceUtils;->formatIso8601MidnightDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-virtual {v2, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    goto :goto_4f

    .line 229
    :cond_38
    invoke-virtual {v0}, Lcom/obs/services/model/LifecycleConfiguration$Transition;->getDays()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 230
    const-string v2, "Days"

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/obs/services/model/LifecycleConfiguration$Transition;->getDays()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 232
    :cond_4f
    :goto_4f
    const-string v2, "StorageClass"

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    .line 233
    invoke-virtual {v0}, Lcom/obs/services/model/LifecycleConfiguration$Transition;->getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/V2Convertor;->transStorageClass(Lcom/obs/services/model/StorageClassEnum;)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {v1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    goto :goto_8

    :cond_61
    return-void
.end method

.method private transWebsiteRoutingRule(Lcom/obs/services/internal/xml/OBSXMLBuilder;Lcom/obs/services/model/RouteRule;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 7

    .line 273
    const-string p0, "RoutingRule"

    invoke-virtual {p1, p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 274
    invoke-virtual {p2}, Lcom/obs/services/model/RouteRule;->getCondition()Lcom/obs/services/model/RouteRuleCondition;

    move-result-object p1

    if-eqz p1, :cond_46

    .line 276
    const-string v0, "Condition"

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 277
    invoke-virtual {p1}, Lcom/obs/services/model/RouteRuleCondition;->getKeyPrefixEquals()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-virtual {p1}, Lcom/obs/services/model/RouteRuleCondition;->getHttpErrorCodeReturnedEquals()Ljava/lang/String;

    move-result-object p1

    .line 279
    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid2(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 280
    const-string v1, "KeyPrefixEquals"

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 281
    invoke-virtual {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 283
    :cond_2e
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 284
    const-string v0, "HttpErrorCodeReturnedEquals"

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 285
    invoke-virtual {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 287
    :cond_42
    invoke-virtual {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 290
    :cond_46
    invoke-virtual {p2}, Lcom/obs/services/model/RouteRule;->getRedirect()Lcom/obs/services/model/Redirect;

    move-result-object p1

    if-eqz p1, :cond_d2

    .line 292
    const-string p2, "Redirect"

    invoke-virtual {p0, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 293
    invoke-virtual {p1}, Lcom/obs/services/model/Redirect;->getHostName()Ljava/lang/String;

    move-result-object p2

    .line 294
    invoke-virtual {p1}, Lcom/obs/services/model/Redirect;->getReplaceKeyWith()Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-virtual {p1}, Lcom/obs/services/model/Redirect;->getReplaceKeyPrefixWith()Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-virtual {p1}, Lcom/obs/services/model/Redirect;->getHttpRedirectCode()Ljava/lang/String;

    move-result-object v2

    .line 297
    invoke-static {p2}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid2(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 298
    const-string v3, "HostName"

    invoke-virtual {p0, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 299
    invoke-virtual {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 301
    :cond_76
    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid2(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8a

    .line 302
    const-string p2, "HttpRedirectCode"

    invoke-virtual {p0, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 303
    invoke-virtual {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 305
    :cond_8a
    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid2(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9e

    .line 306
    const-string p2, "ReplaceKeyWith"

    invoke-virtual {p0, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 307
    invoke-virtual {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 309
    :cond_9e
    invoke-static {v1}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid2(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b2

    .line 310
    const-string p2, "ReplaceKeyPrefixWith"

    invoke-virtual {p0, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 311
    invoke-virtual {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 313
    :cond_b2
    invoke-virtual {p1}, Lcom/obs/services/model/Redirect;->getRedirectProtocol()Lcom/obs/services/model/ProtocolEnum;

    move-result-object p2

    if-eqz p2, :cond_ce

    .line 314
    const-string p2, "Protocol"

    invoke-virtual {p0, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/obs/services/model/Redirect;->getRedirectProtocol()Lcom/obs/services/model/ProtocolEnum;

    move-result-object p1

    invoke-virtual {p1}, Lcom/obs/services/model/ProtocolEnum;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 315
    invoke-virtual {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 317
    :cond_ce
    invoke-virtual {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 319
    :cond_d2
    invoke-virtual {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public transAccessControlList(Lcom/obs/services/model/AccessControlList;Z)Ljava/lang/String;
    .registers 13

    .line 350
    const-string p2, "Failed to build XML document for ACL"

    invoke-virtual {p1}, Lcom/obs/services/model/AccessControlList;->getOwner()Lcom/obs/services/model/Owner;

    move-result-object v0

    .line 351
    invoke-virtual {p1}, Lcom/obs/services/model/AccessControlList;->getGrantAndPermissions()[Lcom/obs/services/model/GrantAndPermission;

    move-result-object p1

    .line 354
    :try_start_a
    const-string v1, "AccessControlPolicy"

    invoke-static {v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1
    :try_end_10
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a .. :try_end_10} :catch_48
    .catch Ljavax/xml/transform/TransformerException; {:try_start_a .. :try_end_10} :catch_45
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_42

    .line 355
    const-string v2, "ID"

    if-eqz v0, :cond_53

    .line 356
    :try_start_14
    const-string v3, "Owner"

    invoke-virtual {v1, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/obs/services/model/Owner;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    .line 357
    invoke-virtual {v0}, Lcom/obs/services/model/Owner;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4b

    .line 358
    invoke-virtual {v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    const-string v4, "DisplayName"

    invoke-virtual {v3, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/obs/services/model/Owner;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    goto :goto_4b

    :catch_42
    move-exception p0

    goto/16 :goto_cd

    :catch_45
    move-exception p0

    goto/16 :goto_d3

    :catch_48
    move-exception p0

    goto/16 :goto_d9

    .line 360
    :cond_4b
    :goto_4b
    invoke-virtual {v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    .line 362
    :cond_53
    array-length v0, p1

    if-lez v0, :cond_c8

    .line 363
    const-string v0, "AccessControlList"

    invoke-virtual {v1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    .line 364
    array-length v3, p1

    const/4 v4, 0x0

    :goto_5e
    if-ge v4, v3, :cond_c8

    aget-object v5, p1, v4

    .line 365
    invoke-virtual {v5}, Lcom/obs/services/model/GrantAndPermission;->getGrantee()Lcom/obs/services/model/GranteeInterface;

    move-result-object v6

    .line 366
    invoke-virtual {v5}, Lcom/obs/services/model/GrantAndPermission;->getPermission()Lcom/obs/services/model/Permission;

    move-result-object v5

    .line 368
    instance-of v7, v6, Lcom/obs/services/model/CanonicalGrantee;

    if-eqz v7, :cond_73

    .line 369
    invoke-virtual {p0, v6}, Lcom/obs/services/internal/V2BucketConvertor;->buildCanonicalGrantee(Lcom/obs/services/model/GranteeInterface;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v6

    goto :goto_a6

    .line 370
    :cond_73
    instance-of v7, v6, Lcom/obs/services/model/GroupGrantee;

    if-eqz v7, :cond_7c

    .line 371
    invoke-virtual {p0, v6}, Lcom/obs/services/internal/V2BucketConvertor;->buildGroupGrantee(Lcom/obs/services/model/GranteeInterface;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v6

    goto :goto_a6

    :cond_7c
    if-eqz v6, :cond_a5

    .line 373
    const-string v7, "Grantee"

    invoke-static {v7}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v7

    const-string v8, "xmlns:xsi"

    const-string v9, "http://www.w3.org/2001/XMLSchema-instance"

    .line 374
    invoke-virtual {v7, v8, v9}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v7

    const-string v8, "xsi:type"

    const-string v9, "CanonicalUser"

    .line 375
    invoke-virtual {v7, v8, v9}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->element(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v7

    .line 376
    invoke-interface {v6}, Lcom/obs/services/model/GranteeInterface;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v6

    goto :goto_a6

    :cond_a5
    const/4 v6, 0x0

    :goto_a6
    if-eqz v6, :cond_c5

    .line 380
    const-string v7, "Grant"

    invoke-virtual {v0, v7}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->importXMLBuilder(Lcom/jamesmurty/utils/BaseXMLBuilder;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v6

    if-eqz v5, :cond_c5

    .line 382
    const-string v7, "Permission"

    invoke-virtual {v6, v7}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v6

    .line 383
    invoke-virtual {v5}, Lcom/obs/services/model/Permission;->getPermissionString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    :cond_c5
    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    .line 388
    :cond_c8
    invoke-virtual {v1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_cc
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_14 .. :try_end_cc} :catch_48
    .catch Ljavax/xml/transform/TransformerException; {:try_start_14 .. :try_end_cc} :catch_45
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_cc} :catch_42

    return-object p0

    .line 394
    :goto_cd
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    invoke-direct {p1, p2, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 392
    :goto_d3
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    invoke-direct {p1, p2, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 390
    :goto_d9
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    invoke-direct {p1, p2, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public transCannedAcl(Ljava/lang/String;)Lcom/obs/services/model/AccessControlList;
    .registers 2

    .line 516
    const-string p0, "private"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 517
    sget-object p0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PRIVATE:Lcom/obs/services/model/AccessControlList;

    return-object p0

    .line 518
    :cond_b
    const-string p0, "public-read"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 519
    sget-object p0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PUBLIC_READ:Lcom/obs/services/model/AccessControlList;

    return-object p0

    .line 520
    :cond_16
    const-string p0, "public-read-write"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 521
    sget-object p0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PUBLIC_READ_WRITE:Lcom/obs/services/model/AccessControlList;

    return-object p0

    .line 522
    :cond_21
    const-string p0, "public-read-delivered"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 523
    sget-object p0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PUBLIC_READ:Lcom/obs/services/model/AccessControlList;

    return-object p0

    .line 524
    :cond_2c
    const-string p0, "public-read-write-delivered"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    .line 525
    sget-object p0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PUBLIC_READ_WRITE:Lcom/obs/services/model/AccessControlList;

    return-object p0

    .line 526
    :cond_37
    const-string p0, "authenticated-read"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    .line 527
    sget-object p0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_AUTHENTICATED_READ:Lcom/obs/services/model/AccessControlList;

    return-object p0

    .line 528
    :cond_42
    const-string p0, "bucket-owner-read"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4d

    .line 529
    sget-object p0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_BUCKET_OWNER_READ:Lcom/obs/services/model/AccessControlList;

    return-object p0

    .line 530
    :cond_4d
    const-string p0, "bucket-owner-full-control"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_58

    .line 531
    sget-object p0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_BUCKET_OWNER_FULL_CONTROL:Lcom/obs/services/model/AccessControlList;

    return-object p0

    .line 532
    :cond_58
    const-string p0, "log-delivery-write"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_63

    .line 533
    sget-object p0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_LOG_DELIVERY_WRITE:Lcom/obs/services/model/AccessControlList;

    return-object p0

    :cond_63
    const/4 p0, 0x0

    return-object p0
.end method

.method public transCompleteMultipartUpload(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/PartEtag;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 75
    :try_start_0
    const-string v0, "CompleteMultipartUpload"

    invoke-static {v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/obs/services/internal/V2Convertor$1;

    invoke-direct {v1, p0}, Lcom/obs/services/internal/V2Convertor$1;-><init>(Lcom/obs/services/internal/V2Convertor;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 92
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_55

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/model/PartEtag;

    .line 93
    const-string v1, "Part"

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    const-string v2, "PartNumber"

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/PartEtag;->getPartNumber()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_33

    const-string v2, ""

    goto :goto_3b

    :cond_33
    invoke-virtual {p1}, Lcom/obs/services/model/PartEtag;->getPartNumber()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3b
    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    const-string v2, "ETag"

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/PartEtag;->getEtag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    goto :goto_12

    .line 96
    :cond_55
    invoke-virtual {v0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_59} :catch_5a

    return-object p0

    :catch_5a
    move-exception p0

    .line 98
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    invoke-direct {p1, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public transEventType(Lcom/obs/services/model/EventTypeEnum;)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_26

    .line 458
    sget-object p0, Lcom/obs/services/internal/V2Convertor$2;->$SwitchMap$com$obs$services$model$EventTypeEnum:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_2a

    goto :goto_26

    .line 481
    :pswitch_e
    const-string p0, "s3:ObjectRemoved:DeleteMarkerCreated"

    return-object p0

    .line 478
    :pswitch_11
    const-string p0, "s3:ObjectRemoved:Delete"

    return-object p0

    .line 475
    :pswitch_14
    const-string p0, "s3:ObjectRemoved:*"

    return-object p0

    .line 472
    :pswitch_17
    const-string p0, "s3:ObjectCreated:CompleteMultipartUpload"

    return-object p0

    .line 469
    :pswitch_1a
    const-string p0, "s3:ObjectCreated:Copy"

    return-object p0

    .line 466
    :pswitch_1d
    const-string p0, "s3:ObjectCreated:Post"

    return-object p0

    .line 463
    :pswitch_20
    const-string p0, "s3:ObjectCreated:Put"

    return-object p0

    .line 460
    :pswitch_23
    const-string p0, "s3:ObjectCreated:*"

    return-object p0

    .line 487
    :cond_26
    :goto_26
    const-string p0, ""

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method public transGroupGrantee(Lcom/obs/services/model/GroupGranteeEnum;)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_1d

    .line 542
    sget-object p0, Lcom/obs/services/internal/V2Convertor$2;->$SwitchMap$com$obs$services$model$GroupGranteeEnum:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1a

    const/4 p1, 0x2

    if-eq p0, p1, :cond_17

    const/4 p1, 0x3

    if-eq p0, p1, :cond_14

    goto :goto_1d

    .line 550
    :cond_14
    const-string p0, "http://acs.amazonaws.com/groups/s3/LogDelivery"

    return-object p0

    .line 547
    :cond_17
    const-string p0, "http://acs.amazonaws.com/groups/global/AuthenticatedUsers"

    return-object p0

    .line 544
    :cond_1a
    const-string p0, "http://acs.amazonaws.com/groups/global/AllUsers"

    return-object p0

    .line 556
    :cond_1d
    :goto_1d
    const-string p0, ""

    return-object p0
.end method

.method public transKeyAndVersion([Lcom/obs/services/model/KeyAndVersion;ZLjava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 401
    :try_start_0
    const-string p0, "Delete"

    invoke-static {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    const-string v0, "Quiet"

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    if-eqz p3, :cond_23

    .line 403
    const-string p2, "EncodingType"

    invoke-virtual {p0, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 405
    :cond_23
    array-length p2, p1

    const/4 v0, 0x0

    :goto_25
    if-ge v0, p2, :cond_63

    aget-object v1, p1, v0

    .line 406
    invoke-virtual {v1}, Lcom/obs/services/model/KeyAndVersion;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/obs/services/internal/V2Convertor;->getEncodedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 407
    const-string v3, "Object"

    invoke-virtual {p0, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    const-string v4, "Key"

    invoke-virtual {v3, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v2

    .line 408
    invoke-virtual {v1}, Lcom/obs/services/model/KeyAndVersion;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 409
    const-string v3, "VersionId"

    invoke-virtual {v2, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/obs/services/model/KeyAndVersion;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 412
    :cond_63
    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_67} :catch_68

    return-object p0

    :catch_68
    move-exception p0

    .line 414
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    const-string p2, "Failed to build XML document"

    invoke-direct {p1, p2, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public transLifecycleConfiguration(Lcom/obs/services/model/LifecycleConfiguration;)Ljava/lang/String;
    .registers 9

    .line 127
    const-string v0, "Failed to build XML document for lifecycle"

    :try_start_2
    const-string v1, "LifecycleConfiguration"

    invoke-static {v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    .line 128
    invoke-virtual {p1}, Lcom/obs/services/model/LifecycleConfiguration;->getRules()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_110

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/obs/services/model/LifecycleConfiguration$Rule;

    .line 129
    const-string v3, "Rule"

    invoke-virtual {v1, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    .line 130
    invoke-virtual {v2}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid2(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 131
    const-string v4, "ID"

    invoke-virtual {v3, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    goto :goto_43

    :catch_3a
    move-exception p0

    goto/16 :goto_115

    :catch_3d
    move-exception p0

    goto/16 :goto_11b

    :catch_40
    move-exception p0

    goto/16 :goto_121

    .line 133
    :cond_43
    :goto_43
    invoke-virtual {v2}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getTagSet()Lcom/obs/services/model/BucketTagInfo$TagSet;

    move-result-object v4
    :try_end_47
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_47} :catch_40
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_47} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_47} :catch_3a

    const-string v5, "Prefix"

    if-eqz v4, :cond_76

    .line 135
    :try_start_4b
    const-string v4, "Filter"

    invoke-virtual {v3, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v4

    .line 136
    const-string v6, "And"

    invoke-virtual {v4, v6}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v4

    .line 137
    invoke-virtual {v2}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getPrefix()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6c

    .line 138
    invoke-virtual {v4, v5}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 140
    :cond_6c
    invoke-virtual {v2}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getTagSet()Lcom/obs/services/model/BucketTagInfo$TagSet;

    move-result-object v5

    if-eqz v5, :cond_8b

    .line 141
    invoke-direct {p0, v2, v4}, Lcom/obs/services/internal/V2Convertor;->transTagSet(Lcom/obs/services/model/LifecycleConfiguration$Rule;Lcom/obs/services/internal/xml/OBSXMLBuilder;)V

    goto :goto_8b

    .line 143
    :cond_76
    invoke-virtual {v2}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8b

    .line 144
    invoke-virtual {v3, v5}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 146
    :cond_8b
    :goto_8b
    const-string v4, "Status"

    invoke-virtual {v3, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getEnabled()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9e

    const-string v5, "Enabled"

    goto :goto_a0

    :cond_9e
    const-string v5, "Disabled"

    :goto_a0
    invoke-virtual {v4, v5}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 148
    invoke-virtual {v2}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getTransitions()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_ac

    .line 149
    invoke-direct {p0, v2, v3}, Lcom/obs/services/internal/V2Convertor;->transTransitions(Lcom/obs/services/model/LifecycleConfiguration$Rule;Lcom/obs/services/internal/xml/OBSXMLBuilder;)V

    .line 152
    :cond_ac
    invoke-virtual {v2}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getExpiration()Lcom/obs/services/model/LifecycleConfiguration$Expiration;

    move-result-object v4

    if-eqz v4, :cond_b5

    .line 153
    invoke-direct {p0, v2, v3}, Lcom/obs/services/internal/V2Convertor;->transExpiration(Lcom/obs/services/model/LifecycleConfiguration$Rule;Lcom/obs/services/internal/xml/OBSXMLBuilder;)V

    .line 156
    :cond_b5
    invoke-virtual {v2}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getNoncurrentVersionTransitions()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_be

    .line 157
    invoke-direct {p0, v2, v3}, Lcom/obs/services/internal/V2Convertor;->transNoncurrentVersionTransition(Lcom/obs/services/model/LifecycleConfiguration$Rule;Lcom/obs/services/internal/xml/OBSXMLBuilder;)V

    .line 160
    :cond_be
    invoke-virtual {v2}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getNoncurrentVersionExpiration()Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionExpiration;

    move-result-object v4

    if-eqz v4, :cond_e9

    .line 161
    invoke-virtual {v2}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getNoncurrentVersionExpiration()Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionExpiration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionExpiration;->getDays()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_e9

    .line 162
    const-string v4, "NoncurrentVersionExpiration"

    invoke-virtual {v3, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v4

    .line 163
    const-string v5, "NoncurrentDays"

    invoke-virtual {v4, v5}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v4

    .line 164
    invoke-virtual {v2}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getNoncurrentVersionExpiration()Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionExpiration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionExpiration;->getDays()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 163
    invoke-virtual {v4, v5}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 166
    :cond_e9
    invoke-virtual {v2}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getAbortIncompleteMultipartUpload()Lcom/obs/services/model/LifecycleConfiguration$AbortIncompleteMultipartUpload;

    move-result-object v4

    invoke-virtual {v4}, Lcom/obs/services/model/LifecycleConfiguration$AbortIncompleteMultipartUpload;->getDaysAfterInitiation()I

    move-result v4

    if-lez v4, :cond_10

    .line 167
    const-string v4, "AbortIncompleteMultipartUpload"

    invoke-virtual {v3, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    .line 168
    const-string v4, "DaysAfterInitiation"

    invoke-virtual {v3, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    .line 169
    invoke-virtual {v2}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getAbortIncompleteMultipartUpload()Lcom/obs/services/model/LifecycleConfiguration$AbortIncompleteMultipartUpload;

    move-result-object v2

    invoke-virtual {v2}, Lcom/obs/services/model/LifecycleConfiguration$AbortIncompleteMultipartUpload;->getDaysAfterInitiation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    goto/16 :goto_10

    .line 172
    :cond_110
    invoke-virtual {v1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_114
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4b .. :try_end_114} :catch_40
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4b .. :try_end_114} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_114} :catch_3a

    return-object p0

    .line 178
    :goto_115
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 176
    :goto_11b
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 174
    :goto_121
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public transReplicationConfiguration(Lcom/obs/services/model/ReplicationConfiguration;)Ljava/lang/String;
    .registers 7

    .line 422
    const-string v0, "arn:aws:s3:::"

    :try_start_2
    const-string v1, "ReplicationConfiguration"

    invoke-static {v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    const-string v2, "Agency"

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    .line 423
    invoke-virtual {p1}, Lcom/obs/services/model/ReplicationConfiguration;->getAgency()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    .line 424
    invoke-virtual {p1}, Lcom/obs/services/model/ReplicationConfiguration;->getRules()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ef

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/obs/services/model/ReplicationConfiguration$Rule;

    .line 425
    const-string v3, "Rule"

    invoke-virtual {v1, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    .line 426
    invoke-virtual {v2}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4b

    .line 427
    const-string v3, "ID"

    invoke-virtual {v1, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 429
    :cond_4b
    const-string v3, "Prefix"

    invoke-virtual {v1, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 430
    invoke-virtual {v2}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->getStatus()Lcom/obs/services/model/RuleStatusEnum;

    move-result-object v3

    if-eqz v3, :cond_73

    .line 431
    const-string v3, "Status"

    invoke-virtual {v1, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->getStatus()Lcom/obs/services/model/RuleStatusEnum;

    move-result-object v4

    invoke-virtual {v4}, Lcom/obs/services/model/RuleStatusEnum;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 433
    :cond_73
    invoke-virtual {v2}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->getHistoricalObjectReplication()Lcom/obs/services/model/HistoricalObjectReplicationEnum;

    move-result-object v3

    if-eqz v3, :cond_8a

    .line 434
    const-string v3, "HistoricalObjectReplication"

    invoke-virtual {v1, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->getHistoricalObjectReplication()Lcom/obs/services/model/HistoricalObjectReplicationEnum;

    move-result-object v4

    invoke-virtual {v4}, Lcom/obs/services/model/HistoricalObjectReplicationEnum;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 436
    :cond_8a
    invoke-virtual {v2}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->getDestination()Lcom/obs/services/model/ReplicationConfiguration$Destination;

    move-result-object v3

    if-eqz v3, :cond_e9

    .line 437
    invoke-virtual {v2}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->getDestination()Lcom/obs/services/model/ReplicationConfiguration$Destination;

    move-result-object v3

    invoke-virtual {v3}, Lcom/obs/services/model/ReplicationConfiguration$Destination;->getBucket()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 438
    const-string v4, "Destination"

    invoke-virtual {v1, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    const-string v4, "Bucket"

    invoke-virtual {v1, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    .line 439
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_af

    goto :goto_be

    :cond_af
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_be
    invoke-virtual {v1, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    .line 440
    invoke-virtual {v2}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->getDestination()Lcom/obs/services/model/ReplicationConfiguration$Destination;

    move-result-object v3

    invoke-virtual {v3}, Lcom/obs/services/model/ReplicationConfiguration$Destination;->getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;

    move-result-object v3

    if-eqz v3, :cond_e5

    .line 441
    const-string v3, "StorageClass"

    invoke-virtual {v1, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    .line 442
    invoke-virtual {v2}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->getDestination()Lcom/obs/services/model/ReplicationConfiguration$Destination;

    move-result-object v2

    invoke-virtual {v2}, Lcom/obs/services/model/ReplicationConfiguration$Destination;->getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/V2Convertor;->transStorageClass(Lcom/obs/services/model/StorageClassEnum;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 444
    :cond_e5
    invoke-virtual {v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    .line 446
    :cond_e9
    invoke-virtual {v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    goto/16 :goto_26

    .line 448
    :cond_ef
    invoke-virtual {v1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f3} :catch_f4

    return-object p0

    :catch_f4
    move-exception p0

    .line 450
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    const-string v0, "Failed to build XML document for Replication"

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public transRequestPaymentConfiguration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 116
    :try_start_0
    const-string p0, "RequestPaymentConfiguration"

    invoke-static {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    const-string p1, "Payer"

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 117
    invoke-static {p2}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    .line 120
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    const-string p2, "Failed to build XML document for requestPayment"

    invoke-direct {p1, p2, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public transRestoreObjectRequest(Lcom/obs/services/model/RestoreObjectRequest;)Ljava/lang/String;
    .registers 4

    .line 326
    :try_start_0
    const-string p0, "RestoreRequest"

    invoke-static {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    const-string v0, "Days"

    .line 327
    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/obs/services/model/RestoreObjectRequest;->getDays()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 328
    invoke-virtual {p1}, Lcom/obs/services/model/RestoreObjectRequest;->getRestoreTier()Lcom/obs/services/model/RestoreTierEnum;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 329
    const-string v0, "GlacierJobParameters"

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    const-string v1, "Tier"

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/obs/services/model/RestoreObjectRequest;->getRestoreTier()Lcom/obs/services/model/RestoreTierEnum;

    move-result-object p1

    invoke-virtual {p1}, Lcom/obs/services/model/RestoreTierEnum;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 331
    :cond_39
    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    return-object p0

    :catch_3e
    move-exception p0

    .line 333
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    const-string v0, "Failed to build XML document for restoreobject"

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public transStorageClass(Lcom/obs/services/model/StorageClassEnum;)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_23

    .line 494
    sget-object p0, Lcom/obs/services/internal/V2Convertor$2;->$SwitchMap$com$obs$services$model$StorageClassEnum:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_20

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1d

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1a

    const/4 p1, 0x4

    if-eq p0, p1, :cond_17

    goto :goto_23

    .line 505
    :cond_17
    const-string p0, "DEEP_ARCHIVE"

    return-object p0

    .line 502
    :cond_1a
    const-string p0, "GLACIER"

    return-object p0

    .line 499
    :cond_1d
    const-string p0, "STANDARD_IA"

    return-object p0

    .line 496
    :cond_20
    const-string p0, "STANDARD"

    return-object p0

    .line 511
    :cond_23
    :goto_23
    const-string p0, ""

    return-object p0
.end method

.method public transStoragePolicy(Lcom/obs/services/model/BucketStoragePolicyConfiguration;)Ljava/lang/String;
    .registers 4

    .line 340
    :try_start_0
    const-string v0, "StoragePolicy"

    invoke-static {v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    const-string v1, "DefaultStorageClass"

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    .line 341
    invoke-virtual {p1}, Lcom/obs/services/model/BucketStoragePolicyConfiguration;->getBucketStorageClass()Lcom/obs/services/model/StorageClassEnum;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/V2Convertor;->transStorageClass(Lcom/obs/services/model/StorageClassEnum;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 342
    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object p0

    :catch_1d
    move-exception p0

    .line 344
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    const-string v0, "Failed to build XML document for StoragePolicy"

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public transVersioningConfiguration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 105
    :try_start_0
    const-string p0, "VersioningConfiguration"

    invoke-static {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    const-string p1, "Status"

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 106
    invoke-static {p2}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 107
    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    .line 109
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    const-string p2, "Failed to build XML document for versioning"

    invoke-direct {p1, p2, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public transWebsiteConfiguration(Lcom/obs/services/model/WebsiteConfiguration;)Ljava/lang/String;
    .registers 5

    .line 241
    :try_start_0
    const-string v0, "WebsiteConfiguration"

    invoke-static {v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    .line 242
    invoke-virtual {p1}, Lcom/obs/services/model/WebsiteConfiguration;->getRedirectAllRequestsTo()Lcom/obs/services/model/RedirectAllRequest;

    move-result-object v1

    if-eqz v1, :cond_5b

    .line 243
    invoke-virtual {p1}, Lcom/obs/services/model/WebsiteConfiguration;->getRedirectAllRequestsTo()Lcom/obs/services/model/RedirectAllRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/model/RedirectAllRequest;->getHostName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 244
    const-string p0, "RedirectAllRequestsTo"

    invoke-virtual {v0, p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    const-string v0, "HostName"

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 245
    invoke-virtual {p1}, Lcom/obs/services/model/WebsiteConfiguration;->getRedirectAllRequestsTo()Lcom/obs/services/model/RedirectAllRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/model/RedirectAllRequest;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    .line 247
    :cond_32
    invoke-virtual {p1}, Lcom/obs/services/model/WebsiteConfiguration;->getRedirectAllRequestsTo()Lcom/obs/services/model/RedirectAllRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/model/RedirectAllRequest;->getRedirectProtocol()Lcom/obs/services/model/ProtocolEnum;

    move-result-object p0

    if-eqz p0, :cond_56

    .line 248
    invoke-virtual {v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    const-string v0, "Protocol"

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 249
    invoke-virtual {p1}, Lcom/obs/services/model/WebsiteConfiguration;->getRedirectAllRequestsTo()Lcom/obs/services/model/RedirectAllRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/obs/services/model/RedirectAllRequest;->getRedirectProtocol()Lcom/obs/services/model/ProtocolEnum;

    move-result-object p1

    invoke-virtual {p1}, Lcom/obs/services/model/ProtocolEnum;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    .line 251
    :cond_56
    invoke-virtual {v0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 253
    :cond_5b
    invoke-virtual {p1}, Lcom/obs/services/model/WebsiteConfiguration;->getSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid2(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 254
    const-string v1, "IndexDocument"

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    const-string v2, "Suffix"

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/WebsiteConfiguration;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 256
    :cond_78
    invoke-virtual {p1}, Lcom/obs/services/model/WebsiteConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid2(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 257
    const-string v1, "ErrorDocument"

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    const-string v2, "Key"

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/WebsiteConfiguration;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 259
    :cond_95
    invoke-virtual {p1}, Lcom/obs/services/model/WebsiteConfiguration;->getRouteRules()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c8

    invoke-virtual {p1}, Lcom/obs/services/model/WebsiteConfiguration;->getRouteRules()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c8

    .line 260
    const-string v1, "RoutingRules"

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    .line 261
    invoke-virtual {p1}, Lcom/obs/services/model/WebsiteConfiguration;->getRouteRules()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/obs/services/model/RouteRule;

    .line 262
    invoke-direct {p0, v0, v1}, Lcom/obs/services/internal/V2Convertor;->transWebsiteRoutingRule(Lcom/obs/services/internal/xml/OBSXMLBuilder;Lcom/obs/services/model/RouteRule;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    goto :goto_b3

    .line 264
    :cond_c4
    invoke-virtual {v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    .line 266
    :cond_c8
    invoke-virtual {v0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_cc} :catch_cd

    return-object p0

    :catch_cd
    move-exception p0

    .line 268
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    const-string v0, "Failed to build XML document for website"

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
