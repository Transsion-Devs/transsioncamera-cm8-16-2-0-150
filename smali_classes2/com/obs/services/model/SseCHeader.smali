.class public Lcom/obs/services/model/SseCHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private algorithm:Lcom/obs/services/model/ServerAlgorithm;

.field private sseAlgorithm:Lcom/obs/services/model/SSEAlgorithmEnum;

.field private sseCKey:[B

.field private sseCKeyBase64:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/obs/services/model/SSEAlgorithmEnum;->AES256:Lcom/obs/services/model/SSEAlgorithmEnum;

    iput-object v0, p0, Lcom/obs/services/model/SseCHeader;->sseAlgorithm:Lcom/obs/services/model/SSEAlgorithmEnum;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Lcom/obs/services/model/ServerAlgorithm;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    iget-object p0, p0, Lcom/obs/services/model/SseCHeader;->algorithm:Lcom/obs/services/model/ServerAlgorithm;

    return-object p0
.end method

.method public getSSEAlgorithm()Lcom/obs/services/model/SSEAlgorithmEnum;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/obs/services/model/SseCHeader;->sseAlgorithm:Lcom/obs/services/model/SSEAlgorithmEnum;

    return-object p0
.end method

.method public getSseCKey()[B
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/obs/services/model/SseCHeader;->sseCKey:[B

    if-eqz p0, :cond_b

    .line 74
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    :cond_b
    const/4 p0, 0x0

    .line 76
    new-array p0, p0, [B

    return-object p0
.end method

.method public getSseCKeyBase64()Ljava/lang/String;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/obs/services/model/SseCHeader;->sseCKeyBase64:Ljava/lang/String;

    return-object p0
.end method

.method public setAlgorithm(Lcom/obs/services/model/ServerAlgorithm;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/obs/services/model/SseCHeader;->algorithm:Lcom/obs/services/model/ServerAlgorithm;

    return-void
.end method

.method public setSseCKey(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_a

    .line 90
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/SseCHeader;->sseCKey:[B

    :cond_a
    return-void
.end method

.method public setSseCKey([B)V
    .registers 2

    if-eqz p1, :cond_b

    .line 104
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/obs/services/model/SseCHeader;->sseCKey:[B

    return-void

    :cond_b
    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lcom/obs/services/model/SseCHeader;->sseCKey:[B

    return-void
.end method

.method public setSseCKeyBase64(Ljava/lang/String;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/obs/services/model/SseCHeader;->sseCKeyBase64:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SseCHeader [algorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/SseCHeader;->algorithm:Lcom/obs/services/model/ServerAlgorithm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sseCKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/SseCHeader;->sseCKey:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sseCKeyBase64="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/SseCHeader;->sseCKeyBase64:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
