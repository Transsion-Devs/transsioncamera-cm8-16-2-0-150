.class public Lcom/obs/services/model/RedirectAllRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private hostName:Ljava/lang/String;

.field private protocol:Lcom/obs/services/model/ProtocolEnum;


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

    .line 73
    iget-object p0, p0, Lcom/obs/services/model/RedirectAllRequest;->hostName:Ljava/lang/String;

    return-object p0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    iget-object p0, p0, Lcom/obs/services/model/RedirectAllRequest;->protocol:Lcom/obs/services/model/ProtocolEnum;

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

    .line 54
    iget-object p0, p0, Lcom/obs/services/model/RedirectAllRequest;->protocol:Lcom/obs/services/model/ProtocolEnum;

    return-object p0
.end method

.method public setHostName(Ljava/lang/String;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/obs/services/model/RedirectAllRequest;->hostName:Ljava/lang/String;

    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    invoke-static {p1}, Lcom/obs/services/model/ProtocolEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/ProtocolEnum;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/RedirectAllRequest;->protocol:Lcom/obs/services/model/ProtocolEnum;

    return-void
.end method

.method public setRedirectProtocol(Lcom/obs/services/model/ProtocolEnum;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/obs/services/model/RedirectAllRequest;->protocol:Lcom/obs/services/model/ProtocolEnum;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RedirectAllRequest [protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/RedirectAllRequest;->protocol:Lcom/obs/services/model/ProtocolEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hostName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/RedirectAllRequest;->hostName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
