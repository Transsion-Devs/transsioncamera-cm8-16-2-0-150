.class public Lcom/obs/services/model/TruncateObjectRequest;
.super Lcom/obs/services/model/BaseObjectRequest;
.source "SourceFile"


# instance fields
.field private newLength:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    .line 25
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    .line 43
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    .line 25
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 44
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 46
    iput-wide p3, p0, Lcom/obs/services/model/TruncateObjectRequest;->newLength:J

    return-void
.end method


# virtual methods
.method public getNewLength()J
    .registers 3

    .line 55
    iget-wide v0, p0, Lcom/obs/services/model/TruncateObjectRequest;->newLength:J

    return-wide v0
.end method

.method public setNewLength(J)V
    .registers 3

    .line 65
    iput-wide p1, p0, Lcom/obs/services/model/TruncateObjectRequest;->newLength:J

    return-void
.end method
