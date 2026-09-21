.class public Lcom/obs/services/internal/security/SecurityKeyBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private accessKey:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "access"
    .end annotation
.end field

.field private expiresDate:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "expires_at"
    .end annotation
.end field

.field private secretKey:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "secret"
    .end annotation
.end field

.field private securityToken:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "securitytoken"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessKey()Ljava/lang/String;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/obs/services/internal/security/SecurityKeyBean;->accessKey:Ljava/lang/String;

    return-object p0
.end method

.method public getExpiresDate()Ljava/lang/String;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/obs/services/internal/security/SecurityKeyBean;->expiresDate:Ljava/lang/String;

    return-object p0
.end method

.method public getSecretKey()Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/obs/services/internal/security/SecurityKeyBean;->secretKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSecurityToken()Ljava/lang/String;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/obs/services/internal/security/SecurityKeyBean;->securityToken:Ljava/lang/String;

    return-object p0
.end method

.method public setAccessKey(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/obs/services/internal/security/SecurityKeyBean;->accessKey:Ljava/lang/String;

    return-void
.end method

.method public setExpiresDate(Ljava/lang/String;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/obs/services/internal/security/SecurityKeyBean;->expiresDate:Ljava/lang/String;

    return-void
.end method

.method public setSecretKey(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/obs/services/internal/security/SecurityKeyBean;->secretKey:Ljava/lang/String;

    return-void
.end method

.method public setSecurityToken(Ljava/lang/String;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/obs/services/internal/security/SecurityKeyBean;->securityToken:Ljava/lang/String;

    return-void
.end method
