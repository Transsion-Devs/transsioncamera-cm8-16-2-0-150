.class public Lcom/obs/services/model/Redirect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private hostName:Ljava/lang/String;

.field private httpRedirectCode:Ljava/lang/String;

.field private protocol:Lcom/obs/services/model/ProtocolEnum;

.field private replaceKeyPrefixWith:Ljava/lang/String;

.field private replaceKeyWith:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHostName()Ljava/lang/String;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/obs/services/model/Redirect;->hostName:Ljava/lang/String;

    return-object p0
.end method

.method public getHttpRedirectCode()Ljava/lang/String;
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/obs/services/model/Redirect;->httpRedirectCode:Ljava/lang/String;

    return-object p0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    iget-object p0, p0, Lcom/obs/services/model/Redirect;->protocol:Lcom/obs/services/model/ProtocolEnum;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/obs/services/model/ProtocolEnum;->getCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRedirectProtocol()Lcom/obs/services/model/ProtocolEnum;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/obs/services/model/Redirect;->protocol:Lcom/obs/services/model/ProtocolEnum;

    return-object p0
.end method

.method public getReplaceKeyPrefixWith()Ljava/lang/String;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/obs/services/model/Redirect;->replaceKeyPrefixWith:Ljava/lang/String;

    return-object p0
.end method

.method public getReplaceKeyWith()Ljava/lang/String;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/obs/services/model/Redirect;->replaceKeyWith:Ljava/lang/String;

    return-object p0
.end method

.method public setHostName(Ljava/lang/String;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/obs/services/model/Redirect;->hostName:Ljava/lang/String;

    return-void
.end method

.method public setHttpRedirectCode(Ljava/lang/String;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/obs/services/model/Redirect;->httpRedirectCode:Ljava/lang/String;

    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    invoke-static {p1}, Lcom/obs/services/model/ProtocolEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/ProtocolEnum;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/Redirect;->protocol:Lcom/obs/services/model/ProtocolEnum;

    return-void
.end method

.method public setRedirectProtocol(Lcom/obs/services/model/ProtocolEnum;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/obs/services/model/Redirect;->protocol:Lcom/obs/services/model/ProtocolEnum;

    return-void
.end method

.method public setReplaceKeyPrefixWith(Ljava/lang/String;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/obs/services/model/Redirect;->replaceKeyPrefixWith:Ljava/lang/String;

    return-void
.end method

.method public setReplaceKeyWith(Ljava/lang/String;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/obs/services/model/Redirect;->replaceKeyWith:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RedirectRule [protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/Redirect;->protocol:Lcom/obs/services/model/ProtocolEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hostName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/Redirect;->hostName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", replaceKeyPrefixWith="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/Redirect;->replaceKeyPrefixWith:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", replaceKeyWith="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/Redirect;->replaceKeyWith:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", httpRedirectCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/Redirect;->httpRedirectCode:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
