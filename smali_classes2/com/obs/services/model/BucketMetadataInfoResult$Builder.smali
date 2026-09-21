.class public final Lcom/obs/services/model/BucketMetadataInfoResult$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/BucketMetadataInfoResult;
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

.field private storageClass:Lcom/obs/services/model/StorageClassEnum;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    sget-object v0, Lcom/obs/services/model/BucketTypeEnum;->OBJECT:Lcom/obs/services/model/BucketTypeEnum;

    iput-object v0, p0, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->bucketType:Lcom/obs/services/model/BucketTypeEnum;

    return-void
.end method

.method static synthetic access$000(Lcom/obs/services/model/BucketMetadataInfoResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->allowOrigin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/obs/services/model/BucketMetadataInfoResult$Builder;)Ljava/util/List;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->allowHeaders:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/obs/services/model/BucketMetadataInfoResult$Builder;)Lcom/obs/services/model/BucketTypeEnum;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->bucketType:Lcom/obs/services/model/BucketTypeEnum;

    return-object p0
.end method

.method static synthetic access$200(Lcom/obs/services/model/BucketMetadataInfoResult$Builder;)I
    .registers 1

    .line 80
    iget p0, p0, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->maxAge:I

    return p0
.end method

.method static synthetic access$300(Lcom/obs/services/model/BucketMetadataInfoResult$Builder;)Ljava/util/List;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->allowMethods:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/obs/services/model/BucketMetadataInfoResult$Builder;)Ljava/util/List;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->exposeHeaders:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/obs/services/model/BucketMetadataInfoResult$Builder;)Lcom/obs/services/model/StorageClassEnum;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-object p0
.end method

.method static synthetic access$600(Lcom/obs/services/model/BucketMetadataInfoResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->location:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/obs/services/model/BucketMetadataInfoResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->obsVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/obs/services/model/BucketMetadataInfoResult$Builder;)Lcom/obs/services/model/AvailableZoneEnum;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->availableZone:Lcom/obs/services/model/AvailableZoneEnum;

    return-object p0
.end method

.method static synthetic access$900(Lcom/obs/services/model/BucketMetadataInfoResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->epid:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public allowHeaders(Ljava/util/List;)Lcom/obs/services/model/BucketMetadataInfoResult$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/obs/services/model/BucketMetadataInfoResult$Builder;"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->allowHeaders:Ljava/util/List;

    return-object p0
.end method

.method public allowMethods(Ljava/util/List;)Lcom/obs/services/model/BucketMetadataInfoResult$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/obs/services/model/BucketMetadataInfoResult$Builder;"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->allowMethods:Ljava/util/List;

    return-object p0
.end method

.method public allowOrigin(Ljava/lang/String;)Lcom/obs/services/model/BucketMetadataInfoResult$Builder;
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->allowOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public availableZone(Lcom/obs/services/model/AvailableZoneEnum;)Lcom/obs/services/model/BucketMetadataInfoResult$Builder;
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->availableZone:Lcom/obs/services/model/AvailableZoneEnum;

    return-object p0
.end method

.method public bucketType(Lcom/obs/services/model/BucketTypeEnum;)Lcom/obs/services/model/BucketMetadataInfoResult$Builder;
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->bucketType:Lcom/obs/services/model/BucketTypeEnum;

    return-object p0
.end method

.method public build()Lcom/obs/services/model/BucketMetadataInfoResult;
    .registers 3

    .line 149
    new-instance v0, Lcom/obs/services/model/BucketMetadataInfoResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/obs/services/model/BucketMetadataInfoResult;-><init>(Lcom/obs/services/model/BucketMetadataInfoResult$Builder;Lcom/obs/services/model/BucketMetadataInfoResult$1;)V

    return-object v0
.end method

.method public epid(Ljava/lang/String;)Lcom/obs/services/model/BucketMetadataInfoResult$Builder;
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->epid:Ljava/lang/String;

    return-object p0
.end method

.method public exposeHeaders(Ljava/util/List;)Lcom/obs/services/model/BucketMetadataInfoResult$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/obs/services/model/BucketMetadataInfoResult$Builder;"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->exposeHeaders:Ljava/util/List;

    return-object p0
.end method

.method public location(Ljava/lang/String;)Lcom/obs/services/model/BucketMetadataInfoResult$Builder;
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->location:Ljava/lang/String;

    return-object p0
.end method

.method public maxAge(I)Lcom/obs/services/model/BucketMetadataInfoResult$Builder;
    .registers 2

    .line 104
    iput p1, p0, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->maxAge:I

    return-object p0
.end method

.method public obsVersion(Ljava/lang/String;)Lcom/obs/services/model/BucketMetadataInfoResult$Builder;
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->obsVersion:Ljava/lang/String;

    return-object p0
.end method

.method public storageClass(Lcom/obs/services/model/StorageClassEnum;)Lcom/obs/services/model/BucketMetadataInfoResult$Builder;
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/obs/services/model/BucketMetadataInfoResult$Builder;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-object p0
.end method
