.class public Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;
.super Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;
.source "SourceFile"


# static fields
.field private static final CONTENT_ALGORITHM:Ljava/lang/String; = "algorithm"

.field private static final CONTENT_DATE:Ljava/lang/String; = "date"

.field private static final CONTENT_PRODUCT:Ljava/lang/String; = "product"

.field private static final CONTENT_REGION:Ljava/lang/String; = "region"

.field private static final CONTENT_STRING_TO_SIGN:Ljava/lang/String; = "stringToSign"

.field private static final DEFAULT_SIGNED_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ISO8601_DATETIME_FORMAT:Ljava/lang/String; = "yyyyMMdd\'T\'HHmmss\'Z\'"

.field private static final ISO8601_DATE_FORMAT:Ljava/lang/String; = "yyyyMMdd"

.field private static final OSS4_HMAC_SHA256:Ljava/lang/String; = "OSS4-HMAC-SHA256"

.field private static final SECRET_KEY_PREFIX:Ljava/lang/String; = "aliyun_v4"

.field private static final SECURITY_TOKEN:Ljava/lang/String; = "x-oss-security-token"

.field private static final SEPARATOR_BACKSLASH:Ljava/lang/String; = "/"

.field private static final TERMINATOR:Ljava/lang/String; = "aliyun_v4_request"


# instance fields
.field additionalSignedHeaders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestDateTime:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    const-string v0, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-MD5"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->DEFAULT_SIGNED_HEADERS:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;)V
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;-><init>(Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;)V

    return-void
.end method

.method private addOSSContentSha256Header(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V
    .registers 3

    .line 142
    const-string p0, "x-oss-content-sha256"

    const-string v0, "UNSIGNED-PAYLOAD"

    invoke-virtual {p1, p0, v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addSignedHeaderIfNeeded(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V
    .registers 4

    .line 134
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->additionalSignedHeaders:Ljava/util/Set;

    .line 135
    const-string v0, "Host"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    .line 136
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    .line 137
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getEndpoint()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method private buildAuthorization(Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;)Ljava/lang/String;
    .registers 5

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Credential="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->getTempAK()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->buildScope()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 255
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->hasAdditionalSignedHeaders()Z

    move-result v0

    if-nez v0, :cond_2a

    const-string p0, ""

    goto :goto_43

    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ",AdditionalHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->additionalSignedHeaders:Ljava/util/Set;

    invoke-static {v1, p0}, Lcom/alibaba/sdk/android/oss/common/utils/StringUtils;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 256
    :goto_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ",Signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSS4-HMAC-SHA256 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildCanonicalRequest(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)Ljava/lang/String;
    .registers 9

    .line 161
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getMethod()Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;->signerParams:Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;->getResourcePath()Ljava/lang/String;

    move-result-object v1

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    .line 170
    invoke-static {v1, v3}, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    .line 174
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    if-eqz v1, :cond_66

    .line 176
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 177
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/common/utils/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/common/utils/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 181
    :cond_66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-string v4, ""

    :goto_75
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 183
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_ad

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_ad

    .line 185
    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_ad
    const-string v4, "&"

    goto :goto_75

    .line 189
    :cond_b0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->buildSortedHeadersMap(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object v1

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_cb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cb

    .line 197
    :cond_f6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, ";"

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->additionalSignedHeaders:Ljava/util/Set;

    invoke-static {v1, p0}, Lcom/alibaba/sdk/android/oss/common/utils/StringUtils;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    .line 201
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object p0

    const-string p1, "x-oss-content-sha256"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 205
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11e

    .line 206
    const-string p0, "UNSIGNED-PAYLOAD"

    .line 208
    :cond_11e
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildScope()Ljava/lang/String;
    .registers 4

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->getProduct()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "aliyun_v4_request"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildSignature([BLjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 249
    const-string p0, "HmacSHA256"

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/signer/ServiceSignature;->create(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/signer/ServiceSignature;

    move-result-object p0

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/utils/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/signer/ServiceSignature;->computeHash([B[B)[B

    move-result-object p0

    .line 250
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->toHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildSigningKey(Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;)[B
    .registers 5

    .line 239
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/signer/ServiceSignature;->create(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/signer/ServiceSignature;

    move-result-object v0

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aliyun_v4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->getTempSK()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/utils/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 241
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/alibaba/sdk/android/oss/signer/ServiceSignature;->computeHash([B[B)[B

    move-result-object p1

    .line 242
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/alibaba/sdk/android/oss/signer/ServiceSignature;->computeHash([B[B)[B

    move-result-object p1

    .line 243
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->getProduct()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/alibaba/sdk/android/oss/signer/ServiceSignature;->computeHash([B[B)[B

    move-result-object p0

    .line 245
    const-string p1, "aliyun_v4_request"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/sdk/android/oss/signer/ServiceSignature;->computeHash([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method private buildSortedHeadersMap(Ljava/util/Map;)Ljava/util/TreeMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    if-eqz p1, :cond_33

    .line 107
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-direct {p0, v2}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->hasSignedHeaders(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 110
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_33
    return-object v0
.end method

.method private buildStringToSign(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSS4-HMAC-SHA256\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->getDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->buildScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/alibaba/sdk/android/oss/common/utils/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    .line 235
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateSha256([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->toHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDate()Ljava/lang/String;
    .registers 2

    .line 83
    invoke-static {}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->getIso8601DateFormat()Ljava/text/DateFormat;

    move-result-object v0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->requestDateTime:Ljava/util/Date;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDateTime()Ljava/lang/String;
    .registers 2

    .line 79
    invoke-static {}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->getIso8601DateTimeFormat()Ljava/text/DateFormat;

    move-result-object v0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->requestDateTime:Ljava/util/Date;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getIso8601DateFormat()Ljava/text/DateFormat;
    .registers 4

    .line 73
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 74
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method private static getIso8601DateTimeFormat()Ljava/text/DateFormat;
    .registers 4

    .line 67
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 68
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method private getProduct()Ljava/lang/String;
    .registers 1

    .line 221
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;->signerParams:Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;->getProduct()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRegion()Ljava/lang/String;
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;->signerParams:Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;->getCloudBoxId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 215
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;->signerParams:Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;->getCloudBoxId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 217
    :cond_f
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;->signerParams:Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;->getRegion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hasAdditionalSignedHeaders()Z
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->additionalSignedHeaders:Ljava/util/Set;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private hasDefaultSignedHeaders(Ljava/lang/String;)Z
    .registers 2

    .line 87
    sget-object p0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->DEFAULT_SIGNED_HEADERS:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 90
    :cond_a
    const-string p0, "x-oss-"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private hasSignedHeaders(Ljava/lang/String;)Z
    .registers 3

    .line 94
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->hasDefaultSignedHeaders(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 97
    :cond_8
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->additionalSignedHeaders:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private initRequestDateTime()V
    .registers 6

    .line 152
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 153
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->getFixedSkewedTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_12

    .line 155
    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 157
    :cond_12
    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->requestDateTime:Ljava/util/Date;

    return-void
.end method

.method private resolveAdditionalSignedHeaders(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/internal/RequestMessage;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    if-eqz p2, :cond_4d

    .line 120
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 121
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-direct {p0, v1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->hasDefaultSignedHeaders(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 125
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 130
    :cond_4d
    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->additionalSignedHeaders:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method protected addAuthorizationHeader(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;)V
    .registers 5

    .line 262
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->buildStringToSign(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-direct {p0, p2}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->buildSigningKey(Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;)[B

    move-result-object v1

    .line 264
    invoke-direct {p0, v1, v0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->buildSignature([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-direct {p0, v0, p2}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->buildAuthorization(Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;)Ljava/lang/String;

    move-result-object p0

    .line 267
    const-string p2, "Authorization"

    invoke-virtual {p1, p2, p0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected addDateHeaderIfNeeded(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V
    .registers 3

    .line 147
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->initRequestDateTime()V

    .line 148
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Date"

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->getDateTime()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected buildStringToSign(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)Ljava/lang/String;
    .registers 2

    .line 272
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->buildCanonicalRequest(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)Ljava/lang/String;

    move-result-object p1

    .line 273
    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logInfo(Ljava/lang/String;)V

    .line 274
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->buildStringToSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public presign(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V
    .registers 9

    .line 314
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->getRegion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ce

    .line 317
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;->signerParams:Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;->getCredentialProvider()Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    move-result-object v0

    .line 318
    instance-of v1, v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSCustomSignerCredentialProvider;

    if-nez v1, :cond_c6

    .line 322
    instance-of v1, v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;

    if-eqz v1, :cond_1b

    .line 323
    check-cast v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;->getValidFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    move-result-object v0

    goto :goto_3d

    .line 324
    :cond_1b
    instance-of v1, v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;

    if-eqz v1, :cond_24

    .line 325
    invoke-interface {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;->getFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    move-result-object v0

    goto :goto_3d

    .line 326
    :cond_24
    instance-of v1, v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;

    if-eqz v1, :cond_3c

    .line 327
    check-cast v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;

    .line 328
    new-instance v1, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;->getAccessKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;->getAccessKeySecret()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object v0, v1

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    .line 332
    :goto_3d
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->initRequestDateTime()V

    .line 333
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;->signerParams:Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;->getExpiration()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-static {}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->getIso8601DateTimeFormat()Ljava/text/DateFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->requestDateTime:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "x-oss-date"

    invoke-virtual {p1, v3, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v2, "x-oss-expires"

    invoke-virtual {p1, v2, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;->signerParams:Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;->getAdditionalHeaderNames()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->resolveAdditionalSignedHeaders(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Ljava/util/Set;)V

    .line 339
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->addSignedHeaderIfNeeded(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    .line 340
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->hasAdditionalSignedHeaders()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 341
    const-string v1, ";"

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->additionalSignedHeaders:Ljava/util/Set;

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/utils/StringUtils;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-oss-additional-headers"

    invoke-virtual {p1, v2, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_7d
    const-string v1, "x-oss-signature-version"

    const-string v2, "OSS4-HMAC-SHA256"

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->useSecurityToken()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 348
    const-string v1, "x-oss-security-token"

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->getSecurityToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->getTempAK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->buildScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 351
    const-string v2, "x-oss-credential"

    invoke-virtual {p1, v2, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->buildStringToSign(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->buildSigningKey(Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;)[B

    move-result-object v0

    .line 355
    invoke-direct {p0, v0, v1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->buildSignature([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 357
    const-string v0, "x-oss-signature"

    invoke-virtual {p1, v0, p0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 319
    :cond_c6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "V4 signature does not support OSSCustomSignerCredentialProvider"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 315
    :cond_ce
    new-instance p0, Lcom/alibaba/sdk/android/oss/ClientException;

    const-string p1, "Region haven\'t been set!"

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sign(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V
    .registers 9

    .line 280
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->isAuthorizationRequired()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 283
    :cond_7
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->getRegion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 286
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;->signerParams:Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;->getCredentialProvider()Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    move-result-object v0

    .line 287
    instance-of v1, v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSCustomSignerCredentialProvider;

    if-nez v1, :cond_68

    .line 291
    instance-of v1, v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;

    if-eqz v1, :cond_22

    .line 292
    check-cast v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;->getValidFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    move-result-object v0

    goto :goto_44

    .line 293
    :cond_22
    instance-of v1, v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;

    if-eqz v1, :cond_2b

    .line 294
    invoke-interface {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;->getFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    move-result-object v0

    goto :goto_44

    .line 295
    :cond_2b
    instance-of v1, v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;

    if-eqz v1, :cond_43

    .line 296
    check-cast v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;

    .line 297
    new-instance v1, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;->getAccessKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;->getAccessKeySecret()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object v0, v1

    goto :goto_44

    :cond_43
    const/4 v0, 0x0

    .line 300
    :goto_44
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->addDateHeaderIfNeeded(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    if-eqz v0, :cond_5d

    .line 305
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getAdditionalHeaderNames()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->resolveAdditionalSignedHeaders(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Ljava/util/Set;)V

    .line 306
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->addSignedHeaderIfNeeded(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    .line 307
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;->addSecurityTokenHeaderIfNeeded(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;)V

    .line 308
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->addOSSContentSha256Header(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    .line 309
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->addAuthorizationHeader(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;)V

    return-void

    .line 302
    :cond_5d
    const-string p0, "Can\'t get a federation token"

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;)V

    .line 303
    new-instance p1, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-direct {p1, p0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 288
    :cond_68
    new-instance p0, Ljava/io/IOException;

    const-string p1, "V4 signature does not support OSSCustomSignerCredentialProvider"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 284
    :cond_70
    new-instance p0, Lcom/alibaba/sdk/android/oss/ClientException;

    const-string p1, "Region haven\'t been set!"

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
