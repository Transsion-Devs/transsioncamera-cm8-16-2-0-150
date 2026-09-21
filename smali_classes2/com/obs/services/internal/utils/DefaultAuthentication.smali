.class public Lcom/obs/services/internal/utils/DefaultAuthentication;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/obs/services/internal/utils/IAuthentication;


# instance fields
.field private authorization:Ljava/lang/String;

.field private canonicalRequest:Ljava/lang/String;

.field private stringToSign:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/obs/services/internal/utils/DefaultAuthentication;->canonicalRequest:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/obs/services/internal/utils/DefaultAuthentication;->stringToSign:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/obs/services/internal/utils/DefaultAuthentication;->authorization:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAuthorization()Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/obs/services/internal/utils/DefaultAuthentication;->authorization:Ljava/lang/String;

    return-object p0
.end method

.method public getCanonicalRequest()Ljava/lang/String;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/obs/services/internal/utils/DefaultAuthentication;->canonicalRequest:Ljava/lang/String;

    return-object p0
.end method

.method public getStringToSign()Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/obs/services/internal/utils/DefaultAuthentication;->stringToSign:Ljava/lang/String;

    return-object p0
.end method
