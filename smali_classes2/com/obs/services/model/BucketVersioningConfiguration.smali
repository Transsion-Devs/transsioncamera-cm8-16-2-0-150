.class public Lcom/obs/services/model/BucketVersioningConfiguration;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# static fields
.field public static final ENABLED:Ljava/lang/String; = "Enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SUSPENDED:Ljava/lang/String; = "Suspended"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private status:Lcom/obs/services/model/VersioningStatusEnum;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/model/VersioningStatusEnum;)V
    .registers 2

    .line 56
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/obs/services/model/BucketVersioningConfiguration;->status:Lcom/obs/services/model/VersioningStatusEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/obs/services/model/VersioningStatusEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/VersioningStatusEnum;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/BucketVersioningConfiguration;->status:Lcom/obs/services/model/VersioningStatusEnum;

    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    iget-object p0, p0, Lcom/obs/services/model/BucketVersioningConfiguration;->status:Lcom/obs/services/model/VersioningStatusEnum;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/obs/services/model/VersioningStatusEnum;->getCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVersioningStatus()Lcom/obs/services/model/VersioningStatusEnum;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/obs/services/model/BucketVersioningConfiguration;->status:Lcom/obs/services/model/VersioningStatusEnum;

    return-object p0
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    invoke-static {p1}, Lcom/obs/services/model/VersioningStatusEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/VersioningStatusEnum;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/BucketVersioningConfiguration;->status:Lcom/obs/services/model/VersioningStatusEnum;

    return-void
.end method

.method public setVersioningStatus(Lcom/obs/services/model/VersioningStatusEnum;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/obs/services/model/BucketVersioningConfiguration;->status:Lcom/obs/services/model/VersioningStatusEnum;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BucketVersioningConfiguration [status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/BucketVersioningConfiguration;->status:Lcom/obs/services/model/VersioningStatusEnum;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
