.class public Lcom/obs/services/model/ModifyObjectRequest;
.super Lcom/obs/services/model/AppendObjectRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Lcom/obs/services/model/AppendObjectRequest;-><init>()V

    .line 27
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 41
    invoke-direct {p0}, Lcom/obs/services/model/AppendObjectRequest;-><init>()V

    .line 27
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 42
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 5

    .line 56
    invoke-direct {p0}, Lcom/obs/services/model/AppendObjectRequest;-><init>()V

    .line 27
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 57
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/obs/services/model/PutObjectRequest;->file:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;J)V
    .registers 7

    .line 74
    invoke-direct {p0}, Lcom/obs/services/model/AppendObjectRequest;-><init>()V

    .line 27
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 75
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/obs/services/model/PutObjectRequest;->file:Ljava/io/File;

    .line 78
    iput-wide p4, p0, Lcom/obs/services/model/AppendObjectRequest;->position:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 5

    .line 91
    invoke-direct {p0}, Lcom/obs/services/model/AppendObjectRequest;-><init>()V

    .line 27
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 92
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lcom/obs/services/model/PutObjectRequest;->input:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;J)V
    .registers 7

    .line 109
    invoke-direct {p0}, Lcom/obs/services/model/AppendObjectRequest;-><init>()V

    .line 27
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 110
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lcom/obs/services/model/PutObjectRequest;->input:Ljava/io/InputStream;

    .line 113
    iput-wide p4, p0, Lcom/obs/services/model/AppendObjectRequest;->position:J

    return-void
.end method
