.class public Lcom/obs/services/model/fs/GetBucketFSStatusResult;
.super Lcom/obs/services/model/BucketMetadataInfoResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;
    }
.end annotation


# instance fields
.field private status:Lcom/obs/services/model/fs/FSStatusEnum;


# direct methods
.method private constructor <init>(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;)V
    .registers 3

    .line 70
    invoke-direct {p0}, Lcom/obs/services/model/BucketMetadataInfoResult;-><init>()V

    .line 71
    # getter for: Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->allowOrigin:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->access$000(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/OptionsInfoResult;->allowOrigin:Ljava/lang/String;

    .line 72
    # getter for: Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->allowHeaders:Ljava/util/List;
    invoke-static {p1}, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->access$100(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/OptionsInfoResult;->allowHeaders:Ljava/util/List;

    .line 73
    # getter for: Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->maxAge:I
    invoke-static {p1}, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->access$200(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;)I

    move-result v0

    iput v0, p0, Lcom/obs/services/model/OptionsInfoResult;->maxAge:I

    .line 74
    # getter for: Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->allowMethods:Ljava/util/List;
    invoke-static {p1}, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->access$300(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/OptionsInfoResult;->allowMethods:Ljava/util/List;

    .line 75
    # getter for: Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->exposeHeaders:Ljava/util/List;
    invoke-static {p1}, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->access$400(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/OptionsInfoResult;->exposeHeaders:Ljava/util/List;

    .line 76
    # getter for: Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->storageClass:Lcom/obs/services/model/StorageClassEnum;
    invoke-static {p1}, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->access$500(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;)Lcom/obs/services/model/StorageClassEnum;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    .line 77
    # getter for: Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->location:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->access$600(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->location:Ljava/lang/String;

    .line 78
    # getter for: Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->obsVersion:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->access$700(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->obsVersion:Ljava/lang/String;

    .line 79
    # getter for: Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->availableZone:Lcom/obs/services/model/AvailableZoneEnum;
    invoke-static {p1}, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->access$800(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;)Lcom/obs/services/model/AvailableZoneEnum;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->availableZone:Lcom/obs/services/model/AvailableZoneEnum;

    .line 80
    # getter for: Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->epid:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->access$900(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->epid:Ljava/lang/String;

    .line 81
    # getter for: Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->bucketType:Lcom/obs/services/model/BucketTypeEnum;
    invoke-static {p1}, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->access$1000(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;)Lcom/obs/services/model/BucketTypeEnum;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->bucketType:Lcom/obs/services/model/BucketTypeEnum;

    .line 82
    # getter for: Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->status:Lcom/obs/services/model/fs/FSStatusEnum;
    invoke-static {p1}, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->access$1100(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;)Lcom/obs/services/model/fs/FSStatusEnum;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult;->status:Lcom/obs/services/model/fs/FSStatusEnum;

    return-void
.end method

.method synthetic constructor <init>(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;Lcom/obs/services/model/fs/GetBucketFSStatusResult$1;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1}, Lcom/obs/services/model/fs/GetBucketFSStatusResult;-><init>(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;)V

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

    .line 35
    invoke-direct/range {p0 .. p8}, Lcom/obs/services/model/BucketMetadataInfoResult;-><init>(Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Lcom/obs/services/model/StorageClassEnum;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Lcom/obs/services/model/StorageClassEnum;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/fs/FSStatusEnum;)V
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
            "Lcom/obs/services/model/fs/FSStatusEnum;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    invoke-direct/range {p0 .. p8}, Lcom/obs/services/model/fs/GetBucketFSStatusResult;-><init>(Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Lcom/obs/services/model/StorageClassEnum;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iput-object p9, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult;->status:Lcom/obs/services/model/fs/FSStatusEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Lcom/obs/services/model/StorageClassEnum;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/fs/FSStatusEnum;Lcom/obs/services/model/AvailableZoneEnum;)V
    .registers 11
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
            "Lcom/obs/services/model/fs/FSStatusEnum;",
            "Lcom/obs/services/model/AvailableZoneEnum;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    invoke-direct/range {p0 .. p8}, Lcom/obs/services/model/fs/GetBucketFSStatusResult;-><init>(Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Lcom/obs/services/model/StorageClassEnum;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iput-object p10, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->availableZone:Lcom/obs/services/model/AvailableZoneEnum;

    .line 54
    iput-object p9, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult;->status:Lcom/obs/services/model/fs/FSStatusEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Lcom/obs/services/model/StorageClassEnum;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/fs/FSStatusEnum;Lcom/obs/services/model/AvailableZoneEnum;Ljava/lang/String;Lcom/obs/services/model/BucketTypeEnum;)V
    .registers 13
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
            "Lcom/obs/services/model/fs/FSStatusEnum;",
            "Lcom/obs/services/model/AvailableZoneEnum;",
            "Ljava/lang/String;",
            "Lcom/obs/services/model/BucketTypeEnum;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    invoke-direct/range {p0 .. p8}, Lcom/obs/services/model/fs/GetBucketFSStatusResult;-><init>(Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Lcom/obs/services/model/StorageClassEnum;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iput-object p10, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->availableZone:Lcom/obs/services/model/AvailableZoneEnum;

    .line 64
    iput-object p11, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->epid:Ljava/lang/String;

    .line 65
    iput-object p12, p0, Lcom/obs/services/model/BucketMetadataInfoResult;->bucketType:Lcom/obs/services/model/BucketTypeEnum;

    .line 66
    iput-object p9, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult;->status:Lcom/obs/services/model/fs/FSStatusEnum;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/obs/services/model/fs/FSStatusEnum;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult;->status:Lcom/obs/services/model/fs/FSStatusEnum;

    return-object p0
.end method
