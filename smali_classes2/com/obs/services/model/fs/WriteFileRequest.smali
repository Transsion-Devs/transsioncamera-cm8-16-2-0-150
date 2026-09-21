.class public Lcom/obs/services/model/fs/WriteFileRequest;
.super Lcom/obs/services/model/AppendObjectRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Lcom/obs/services/model/AppendObjectRequest;-><init>()V

    .line 30
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 44
    invoke-direct {p0}, Lcom/obs/services/model/AppendObjectRequest;-><init>()V

    .line 30
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 45
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/obs/services/model/fs/WriteFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iput-object p3, p0, Lcom/obs/services/model/PutObjectRequest;->file:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;J)V
    .registers 6

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/obs/services/model/fs/WriteFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 78
    iput-wide p4, p0, Lcom/obs/services/model/AppendObjectRequest;->position:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 4

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/obs/services/model/fs/WriteFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iput-object p3, p0, Lcom/obs/services/model/PutObjectRequest;->input:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;J)V
    .registers 6

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/obs/services/model/fs/WriteFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 110
    iput-wide p4, p0, Lcom/obs/services/model/AppendObjectRequest;->position:J

    return-void
.end method
