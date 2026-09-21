.class public Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionTransition;
.super Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/LifecycleConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoncurrentVersionTransition"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/model/LifecycleConfiguration;


# direct methods
.method public constructor <init>(Lcom/obs/services/model/LifecycleConfiguration;)V
    .registers 2

    .line 471
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionTransition;->this$0:Lcom/obs/services/model/LifecycleConfiguration;

    invoke-direct {p0, p1}, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;-><init>(Lcom/obs/services/model/LifecycleConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/model/LifecycleConfiguration;Ljava/lang/Integer;Lcom/obs/services/model/StorageClassEnum;)V
    .registers 4

    .line 502
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionTransition;->this$0:Lcom/obs/services/model/LifecycleConfiguration;

    invoke-direct {p0, p1}, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;-><init>(Lcom/obs/services/model/LifecycleConfiguration;)V

    .line 503
    iput-object p2, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->days:Ljava/lang/Integer;

    .line 504
    iput-object p3, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/model/LifecycleConfiguration;Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 486
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionTransition;->this$0:Lcom/obs/services/model/LifecycleConfiguration;

    invoke-direct {p0, p1}, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;-><init>(Lcom/obs/services/model/LifecycleConfiguration;)V

    .line 487
    iput-object p2, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->days:Ljava/lang/Integer;

    .line 488
    invoke-static {p3}, Lcom/obs/services/model/StorageClassEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/StorageClassEnum;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-void
.end method


# virtual methods
.method public getDays()Ljava/lang/Integer;
    .registers 1

    .line 515
    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->days:Ljava/lang/Integer;

    return-object p0
.end method

.method public getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;
    .registers 1

    .line 565
    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-object p0
.end method

.method public getStorageClass()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 540
    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/obs/services/model/StorageClassEnum;->getCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public setDays(Ljava/lang/Integer;)V
    .registers 2

    .line 527
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->days:Ljava/lang/Integer;

    return-void
.end method

.method public setObjectStorageClass(Lcom/obs/services/model/StorageClassEnum;)V
    .registers 2

    .line 577
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 554
    invoke-static {p1}, Lcom/obs/services/model/StorageClassEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/StorageClassEnum;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoncurrentVersionTransition [days="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->days:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", storageClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
