.class public Lcom/obs/services/BasicObsCredentialsProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/obs/services/IObsCredentialsProvider;


# instance fields
.field private volatile securityKey:Lcom/obs/services/model/ISecurityKey;


# direct methods
.method public constructor <init>(Lcom/obs/services/model/ISecurityKey;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-direct {p0, p1}, Lcom/obs/services/BasicObsCredentialsProvider;->checkISecurityKey(Lcom/obs/services/model/ISecurityKey;)V

    .line 26
    iput-object p1, p0, Lcom/obs/services/BasicObsCredentialsProvider;->securityKey:Lcom/obs/services/model/ISecurityKey;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/obs/services/BasicObsCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1, p2}, Lcom/obs/services/BasicObsCredentialsProvider;->checkSecurityKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/obs/services/internal/security/BasicSecurityKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/obs/services/internal/security/BasicSecurityKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/obs/services/BasicObsCredentialsProvider;->securityKey:Lcom/obs/services/model/ISecurityKey;

    return-void
.end method

.method private checkISecurityKey(Lcom/obs/services/model/ISecurityKey;)V
    .registers 2

    if-eqz p1, :cond_e

    .line 58
    invoke-interface {p1}, Lcom/obs/services/model/ISecurityKey;->getAccessKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lcom/obs/services/model/ISecurityKey;->getSecretKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/obs/services/BasicObsCredentialsProvider;->checkSecurityKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 56
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "securityKey should not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkSecurityKey(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_d

    if-eqz p1, :cond_5

    return-void

    .line 44
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "secretKey should not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "accessKey should not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getSecurityKey()Lcom/obs/services/model/ISecurityKey;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/obs/services/BasicObsCredentialsProvider;->securityKey:Lcom/obs/services/model/ISecurityKey;

    if-eqz v0, :cond_7

    .line 67
    iget-object p0, p0, Lcom/obs/services/BasicObsCredentialsProvider;->securityKey:Lcom/obs/services/model/ISecurityKey;

    return-object p0

    .line 64
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid securityKey"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSecurityKey(Lcom/obs/services/model/ISecurityKey;)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/obs/services/BasicObsCredentialsProvider;->checkISecurityKey(Lcom/obs/services/model/ISecurityKey;)V

    .line 51
    iput-object p1, p0, Lcom/obs/services/BasicObsCredentialsProvider;->securityKey:Lcom/obs/services/model/ISecurityKey;

    return-void
.end method
