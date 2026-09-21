.class public Lcom/obs/services/model/BucketMetadataInfoResult;
.super Lcom/obs/services/model/OptionsInfoResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/model/BucketMetadataInfoResult$Builder;
    }
.end annotation


# instance fields
.field protected availableZone:Lcom/obs/services/model/AvailableZoneEnum;

.field protected bucketType:Lcom/obs/services/model/BucketTypeEnum;

.field protected epid:Ljava/lang/String;

.field protected location:Ljava/lang/String;

.field protected obsVersion:Ljava/lang/String;

.field protected storageClass:Lcom/obs/services/model/StorageClassEnum;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Lcom/obs/services/model/OptionsInfoResult;-><init>()V

    .line 35
    sget-object v0, Lcom/obs/services/model/BucketTypeEnum;->OBJECT:Lcom/obs/services/model/BucketTypeEnum;

    iput-object v0, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->bucketType:Lcom/obs/services/model/BucketTypeEnum;

    return-void
.end method

.method private constructor <init>(Lcom/obs/services/model/BucketMetadataInfoResult$Builder;)V
    .registers 8

    .line 71
    # getter for: Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->allowOrigin:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->access$000(Lcom/obs/services/model/BucketMetadataInfoResult$Builder;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->allowHeaders:Ljava/util/List;
    invoke-static {p1}, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->access$100(Lcom/obs/services/model/BucketMetadataInfoResult$Builder;)Ljava/util/List;

    move-result-object v2

    # getter for: Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->maxAge:I
    invoke-static {p1}, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->access$200(Lcom/obs/services/model/BucketMetadataInfoResult$Builder;)I

    move-result v3

    # getter for: Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->allowMethods:Ljava/util/List;
    invoke-static {p1}, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->access$300(Lcom/obs/services/model/BucketMetadataInfoResult$Builder;)Ljava/util/List;

    move-result-object v4

    # getter for: Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->exposeHeaders:Ljava/util/List;
    invoke-static {p1}, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->access$400(Lcom/obs/services/model/BucketMetadataInfoResult$Builder;)Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/obs/services/model/OptionsInfoResult;-><init>(Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;)V

    .line 35
    sget-object p0, Lcom/obs/services/model/BucketTypeEnum;->OBJECT:Lcom/obs/services/model/BucketTypeEnum;

    iput-object p0, v0, Lcom/obs/services/model/BucketMetadataInfoResult;->bucketType:Lcom/obs/services/model/BucketTypeEnum;

    .line 72
    # getter for: Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->storageClass:Lcom/obs/services/model/StorageClassEnum;
    invoke-static {p1}, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->access$500(Lcom/obs/services/model/BucketMetadataInfoResult$Builder;)Lcom/obs/services/model/StorageClassEnum;

    move-result-object p0

    iput-object p0, v0, Lcom/obs/services/model/BucketMetadataInfoResult;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    .line 73
    # getter for: Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->location:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->access$600(Lcom/obs/services/model/BucketMetadataInfoResult$Builder;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/obs/services/model/BucketMetadataInfoResult;->location:Ljava/lang/String;

    .line 74
    # getter for: Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->obsVersion:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->access$700(Lcom/obs/services/model/BucketMetadataInfoResult$Builder;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/obs/services/model/BucketMetadataInfoResult;->obsVersion:Ljava/lang/String;

    .line 75
    # getter for: Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->availableZone:Lcom/obs/services/model/AvailableZoneEnum;
    invoke-static {p1}, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->access$800(Lcom/obs/services/model/BucketMetadataInfoResult$Builder;)Lcom/obs/services/model/AvailableZoneEnum;

    move-result-object p0

    iput-object p0, v0, Lcom/obs/services/model/BucketMetadataInfoResult;->availableZone:Lcom/obs/services/model/AvailableZoneEnum;

    .line 76
    # getter for: Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->epid:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->access$900(Lcom/obs/services/model/BucketMetadataInfoResult$Builder;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/obs/services/model/BucketMetadataInfoResult;->epid:Ljava/lang/String;

    .line 77
    # getter for: Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->bucketType:Lcom/obs/services/model/BucketTypeEnum;
    invoke-static {p1}, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->access$1000(Lcom/obs/services/model/BucketMetadataInfoResult$Builder;)Lcom/obs/services/model/BucketTypeEnum;

    move-result-object p0

    iput-object p0, v0, Lcom/obs/services/model/BucketMetadataInfoResult;->bucketType:Lcom/obs/services/model/BucketTypeEnum;

    return-void
.end method

.method synthetic constructor <init>(Lcom/obs/services/model/BucketMetadataInfoResult$Builder;Lcom/obs/services/model/BucketMetadataInfoResult$1;)V
    .registers 3

    .line 23
    invoke-direct {p0, p1}, Lcom/obs/services/model/BucketMetadataInfoResult;-><init>(Lcom/obs/services/model/BucketMetadataInfoResult$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Lcom/obs/services/model/StorageClassEnum;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/obs/services/model/StorageClassEnum;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/obs/services/model/OptionsInfoResult;-><init>(Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;)V

    .line 35
    sget-object p1, Lcom/obs/services/model/BucketTypeEnum;->OBJECT:Lcom/obs/services/model/BucketTypeEnum;

    iput-object p1, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->bucketType:Lcom/obs/services/model/BucketTypeEnum;

    .line 41
    iput-object p6, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    .line 42
    iput-object p7, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->location:Ljava/lang/String;

    .line 43
    iput-object p8, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->obsVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Lcom/obs/services/model/StorageClassEnum;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AvailableZoneEnum;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/obs/services/model/StorageClassEnum;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/obs/services/model/AvailableZoneEnum;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    invoke-direct/range {p0 .. p8}, Lcom/obs/services/model/BucketMetadataInfoResult;-><init>(Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Lcom/obs/services/model/StorageClassEnum;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iput-object p9, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->availableZone:Lcom/obs/services/model/AvailableZoneEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Lcom/obs/services/model/StorageClassEnum;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AvailableZoneEnum;Ljava/lang/String;Lcom/obs/services/model/BucketTypeEnum;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/obs/services/model/StorageClassEnum;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/obs/services/model/AvailableZoneEnum;",
            "Ljava/lang/String;",
            "Lcom/obs/services/model/BucketTypeEnum;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    invoke-direct/range {p0 .. p8}, Lcom/obs/services/model/BucketMetadataInfoResult;-><init>(Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Lcom/obs/services/model/StorageClassEnum;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iput-object p9, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->availableZone:Lcom/obs/services/model/AvailableZoneEnum;

    .line 62
    iput-object p10, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->epid:Ljava/lang/String;

    .line 63
    iput-object p11, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->bucketType:Lcom/obs/services/model/BucketTypeEnum;

    return-void
.end method


# virtual methods
.method public getAvailableZone()Lcom/obs/services/model/AvailableZoneEnum;
    .registers 1

    .line 206
    iget-object p0, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->availableZone:Lcom/obs/services/model/AvailableZoneEnum;

    return-object p0
.end method

.method public getBucketStorageClass()Lcom/obs/services/model/StorageClassEnum;
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-object p0
.end method

.method public getBucketType()Lcom/obs/services/model/BucketTypeEnum;
    .registers 1

    .line 221
    iget-object p0, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->bucketType:Lcom/obs/services/model/BucketTypeEnum;

    return-object p0
.end method

.method public getDefaultStorageClass()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    iget-object p0, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lcom/obs/services/model/StorageClassEnum;->getCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEpid()Ljava/lang/String;
    .registers 1

    .line 197
    iget-object p0, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->epid:Ljava/lang/String;

    return-object p0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 1

    .line 179
    iget-object p0, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->location:Ljava/lang/String;

    return-object p0
.end method

.method public getObsVersion()Ljava/lang/String;
    .registers 1

    .line 188
    iget-object p0, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->obsVersion:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BucketMetadataInfoResult [storageClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", obsVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->obsVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bucketType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->bucketType:Lcom/obs/services/model/BucketTypeEnum;

    .line 212
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
