.class public Lcom/obs/services/internal/security/ProviderCredentials;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final log:Lcom/obs/log/ILogger;


# instance fields
.field protected authType:Lcom/obs/services/model/AuthTypeEnum;

.field private isAuthTypeNegotiation:Z

.field private localAuthType:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/obs/services/model/AuthTypeEnum;",
            ">;"
        }
    .end annotation
.end field

.field private obsCredentialsProvider:Lcom/obs/services/IObsCredentialsProvider;

.field private secureRandom:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-class v0, Lcom/obs/services/internal/security/ProviderCredentials;

    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/Class;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/security/ProviderCredentials;->log:Lcom/obs/log/ILogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/obs/services/BasicObsCredentialsProvider;

    invoke-direct {v0, p1, p2, p3}, Lcom/obs/services/BasicObsCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/security/ProviderCredentials;->setObsCredentialsProvider(Lcom/obs/services/IObsCredentialsProvider;)V

    return-void
.end method


# virtual methods
.method public getAuthType()Lcom/obs/services/model/AuthTypeEnum;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/obs/services/internal/security/ProviderCredentials;->authType:Lcom/obs/services/model/AuthTypeEnum;

    return-object p0
.end method

.method public getIsAuthTypeNegotiation()Z
    .registers 1

    .line 71
    iget-boolean p0, p0, Lcom/obs/services/internal/security/ProviderCredentials;->isAuthTypeNegotiation:Z

    return p0
.end method

.method public getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;
    .registers 3

    .line 87
    iget-boolean v0, p0, Lcom/obs/services/internal/security/ProviderCredentials;->isAuthTypeNegotiation:Z

    if-nez v0, :cond_7

    .line 88
    iget-object p0, p0, Lcom/obs/services/internal/security/ProviderCredentials;->authType:Lcom/obs/services/model/AuthTypeEnum;

    return-object p0

    .line 90
    :cond_7
    iget-object v0, p0, Lcom/obs/services/internal/security/ProviderCredentials;->localAuthType:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/model/AuthTypeEnum;

    if-nez p1, :cond_14

    .line 91
    iget-object p0, p0, Lcom/obs/services/internal/security/ProviderCredentials;->authType:Lcom/obs/services/model/AuthTypeEnum;

    return-object p0

    :cond_14
    return-object p1
.end method

.method public getLocalAuthType()Ljava/util/LinkedHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/obs/services/model/AuthTypeEnum;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object p0, p0, Lcom/obs/services/internal/security/ProviderCredentials;->localAuthType:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public getObsCredentialsProvider()Lcom/obs/services/IObsCredentialsProvider;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/obs/services/internal/security/ProviderCredentials;->obsCredentialsProvider:Lcom/obs/services/IObsCredentialsProvider;

    return-object p0
.end method

.method public getRegion()Ljava/lang/String;
    .registers 1

    .line 42
    const-string p0, "region"

    return-object p0
.end method

.method public getSecureRandom()Ljava/security/SecureRandom;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/obs/services/internal/security/ProviderCredentials;->secureRandom:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public getSecurityKey()Lcom/obs/services/internal/security/BasicSecurityKey;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/obs/services/internal/security/ProviderCredentials;->obsCredentialsProvider:Lcom/obs/services/IObsCredentialsProvider;

    invoke-interface {p0}, Lcom/obs/services/IObsCredentialsProvider;->getSecurityKey()Lcom/obs/services/model/ISecurityKey;

    move-result-object p0

    check-cast p0, Lcom/obs/services/internal/security/BasicSecurityKey;

    return-object p0
.end method

.method public setAuthType(Lcom/obs/services/model/AuthTypeEnum;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/obs/services/internal/security/ProviderCredentials;->authType:Lcom/obs/services/model/AuthTypeEnum;

    return-void
.end method

.method public setIsAuthTypeNegotiation(Z)V
    .registers 2

    .line 67
    iput-boolean p1, p0, Lcom/obs/services/internal/security/ProviderCredentials;->isAuthTypeNegotiation:Z

    return-void
.end method

.method public setLocalAuthType(Ljava/lang/String;Lcom/obs/services/model/AuthTypeEnum;)V
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/obs/services/internal/security/ProviderCredentials;->localAuthType:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_10

    .line 99
    :cond_b
    iget-object p0, p0, Lcom/obs/services/internal/security/ProviderCredentials;->localAuthType:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    :goto_10
    return-void
.end method

.method public setLocalAuthType(Ljava/util/LinkedHashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/obs/services/model/AuthTypeEnum;",
            ">;)V"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/obs/services/internal/security/ProviderCredentials;->localAuthType:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public setLocalAuthTypeCacheCapacity(I)V
    .registers 8

    .line 50
    new-instance v0, Lcom/obs/services/internal/security/ProviderCredentials$1;

    const v3, 0x3f333333    # 0.7f

    const/4 v4, 0x1

    move v5, p1

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/obs/services/internal/security/ProviderCredentials$1;-><init>(Lcom/obs/services/internal/security/ProviderCredentials;IFZI)V

    iput-object v0, v1, Lcom/obs/services/internal/security/ProviderCredentials;->localAuthType:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public setObsCredentialsProvider(Lcom/obs/services/IObsCredentialsProvider;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/obs/services/internal/security/ProviderCredentials;->obsCredentialsProvider:Lcom/obs/services/IObsCredentialsProvider;

    return-void
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/obs/services/internal/security/ProviderCredentials;->secureRandom:Ljava/security/SecureRandom;

    return-void
.end method
