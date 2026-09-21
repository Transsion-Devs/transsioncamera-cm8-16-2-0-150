.class public Lcom/obs/services/model/ObjectRepleaceMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cacheControl:Ljava/lang/String;

.field private contentDisposition:Ljava/lang/String;

.field private contentEncoding:Ljava/lang/String;

.field private contentLanguage:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private expires:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheControl()Ljava/lang/String;
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/obs/services/model/ObjectRepleaceMetadata;->cacheControl:Ljava/lang/String;

    return-object p0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/obs/services/model/ObjectRepleaceMetadata;->contentDisposition:Ljava/lang/String;

    return-object p0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .registers 1

    .line 135
    iget-object p0, p0, Lcom/obs/services/model/ObjectRepleaceMetadata;->contentEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public getContentLanguage()Ljava/lang/String;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/obs/services/model/ObjectRepleaceMetadata;->contentLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/obs/services/model/ObjectRepleaceMetadata;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public getExpires()Ljava/lang/String;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/obs/services/model/ObjectRepleaceMetadata;->expires:Ljava/lang/String;

    return-object p0
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/obs/services/model/ObjectRepleaceMetadata;->cacheControl:Ljava/lang/String;

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/obs/services/model/ObjectRepleaceMetadata;->contentDisposition:Ljava/lang/String;

    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/obs/services/model/ObjectRepleaceMetadata;->contentEncoding:Ljava/lang/String;

    return-void
.end method

.method public setContentLanguage(Ljava/lang/String;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/obs/services/model/ObjectRepleaceMetadata;->contentLanguage:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/obs/services/model/ObjectRepleaceMetadata;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setExpires(Ljava/lang/String;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/obs/services/model/ObjectRepleaceMetadata;->expires:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectRepleaceMetadata [contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ObjectRepleaceMetadata;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentLanguage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ObjectRepleaceMetadata;->contentLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ObjectRepleaceMetadata;->expires:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cacheControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ObjectRepleaceMetadata;->cacheControl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentDisposition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ObjectRepleaceMetadata;->contentDisposition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentEncoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/ObjectRepleaceMetadata;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
