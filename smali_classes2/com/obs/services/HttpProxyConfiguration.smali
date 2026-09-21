.class public Lcom/obs/services/HttpProxyConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private domain:Ljava/lang/String;

.field private proxyAddr:Ljava/lang/String;

.field private proxyPort:I

.field private proxyUname:Ljava/lang/String;

.field private userPasswd:Ljava/lang/String;

.field private workstation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/obs/services/HttpProxyConfiguration;->proxyAddr:Ljava/lang/String;

    .line 53
    iput p2, p0, Lcom/obs/services/HttpProxyConfiguration;->proxyPort:I

    .line 54
    iput-object p3, p0, Lcom/obs/services/HttpProxyConfiguration;->proxyUname:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/obs/services/HttpProxyConfiguration;->userPasswd:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/obs/services/HttpProxyConfiguration;->domain:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/obs/services/HttpProxyConfiguration;->workstation:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 78
    invoke-direct/range {p0 .. p5}, Lcom/obs/services/HttpProxyConfiguration;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/obs/services/HttpProxyConfiguration;->proxyAddr:Ljava/lang/String;

    iput-object p1, p0, Lcom/obs/services/HttpProxyConfiguration;->workstation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .registers 1

    .line 174
    iget-object p0, p0, Lcom/obs/services/HttpProxyConfiguration;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public getProxyAddr()Ljava/lang/String;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/obs/services/HttpProxyConfiguration;->proxyAddr:Ljava/lang/String;

    return-object p0
.end method

.method public getProxyPort()I
    .registers 1

    .line 107
    iget p0, p0, Lcom/obs/services/HttpProxyConfiguration;->proxyPort:I

    return p0
.end method

.method public getProxyUName()Ljava/lang/String;
    .registers 1

    .line 126
    iget-object p0, p0, Lcom/obs/services/HttpProxyConfiguration;->proxyUname:Ljava/lang/String;

    return-object p0
.end method

.method public getUserPaaswd()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    invoke-virtual {p0}, Lcom/obs/services/HttpProxyConfiguration;->getUserPasswd()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserPasswd()Ljava/lang/String;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/obs/services/HttpProxyConfiguration;->userPasswd:Ljava/lang/String;

    return-object p0
.end method

.method public getWorkstation()Ljava/lang/String;
    .registers 1

    .line 193
    iget-object p0, p0, Lcom/obs/services/HttpProxyConfiguration;->workstation:Ljava/lang/String;

    return-object p0
.end method

.method public setDomain(Ljava/lang/String;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lcom/obs/services/HttpProxyConfiguration;->domain:Ljava/lang/String;

    return-void
.end method

.method public setProxyAddr(Ljava/lang/String;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/obs/services/HttpProxyConfiguration;->proxyAddr:Ljava/lang/String;

    return-void
.end method

.method public setProxyPort(I)V
    .registers 2

    .line 117
    iput p1, p0, Lcom/obs/services/HttpProxyConfiguration;->proxyPort:I

    return-void
.end method

.method public setProxyUName(Ljava/lang/String;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/obs/services/HttpProxyConfiguration;->proxyUname:Ljava/lang/String;

    return-void
.end method

.method public setUserPaaswd(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    invoke-virtual {p0, p1}, Lcom/obs/services/HttpProxyConfiguration;->setUserPasswd(Ljava/lang/String;)V

    return-void
.end method

.method public setUserPasswd(Ljava/lang/String;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/obs/services/HttpProxyConfiguration;->userPasswd:Ljava/lang/String;

    return-void
.end method

.method public setWorkstation(Ljava/lang/String;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lcom/obs/services/HttpProxyConfiguration;->workstation:Ljava/lang/String;

    return-void
.end method
