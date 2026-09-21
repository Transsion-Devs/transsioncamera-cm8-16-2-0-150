.class public Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionExpiration;
.super Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/LifecycleConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoncurrentVersionExpiration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/model/LifecycleConfiguration;


# direct methods
.method public constructor <init>(Lcom/obs/services/model/LifecycleConfiguration;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionExpiration;->this$0:Lcom/obs/services/model/LifecycleConfiguration;

    invoke-direct {p0, p1}, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;-><init>(Lcom/obs/services/model/LifecycleConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/model/LifecycleConfiguration;Ljava/lang/Integer;)V
    .registers 3

    .line 190
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionExpiration;->this$0:Lcom/obs/services/model/LifecycleConfiguration;

    invoke-direct {p0, p1}, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;-><init>(Lcom/obs/services/model/LifecycleConfiguration;)V

    .line 191
    iput-object p2, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->days:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getDays()Ljava/lang/Integer;
    .registers 1

    .line 202
    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->days:Ljava/lang/Integer;

    return-object p0
.end method

.method public setDays(Ljava/lang/Integer;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->days:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoncurrentVersionExpiration [days="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->days:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
