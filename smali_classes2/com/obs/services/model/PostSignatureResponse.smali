.class public Lcom/obs/services/model/PostSignatureResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected expiration:Ljava/lang/String;

.field protected originPolicy:Ljava/lang/String;

.field protected policy:Ljava/lang/String;

.field protected signature:Ljava/lang/String;

.field protected token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/obs/services/model/PostSignatureResponse;->policy:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/obs/services/model/PostSignatureResponse;->originPolicy:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/obs/services/model/PostSignatureResponse;->signature:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/obs/services/model/PostSignatureResponse;->expiration:Ljava/lang/String;

    .line 43
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ":"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/PostSignatureResponse;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExpiration()Ljava/lang/String;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/obs/services/model/PostSignatureResponse;->expiration:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginPolicy()Ljava/lang/String;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/obs/services/model/PostSignatureResponse;->originPolicy:Ljava/lang/String;

    return-object p0
.end method

.method public getPolicy()Ljava/lang/String;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/obs/services/model/PostSignatureResponse;->policy:Ljava/lang/String;

    return-object p0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/obs/services/model/PostSignatureResponse;->signature:Ljava/lang/String;

    return-object p0
.end method

.method public getToken()Ljava/lang/String;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/obs/services/model/PostSignatureResponse;->token:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostSignatureResponse [policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PostSignatureResponse;->policy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", originPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PostSignatureResponse;->originPolicy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PostSignatureResponse;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PostSignatureResponse;->expiration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/PostSignatureResponse;->token:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
