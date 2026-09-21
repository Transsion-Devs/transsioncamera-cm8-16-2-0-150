.class public Lcom/obs/services/model/V4PostSignatureResponse;
.super Lcom/obs/services/model/PostSignatureResponse;
.source "SourceFile"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private credential:Ljava/lang/String;

.field private date:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 30
    invoke-direct {p0}, Lcom/obs/services/model/PostSignatureResponse;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/obs/services/model/PostSignatureResponse;->policy:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/obs/services/model/PostSignatureResponse;->originPolicy:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/obs/services/model/V4PostSignatureResponse;->algorithm:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/obs/services/model/V4PostSignatureResponse;->credential:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/obs/services/model/V4PostSignatureResponse;->date:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcom/obs/services/model/PostSignatureResponse;->signature:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Lcom/obs/services/model/PostSignatureResponse;->expiration:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/obs/services/model/V4PostSignatureResponse;->algorithm:Ljava/lang/String;

    return-object p0
.end method

.method public getCredential()Ljava/lang/String;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/obs/services/model/V4PostSignatureResponse;->credential:Ljava/lang/String;

    return-object p0
.end method

.method public getDate()Ljava/lang/String;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/obs/services/model/V4PostSignatureResponse;->date:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V4PostSignatureResponse [algorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/V4PostSignatureResponse;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", credential="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/V4PostSignatureResponse;->credential:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/V4PostSignatureResponse;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PostSignatureResponse;->expiration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PostSignatureResponse;->policy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", originPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PostSignatureResponse;->originPolicy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/PostSignatureResponse;->signature:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
