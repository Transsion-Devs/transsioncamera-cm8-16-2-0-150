.class public Lcom/obs/services/model/LifecycleConfiguration$Expiration;
.super Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/LifecycleConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Expiration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/model/LifecycleConfiguration;


# direct methods
.method public constructor <init>(Lcom/obs/services/model/LifecycleConfiguration;)V
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$Expiration;->this$0:Lcom/obs/services/model/LifecycleConfiguration;

    invoke-direct {p0, p1}, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;-><init>(Lcom/obs/services/model/LifecycleConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/model/LifecycleConfiguration;Ljava/lang/Integer;)V
    .registers 3

    .line 249
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$Expiration;->this$0:Lcom/obs/services/model/LifecycleConfiguration;

    .line 250
    invoke-direct {p0, p1, p2}, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;-><init>(Lcom/obs/services/model/LifecycleConfiguration;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/model/LifecycleConfiguration;Ljava/util/Date;)V
    .registers 3

    .line 238
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$Expiration;->this$0:Lcom/obs/services/model/LifecycleConfiguration;

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;-><init>(Lcom/obs/services/model/LifecycleConfiguration;Ljava/util/Date;)V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .registers 1

    .line 281
    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->date:Ljava/util/Date;

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getDays()Ljava/lang/Integer;
    .registers 1

    .line 260
    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->days:Ljava/lang/Integer;

    return-object p0
.end method

.method public setDate(Ljava/util/Date;)V
    .registers 2

    .line 291
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->date:Ljava/util/Date;

    const/4 p1, 0x0

    .line 292
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->days:Ljava/lang/Integer;

    return-void
.end method

.method public setDays(Ljava/lang/Integer;)V
    .registers 2

    .line 271
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->days:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 272
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->date:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expiration [days="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->days:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->date:Ljava/util/Date;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
