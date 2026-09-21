.class public Lcom/oef/services/model/QueryExtensionPolicyResult;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field private compress:Lcom/oef/services/model/CompressBean;

.field private fetch:Lcom/oef/services/model/FetchBean;

.field private transcode:Lcom/oef/services/model/TranscodeBean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 35
    new-instance v0, Lcom/oef/services/model/FetchBean;

    invoke-direct {v0}, Lcom/oef/services/model/FetchBean;-><init>()V

    iput-object v0, p0, Lcom/oef/services/model/QueryExtensionPolicyResult;->fetch:Lcom/oef/services/model/FetchBean;

    .line 36
    new-instance v0, Lcom/oef/services/model/TranscodeBean;

    invoke-direct {v0}, Lcom/oef/services/model/TranscodeBean;-><init>()V

    iput-object v0, p0, Lcom/oef/services/model/QueryExtensionPolicyResult;->transcode:Lcom/oef/services/model/TranscodeBean;

    .line 37
    new-instance v0, Lcom/oef/services/model/CompressBean;

    invoke-direct {v0}, Lcom/oef/services/model/CompressBean;-><init>()V

    iput-object v0, p0, Lcom/oef/services/model/QueryExtensionPolicyResult;->compress:Lcom/oef/services/model/CompressBean;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExtensionPolicyResult [fetch status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oef/services/model/QueryExtensionPolicyResult;->fetch:Lcom/oef/services/model/FetchBean;

    invoke-virtual {v1}, Lcom/oef/services/model/FetchBean;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fetch agency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oef/services/model/QueryExtensionPolicyResult;->fetch:Lcom/oef/services/model/FetchBean;

    invoke-virtual {v1}, Lcom/oef/services/model/FetchBean;->getAgency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transcode status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oef/services/model/QueryExtensionPolicyResult;->transcode:Lcom/oef/services/model/TranscodeBean;

    .line 116
    invoke-virtual {v1}, Lcom/oef/services/model/TranscodeBean;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transcode agency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oef/services/model/QueryExtensionPolicyResult;->transcode:Lcom/oef/services/model/TranscodeBean;

    invoke-virtual {v1}, Lcom/oef/services/model/TranscodeBean;->getAgency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", compress status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oef/services/model/QueryExtensionPolicyResult;->compress:Lcom/oef/services/model/CompressBean;

    .line 117
    invoke-virtual {v1}, Lcom/oef/services/model/CompressBean;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", compress agency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oef/services/model/QueryExtensionPolicyResult;->compress:Lcom/oef/services/model/CompressBean;

    invoke-virtual {p0}, Lcom/oef/services/model/CompressBean;->getAgency()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
