.class public Lcom/obs/services/internal/security/BasicSecurityKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/obs/services/model/ISecurityKey;


# instance fields
.field protected accessKey:Ljava/lang/String;

.field protected secretKey:Ljava/lang/String;

.field protected securityToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/obs/services/internal/security/BasicSecurityKey;->accessKey:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/obs/services/internal/security/BasicSecurityKey;->secretKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/obs/services/internal/security/BasicSecurityKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iput-object p3, p0, Lcom/obs/services/internal/security/BasicSecurityKey;->securityToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessKey()Ljava/lang/String;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/obs/services/internal/security/BasicSecurityKey;->accessKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSecretKey()Ljava/lang/String;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/obs/services/internal/security/BasicSecurityKey;->secretKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSecurityToken()Ljava/lang/String;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/obs/services/internal/security/BasicSecurityKey;->securityToken:Ljava/lang/String;

    return-object p0
.end method
