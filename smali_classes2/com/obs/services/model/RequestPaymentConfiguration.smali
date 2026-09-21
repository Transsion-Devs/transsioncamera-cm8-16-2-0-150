.class public Lcom/obs/services/model/RequestPaymentConfiguration;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field private payer:Lcom/obs/services/model/RequestPaymentEnum;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/model/RequestPaymentEnum;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/obs/services/model/RequestPaymentConfiguration;->payer:Lcom/obs/services/model/RequestPaymentEnum;

    return-void
.end method


# virtual methods
.method public getPayer()Lcom/obs/services/model/RequestPaymentEnum;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/obs/services/model/RequestPaymentConfiguration;->payer:Lcom/obs/services/model/RequestPaymentEnum;

    return-object p0
.end method

.method public setPayer(Lcom/obs/services/model/RequestPaymentEnum;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/obs/services/model/RequestPaymentConfiguration;->payer:Lcom/obs/services/model/RequestPaymentEnum;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestPaymentConfiguration [payer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/RequestPaymentConfiguration;->payer:Lcom/obs/services/model/RequestPaymentEnum;

    invoke-virtual {p0}, Lcom/obs/services/model/RequestPaymentEnum;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
