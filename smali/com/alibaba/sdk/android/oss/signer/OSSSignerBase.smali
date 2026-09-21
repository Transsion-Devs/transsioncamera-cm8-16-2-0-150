.class public abstract Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/signer/RequestSigner;
.implements Lcom/alibaba/sdk/android/oss/signer/RequestPresigner;


# instance fields
.field protected final signerParams:Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;


# direct methods
.method protected constructor <init>(Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;->signerParams:Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;

    return-void
.end method

.method public static createRequestPresigner(Lcom/alibaba/sdk/android/oss/signer/SignVersion;Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;)Lcom/alibaba/sdk/android/oss/signer/RequestPresigner;
    .registers 3

    .line 91
    sget-object v0, Lcom/alibaba/sdk/android/oss/signer/SignVersion;->V4:Lcom/alibaba/sdk/android/oss/signer/SignVersion;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 92
    new-instance p0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;-><init>(Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;)V

    return-object p0

    .line 94
    :cond_e
    new-instance p0, Lcom/alibaba/sdk/android/oss/signer/OSSV1Signer;

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/signer/OSSV1Signer;-><init>(Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;)V

    return-object p0
.end method

.method public static createRequestSigner(Lcom/alibaba/sdk/android/oss/signer/SignVersion;Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;)Lcom/alibaba/sdk/android/oss/signer/RequestSigner;
    .registers 3

    .line 83
    sget-object v0, Lcom/alibaba/sdk/android/oss/signer/SignVersion;->V4:Lcom/alibaba/sdk/android/oss/signer/SignVersion;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 84
    new-instance p0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;-><init>(Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;)V

    return-object p0

    .line 86
    :cond_e
    new-instance p0, Lcom/alibaba/sdk/android/oss/signer/OSSV1Signer;

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/signer/OSSV1Signer;-><init>(Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;)V

    return-object p0
.end method


# virtual methods
.method protected abstract addAuthorizationHeader(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;)V
.end method

.method protected addDateHeaderIfNeeded(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V
    .registers 6

    .line 27
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 28
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->getFixedSkewedTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_12

    .line 30
    invoke-virtual {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 32
    :cond_12
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Date"

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected addSecurityTokenHeaderIfNeeded(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;)V
    .registers 3

    .line 36
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->useSecurityToken()Z

    move-result p0

    if-eqz p0, :cond_15

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->isUseUrlSignature()Z

    move-result p0

    if-nez p0, :cond_15

    .line 37
    const-string p0, "x-oss-security-token"

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->getSecurityToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method protected abstract buildStringToSign(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)Ljava/lang/String;
.end method

.method public sign(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V
    .registers 10

    .line 47
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->isAuthorizationRequired()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 51
    :cond_7
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;->signerParams:Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;->getCredentialProvider()Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    move-result-object v0

    .line 53
    instance-of v1, v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;

    if-eqz v1, :cond_19

    .line 54
    move-object v1, v0

    check-cast v1, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;->getValidFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    move-result-object v1

    goto :goto_3c

    .line 55
    :cond_19
    instance-of v1, v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;

    if-eqz v1, :cond_22

    .line 56
    invoke-interface {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;->getFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    move-result-object v1

    goto :goto_3c

    .line 57
    :cond_22
    instance-of v1, v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;

    if-eqz v1, :cond_3b

    .line 58
    move-object v1, v0

    check-cast v1, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;

    .line 59
    new-instance v2, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;->getAccessKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;->getAccessKeySecret()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object v1, v2

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    .line 62
    :goto_3c
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;->addDateHeaderIfNeeded(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    .line 63
    instance-of v2, v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSCustomSignerCredentialProvider;

    if-eqz v2, :cond_5f

    .line 65
    :try_start_43
    check-cast v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSCustomSignerCredentialProvider;

    .line 66
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;->buildStringToSign(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)Ljava/lang/String;

    move-result-object p0

    .line 67
    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSCustomSignerCredentialProvider;->signContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 68
    const-string v0, "Authorization"

    invoke-virtual {p1, v0, p0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_52} :catch_53

    return-void

    :catch_53
    move-exception v0

    move-object p0, v0

    .line 70
    new-instance p1, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_5f
    if-eqz v1, :cond_68

    .line 77
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;->addSecurityTokenHeaderIfNeeded(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;)V

    .line 78
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;->addAuthorizationHeader(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;)V

    return-void

    .line 74
    :cond_68
    const-string p0, "Can\'t get a federation token"

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;)V

    .line 75
    new-instance p1, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-direct {p1, p0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
