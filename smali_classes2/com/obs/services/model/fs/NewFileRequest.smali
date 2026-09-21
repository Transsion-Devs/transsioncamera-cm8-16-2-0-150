.class public Lcom/obs/services/model/fs/NewFileRequest;
.super Lcom/obs/services/model/PutObjectRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/obs/services/model/PutObjectRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/obs/services/model/PutObjectRequest;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 75
    invoke-direct {p0}, Lcom/obs/services/model/PutObjectRequest;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    .line 45
    invoke-direct {p0}, Lcom/obs/services/model/PutObjectRequest;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/obs/services/model/PutObjectRequest;->file:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 4

    .line 61
    invoke-direct {p0}, Lcom/obs/services/model/PutObjectRequest;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/obs/services/model/PutObjectRequest;->input:Ljava/io/InputStream;

    return-void
.end method
