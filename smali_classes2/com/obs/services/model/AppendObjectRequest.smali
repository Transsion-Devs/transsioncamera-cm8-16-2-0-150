.class public Lcom/obs/services/model/AppendObjectRequest;
.super Lcom/obs/services/model/PutObjectRequest;
.source "SourceFile"


# instance fields
.field protected position:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/obs/services/model/PutObjectRequest;-><init>()V

    .line 28
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->POST:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Lcom/obs/services/model/PutObjectRequest;-><init>()V

    .line 28
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->POST:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 35
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPosition()J
    .registers 3

    .line 44
    iget-wide v0, p0, Lcom/obs/services/model/AppendObjectRequest;->position:J

    return-wide v0
.end method

.method public setPosition(J)V
    .registers 3

    .line 54
    iput-wide p1, p0, Lcom/obs/services/model/AppendObjectRequest;->position:J

    return-void
.end method
