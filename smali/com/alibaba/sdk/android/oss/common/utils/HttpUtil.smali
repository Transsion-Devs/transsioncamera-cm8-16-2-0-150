.class public Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ENCODED_CHARACTERS_WITHOUT_SLASHES:[Ljava/lang/String;

.field private static final ENCODED_CHARACTERS_WITHOUT_SLASHES_REPLACEMENTS:[Ljava/lang/String;

.field private static final ENCODED_CHARACTERS_WITH_SLASHES:[Ljava/lang/String;

.field private static final ENCODED_CHARACTERS_WITH_SLASHES_REPLACEMENTS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 19
    const-string v0, "%2F"

    const-string v1, "+"

    const-string v2, "*"

    const-string v3, "%7E"

    filled-new-array {v1, v2, v3, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->ENCODED_CHARACTERS_WITH_SLASHES:[Ljava/lang/String;

    .line 20
    const-string v0, "/"

    const-string v4, "%20"

    const-string v5, "%2A"

    const-string v6, "~"

    filled-new-array {v4, v5, v6, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->ENCODED_CHARACTERS_WITH_SLASHES_REPLACEMENTS:[Ljava/lang/String;

    .line 22
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->ENCODED_CHARACTERS_WITHOUT_SLASHES:[Ljava/lang/String;

    .line 23
    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->ENCODED_CHARACTERS_WITHOUT_SLASHES_REPLACEMENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static paramToQueryString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_52

    .line 68
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_52

    .line 72
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 76
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v1, :cond_36

    .line 79
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_36
    invoke-static {v3, p1}, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_4b

    .line 85
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, p1}, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4b
    const/4 v1, 0x0

    goto :goto_17

    .line 91
    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_52
    :goto_52
    const/4 p0, 0x0

    return-object p0
.end method

.method public static urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    .line 35
    const-string p0, ""

    return-object p0

    .line 39
    :cond_5
    :try_start_5
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 41
    const-string p1, "+"

    const-string v0, "%20"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "*"

    const-string v0, "%2A"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "%7E"

    const-string v0, "~"

    .line 42
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "%2F"

    const-string v0, "/"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_29} :catch_2a

    return-object p0

    :catch_2a
    move-exception p0

    .line 44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "failed to encode url!"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static urlEncode(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    .line 50
    const-string p0, ""

    return-object p0

    .line 53
    :cond_5
    :try_start_5
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_16

    .line 55
    sget-object p1, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->ENCODED_CHARACTERS_WITHOUT_SLASHES:[Ljava/lang/String;

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->ENCODED_CHARACTERS_WITHOUT_SLASHES_REPLACEMENTS:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/common/utils/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 57
    :cond_16
    sget-object p1, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->ENCODED_CHARACTERS_WITH_SLASHES:[Ljava/lang/String;

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->ENCODED_CHARACTERS_WITH_SLASHES_REPLACEMENTS:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/common/utils/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    move-exception p0

    .line 59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FailedToEncodeUri"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
