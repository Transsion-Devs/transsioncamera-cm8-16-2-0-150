.class public Lcom/obs/services/model/ReplicationConfiguration$Destination;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/ReplicationConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Destination"
.end annotation


# instance fields
.field private bucket:Ljava/lang/String;

.field private storageClass:Lcom/obs/services/model/StorageClassEnum;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucket()Ljava/lang/String;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/obs/services/model/ReplicationConfiguration$Destination;->bucket:Ljava/lang/String;

    return-object p0
.end method

.method public getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;
    .registers 1

    .line 171
    iget-object p0, p0, Lcom/obs/services/model/ReplicationConfiguration$Destination;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-object p0
.end method

.method public setBucket(Ljava/lang/String;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/obs/services/model/ReplicationConfiguration$Destination;->bucket:Ljava/lang/String;

    return-void
.end method

.method public setObjectStorageClass(Lcom/obs/services/model/StorageClassEnum;)V
    .registers 2

    .line 181
    iput-object p1, p0, Lcom/obs/services/model/ReplicationConfiguration$Destination;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destination [bucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ReplicationConfiguration$Destination;->bucket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", storageClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/ReplicationConfiguration$Destination;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
