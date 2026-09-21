.class public Lcom/obs/log/InterfaceLogBean;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DATE_FMT_YYYYMMDDHHMMSS:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"


# instance fields
.field private interfaceType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private product:Ljava/lang/String;

.field private protocolType:Ljava/lang/String;

.field private reqParams:Ljava/lang/String;

.field private reqTime:Ljava/util/Date;

.field private reqTimeAsString:Ljava/lang/String;

.field private respParams:Ljava/lang/String;

.field private respTime:Ljava/util/Date;

.field private respTimeAsString:Ljava/lang/String;

.field private resultCode:Ljava/lang/String;

.field private sourceAddr:Ljava/lang/String;

.field private targetAddr:Ljava/lang/String;

.field private transactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const-string p2, ""

    iput-object p2, p0, Lcom/obs/log/InterfaceLogBean;->transactionId:Ljava/lang/String;

    .line 121
    const-string v0, "1"

    iput-object v0, p0, Lcom/obs/log/InterfaceLogBean;->interfaceType:Ljava/lang/String;

    .line 122
    const-string v0, "Storage"

    iput-object v0, p0, Lcom/obs/log/InterfaceLogBean;->product:Ljava/lang/String;

    .line 123
    const-string v0, "HTTP+XML"

    iput-object v0, p0, Lcom/obs/log/InterfaceLogBean;->protocolType:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/obs/log/InterfaceLogBean;->reqTime:Ljava/util/Date;

    .line 125
    iput-object p1, p0, Lcom/obs/log/InterfaceLogBean;->name:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lcom/obs/log/InterfaceLogBean;->sourceAddr:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lcom/obs/log/InterfaceLogBean;->targetAddr:Ljava/lang/String;

    .line 128
    iput-object p3, p0, Lcom/obs/log/InterfaceLogBean;->reqParams:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInterfaceType()Ljava/lang/String;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/obs/log/InterfaceLogBean;->interfaceType:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/obs/log/InterfaceLogBean;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getProduct()Ljava/lang/String;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/obs/log/InterfaceLogBean;->product:Ljava/lang/String;

    return-object p0
.end method

.method public getProtocolType()Ljava/lang/String;
    .registers 1

    .line 172
    iget-object p0, p0, Lcom/obs/log/InterfaceLogBean;->protocolType:Ljava/lang/String;

    return-object p0
.end method

.method public getReqParams()Ljava/lang/String;
    .registers 1

    .line 257
    iget-object p0, p0, Lcom/obs/log/InterfaceLogBean;->reqParams:Ljava/lang/String;

    return-object p0
.end method

.method public getReqTime()Ljava/util/Date;
    .registers 1

    .line 204
    iget-object p0, p0, Lcom/obs/log/InterfaceLogBean;->reqTime:Ljava/util/Date;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 207
    :cond_6
    invoke-virtual {p0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    return-object p0
.end method

.method public getReqTimeAsString()Ljava/lang/String;
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/obs/log/InterfaceLogBean;->reqTimeAsString:Ljava/lang/String;

    if-nez v0, :cond_16

    iget-object v1, p0, Lcom/obs/log/InterfaceLogBean;->reqTime:Ljava/util/Date;

    if-eqz v1, :cond_16

    .line 220
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 221
    iget-object p0, p0, Lcom/obs/log/InterfaceLogBean;->reqTime:Ljava/util/Date;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    return-object v0
.end method

.method public getRespParams()Ljava/lang/String;
    .registers 1

    .line 273
    iget-object p0, p0, Lcom/obs/log/InterfaceLogBean;->respParams:Ljava/lang/String;

    return-object p0
.end method

.method public getRespTime()Ljava/util/Date;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/obs/log/InterfaceLogBean;->respTime:Ljava/util/Date;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 234
    :cond_6
    invoke-virtual {p0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    return-object p0
.end method

.method public getRespTimeAsString()Ljava/lang/String;
    .registers 3

    .line 245
    iget-object v0, p0, Lcom/obs/log/InterfaceLogBean;->respTimeAsString:Ljava/lang/String;

    if-nez v0, :cond_16

    iget-object v1, p0, Lcom/obs/log/InterfaceLogBean;->respTime:Ljava/util/Date;

    if-eqz v1, :cond_16

    .line 246
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 247
    iget-object p0, p0, Lcom/obs/log/InterfaceLogBean;->respTime:Ljava/util/Date;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    return-object v0
.end method

.method public getResultCode()Ljava/lang/String;
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/obs/log/InterfaceLogBean;->resultCode:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceAddr()Ljava/lang/String;
    .registers 1

    .line 188
    iget-object p0, p0, Lcom/obs/log/InterfaceLogBean;->sourceAddr:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetAddr()Ljava/lang/String;
    .registers 1

    .line 196
    iget-object p0, p0, Lcom/obs/log/InterfaceLogBean;->targetAddr:Ljava/lang/String;

    return-object p0
.end method

.method public getTransactionId()Ljava/lang/String;
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/obs/log/InterfaceLogBean;->transactionId:Ljava/lang/String;

    return-object p0
.end method

.method public setInterfaceType(Ljava/lang/String;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/obs/log/InterfaceLogBean;->interfaceType:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lcom/obs/log/InterfaceLogBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setProduct(Ljava/lang/String;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/obs/log/InterfaceLogBean;->product:Ljava/lang/String;

    return-void
.end method

.method public setProtocolType(Ljava/lang/String;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/obs/log/InterfaceLogBean;->protocolType:Ljava/lang/String;

    return-void
.end method

.method public setReqParams(Ljava/lang/String;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lcom/obs/log/InterfaceLogBean;->reqParams:Ljava/lang/String;

    return-void
.end method

.method public setReqTime(Ljava/util/Date;)V
    .registers 2

    if-eqz p1, :cond_a

    .line 213
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    iput-object p1, p0, Lcom/obs/log/InterfaceLogBean;->reqTime:Ljava/util/Date;

    :cond_a
    return-void
.end method

.method public setReqTimeAsString(Ljava/lang/String;)V
    .registers 2

    .line 227
    iput-object p1, p0, Lcom/obs/log/InterfaceLogBean;->reqTimeAsString:Ljava/lang/String;

    return-void
.end method

.method public setRespParams(Ljava/lang/String;)V
    .registers 2

    .line 277
    iput-object p1, p0, Lcom/obs/log/InterfaceLogBean;->respParams:Ljava/lang/String;

    return-void
.end method

.method public setRespTime(Ljava/util/Date;)V
    .registers 2

    if-eqz p1, :cond_a

    .line 240
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    iput-object p1, p0, Lcom/obs/log/InterfaceLogBean;->respTime:Ljava/util/Date;

    :cond_a
    return-void
.end method

.method public setRespTimeAsString(Ljava/lang/String;)V
    .registers 2

    .line 253
    iput-object p1, p0, Lcom/obs/log/InterfaceLogBean;->respTimeAsString:Ljava/lang/String;

    return-void
.end method

.method public setResponseInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 143
    iput-object p1, p0, Lcom/obs/log/InterfaceLogBean;->respParams:Ljava/lang/String;

    .line 144
    iput-object p2, p0, Lcom/obs/log/InterfaceLogBean;->resultCode:Ljava/lang/String;

    return-void
.end method

.method public setResultCode(Ljava/lang/String;)V
    .registers 2

    .line 269
    iput-object p1, p0, Lcom/obs/log/InterfaceLogBean;->resultCode:Ljava/lang/String;

    return-void
.end method

.method public setSourceAddr(Ljava/lang/String;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/obs/log/InterfaceLogBean;->sourceAddr:Ljava/lang/String;

    return-void
.end method

.method public setTargetAddr(Ljava/lang/String;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/obs/log/InterfaceLogBean;->targetAddr:Ljava/lang/String;

    return-void
.end method

.method public setTransactionId(Ljava/lang/String;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/obs/log/InterfaceLogBean;->transactionId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    invoke-virtual {p0}, Lcom/obs/log/InterfaceLogBean;->getProduct()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {p0}, Lcom/obs/log/InterfaceLogBean;->getInterfaceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p0}, Lcom/obs/log/InterfaceLogBean;->getProtocolType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {p0}, Lcom/obs/log/InterfaceLogBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {p0}, Lcom/obs/log/InterfaceLogBean;->getSourceAddr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {p0}, Lcom/obs/log/InterfaceLogBean;->getTargetAddr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {p0}, Lcom/obs/log/InterfaceLogBean;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_4d

    move-object v2, v3

    goto :goto_51

    :cond_4d
    invoke-virtual {p0}, Lcom/obs/log/InterfaceLogBean;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    :goto_51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {p0}, Lcom/obs/log/InterfaceLogBean;->getReqTimeAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {p0}, Lcom/obs/log/InterfaceLogBean;->getRespTimeAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {p0}, Lcom/obs/log/InterfaceLogBean;->getReqParams()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_73

    move-object v2, v3

    goto :goto_77

    :cond_73
    invoke-virtual {p0}, Lcom/obs/log/InterfaceLogBean;->getReqParams()Ljava/lang/String;

    move-result-object v2

    :goto_77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {p0}, Lcom/obs/log/InterfaceLogBean;->getRespParams()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_84

    goto :goto_88

    :cond_84
    invoke-virtual {p0}, Lcom/obs/log/InterfaceLogBean;->getRespParams()Ljava/lang/String;

    move-result-object v3

    :goto_88
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {p0}, Lcom/obs/log/InterfaceLogBean;->getResultCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
