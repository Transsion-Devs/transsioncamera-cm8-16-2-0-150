.class public Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/taps/entity/CacheInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDisplayNameInfo:Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

.field private mImageInfo:Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;

.field private mLivePhotoInfo:Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;

.field private mQualityInfo:Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

.field private final mTimestamp:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p1, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;->mTimestamp:J

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/taps/entity/CacheInfo;)V
    .registers 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;->mTimestamp:J

    .line 61
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;->getImageInfo()Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;->mImageInfo:Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;

    .line 62
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;->getQualityInfo()Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;->mQualityInfo:Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    .line 63
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;->getLivePhotoInfo()Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;->mLivePhotoInfo:Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;

    .line 64
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;->getDisplayNameInfo()Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;->mDisplayNameInfo:Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/camera/app/common/taps/entity/CacheInfo;
    .registers 9

    .line 88
    new-instance v0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;->mTimestamp:J

    iget-object v3, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;->mImageInfo:Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;

    iget-object v4, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;->mQualityInfo:Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    iget-object v5, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;->mLivePhotoInfo:Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;

    iget-object v6, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;->mDisplayNameInfo:Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;-><init>(JLcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;Lcom/transsion/camera/app/common/taps/entity/CacheInfo-IA;)V

    return-object v0
.end method

.method public setDisplayNameInfo(Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;)Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;->mDisplayNameInfo:Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

    return-object p0
.end method

.method public setImageInfo(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;)Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;->mImageInfo:Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;

    return-object p0
.end method

.method public setLivePhotoInfo(Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;)Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;->mLivePhotoInfo:Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;

    return-object p0
.end method

.method public setQualityInfo(Lcom/transsion/camera/app/common/taps/entity/QualityInfo;)Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;->mQualityInfo:Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    return-object p0
.end method
