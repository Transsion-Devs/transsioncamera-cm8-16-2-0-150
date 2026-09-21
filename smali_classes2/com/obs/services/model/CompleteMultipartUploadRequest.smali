.class public Lcom/obs/services/model/CompleteMultipartUploadRequest;
.super Lcom/obs/services/model/AbstractMultipartRequest;
.source "SourceFile"


# instance fields
.field private callback:Lcom/obs/services/model/Callback;

.field private encodingType:Ljava/lang/String;

.field private partEtag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/PartEtag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Lcom/obs/services/model/AbstractMultipartRequest;-><init>()V

    .line 26
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->POST:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Lcom/obs/services/model/AbstractMultipartRequest;-><init>()V

    .line 26
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->POST:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 39
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/obs/services/model/PartEtag;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lcom/obs/services/model/AbstractMultipartRequest;-><init>()V

    .line 26
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->POST:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 57
    invoke-virtual {p0, p3}, Lcom/obs/services/model/AbstractMultipartRequest;->setUploadId(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/obs/services/model/GenericRequest;->setBucketName(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p2}, Lcom/obs/services/model/BaseObjectRequest;->setObjectKey(Ljava/lang/String;)V

    .line 60
    iput-object p4, p0, Lcom/obs/services/model/CompleteMultipartUploadRequest;->partEtag:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/obs/services/model/PartEtag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/obs/services/model/AbstractMultipartRequest;-><init>()V

    .line 26
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->POST:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 80
    invoke-virtual {p0, p3}, Lcom/obs/services/model/AbstractMultipartRequest;->setUploadId(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/obs/services/model/GenericRequest;->setBucketName(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p2}, Lcom/obs/services/model/BaseObjectRequest;->setObjectKey(Ljava/lang/String;)V

    .line 83
    iput-object p4, p0, Lcom/obs/services/model/CompleteMultipartUploadRequest;->partEtag:Ljava/util/List;

    .line 84
    iput-object p5, p0, Lcom/obs/services/model/CompleteMultipartUploadRequest;->encodingType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/obs/services/model/Callback;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/obs/services/model/CompleteMultipartUploadRequest;->callback:Lcom/obs/services/model/Callback;

    return-object p0
.end method

.method public getEncodingType()Ljava/lang/String;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/obs/services/model/CompleteMultipartUploadRequest;->encodingType:Ljava/lang/String;

    return-object p0
.end method

.method public getPartEtag()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/PartEtag;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/obs/services/model/CompleteMultipartUploadRequest;->partEtag:Ljava/util/List;

    if-nez v0, :cond_b

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/CompleteMultipartUploadRequest;->partEtag:Ljava/util/List;

    .line 96
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/CompleteMultipartUploadRequest;->partEtag:Ljava/util/List;

    return-object p0
.end method

.method public setCallback(Lcom/obs/services/model/Callback;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/obs/services/model/CompleteMultipartUploadRequest;->callback:Lcom/obs/services/model/Callback;

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/obs/services/model/CompleteMultipartUploadRequest;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public setPartEtag(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/PartEtag;",
            ">;)V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/obs/services/model/CompleteMultipartUploadRequest;->partEtag:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CompleteMultipartUploadRequest [uploadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/obs/services/model/AbstractMultipartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p0}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", objectKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p0}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", partEtag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CompleteMultipartUploadRequest;->partEtag:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", encodingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/CompleteMultipartUploadRequest;->encodingType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
