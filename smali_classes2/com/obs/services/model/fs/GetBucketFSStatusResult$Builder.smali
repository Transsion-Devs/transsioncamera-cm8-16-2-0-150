.class public final Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/fs/GetBucketFSStatusResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private allowHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allowMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allowOrigin:Ljava/lang/String;

.field private availableZone:Lcom/obs/services/model/AvailableZoneEnum;

.field private bucketType:Lcom/obs/services/model/BucketTypeEnum;

.field private epid:Ljava/lang/String;

.field private exposeHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private location:Ljava/lang/String;

.field private maxAge:I

.field private obsVersion:Ljava/lang/String;

.field private status:Lcom/obs/services/model/fs/FSStatusEnum;

.field private storageClass:Lcom/obs/services/model/StorageClassEnum;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    sget-object v0, Lcom/obs/services/model/BucketTypeEnum;->OBJECT:Lcom/obs/services/model/BucketTypeEnum;

    iput-object v0, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->bucketType:Lcom/obs/services/model/BucketTypeEnum;

    return-void
.end method

.method static synthetic access$000(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->allowOrigin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;)Ljava/util/List;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->allowHeaders:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;)Lcom/obs/services/model/BucketTypeEnum;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->bucketType:Lcom/obs/services/model/BucketTypeEnum;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;)Lcom/obs/services/model/fs/FSStatusEnum;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->status:Lcom/obs/services/model/fs/FSStatusEnum;

    return-object p0
.end method

.method static synthetic access$200(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;)I
    .registers 1

    .line 85
    iget p0, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->maxAge:I

    return p0
.end method

.method static synthetic access$300(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;)Ljava/util/List;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->allowMethods:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;)Ljava/util/List;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->exposeHeaders:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;)Lcom/obs/services/model/StorageClassEnum;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-object p0
.end method

.method static synthetic access$600(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->location:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->obsVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;)Lcom/obs/services/model/AvailableZoneEnum;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->availableZone:Lcom/obs/services/model/AvailableZoneEnum;

    return-object p0
.end method

.method static synthetic access$900(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->epid:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public allowHeaders(Ljava/util/List;)Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->allowHeaders:Ljava/util/List;

    return-object p0
.end method

.method public allowMethods(Ljava/util/List;)Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->allowMethods:Ljava/util/List;

    return-object p0
.end method

.method public allowOrigin(Ljava/lang/String;)Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->allowOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public availableZone(Lcom/obs/services/model/AvailableZoneEnum;)Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->availableZone:Lcom/obs/services/model/AvailableZoneEnum;

    return-object p0
.end method

.method public bucketType(Lcom/obs/services/model/BucketTypeEnum;)Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->bucketType:Lcom/obs/services/model/BucketTypeEnum;

    return-object p0
.end method

.method public build()Lcom/obs/services/model/fs/GetBucketFSStatusResult;
    .registers 3

    .line 160
    new-instance v0, Lcom/obs/services/model/fs/GetBucketFSStatusResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/obs/services/model/fs/GetBucketFSStatusResult;-><init>(Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;Lcom/obs/services/model/fs/GetBucketFSStatusResult$1;)V

    return-object v0
.end method

.method public builderBucketMetadataInfo()Lcom/obs/services/model/BucketMetadataInfoResult$Builder;
    .registers 3

    .line 164
    new-instance v0, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;

    invoke-direct {v0}, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;-><init>()V

    iget-object v1, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->allowOrigin:Ljava/lang/String;

    .line 165
    invoke-virtual {v0, v1}, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->allowOrigin(Ljava/lang/String;)Lcom/obs/services/model/BucketMetadataInfoResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->allowHeaders:Ljava/util/List;

    .line 166
    invoke-virtual {v0, v1}, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->allowHeaders(Ljava/util/List;)Lcom/obs/services/model/BucketMetadataInfoResult$Builder;

    move-result-object v0

    iget v1, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->maxAge:I

    .line 167
    invoke-virtual {v0, v1}, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->maxAge(I)Lcom/obs/services/model/BucketMetadataInfoResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->allowMethods:Ljava/util/List;

    .line 168
    invoke-virtual {v0, v1}, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->allowMethods(Ljava/util/List;)Lcom/obs/services/model/BucketMetadataInfoResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->exposeHeaders:Ljava/util/List;

    .line 169
    invoke-virtual {v0, v1}, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->exposeHeaders(Ljava/util/List;)Lcom/obs/services/model/BucketMetadataInfoResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    .line 170
    invoke-virtual {v0, v1}, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->storageClass(Lcom/obs/services/model/StorageClassEnum;)Lcom/obs/services/model/BucketMetadataInfoResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->location:Ljava/lang/String;

    .line 171
    invoke-virtual {v0, v1}, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->location(Ljava/lang/String;)Lcom/obs/services/model/BucketMetadataInfoResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->obsVersion:Ljava/lang/String;

    .line 172
    invoke-virtual {v0, v1}, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->obsVersion(Ljava/lang/String;)Lcom/obs/services/model/BucketMetadataInfoResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->availableZone:Lcom/obs/services/model/AvailableZoneEnum;

    .line 173
    invoke-virtual {v0, v1}, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->availableZone(Lcom/obs/services/model/AvailableZoneEnum;)Lcom/obs/services/model/BucketMetadataInfoResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->epid:Ljava/lang/String;

    .line 174
    invoke-virtual {v0, v1}, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->epid(Ljava/lang/String;)Lcom/obs/services/model/BucketMetadataInfoResult$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->bucketType:Lcom/obs/services/model/BucketTypeEnum;

    .line 175
    invoke-virtual {v0, p0}, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->bucketType(Lcom/obs/services/model/BucketTypeEnum;)Lcom/obs/services/model/BucketMetadataInfoResult$Builder;

    move-result-object p0

    return-object p0
.end method

.method public epid(Ljava/lang/String;)Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->epid:Ljava/lang/String;

    return-object p0
.end method

.method public exposeHeaders(Ljava/util/List;)Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->exposeHeaders:Ljava/util/List;

    return-object p0
.end method

.method public location(Ljava/lang/String;)Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->location:Ljava/lang/String;

    return-object p0
.end method

.method public maxAge(I)Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;
    .registers 2

    .line 110
    iput p1, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->maxAge:I

    return-object p0
.end method

.method public obsVersion(Ljava/lang/String;)Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->obsVersion:Ljava/lang/String;

    return-object p0
.end method

.method public status(Lcom/obs/services/model/fs/FSStatusEnum;)Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->status:Lcom/obs/services/model/fs/FSStatusEnum;

    return-object p0
.end method

.method public storageClass(Lcom/obs/services/model/StorageClassEnum;)Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-object p0
.end method
