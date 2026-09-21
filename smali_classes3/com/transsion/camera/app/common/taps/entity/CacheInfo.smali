.class public Lcom/transsion/camera/app/common/taps/entity/CacheInfo;
.super Lcom/transsion/camera/app/common/taps/entity/BaseInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;
    }
.end annotation


# instance fields
.field private final mDisplayNameInfo:Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

.field private final mImageInfo:Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;

.field private final mLivePhotoInfo:Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;

.field private final mQualityInfo:Lcom/transsion/camera/app/common/taps/entity/QualityInfo;


# direct methods
.method private constructor <init>(JLcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;)V
    .registers 7

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;-><init>(J)V

    .line 14
    iput-object p3, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;->mImageInfo:Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;

    .line 15
    iput-object p4, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;->mQualityInfo:Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    .line 16
    iput-object p5, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;->mLivePhotoInfo:Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;

    .line 17
    iput-object p6, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;->mDisplayNameInfo:Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

    return-void
.end method

.method synthetic constructor <init>(JLcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;Lcom/transsion/camera/app/common/taps/entity/CacheInfo-IA;)V
    .registers 8

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;-><init>(JLcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;)V

    return-void
.end method


# virtual methods
.method public getDisplayNameInfo()Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;->mDisplayNameInfo:Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

    return-object p0
.end method

.method public getImageInfo()Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;->mImageInfo:Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;

    return-object p0
.end method

.method public getLivePhotoInfo()Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;->mLivePhotoInfo:Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;

    return-object p0
.end method

.method public getQualityInfo()Lcom/transsion/camera/app/common/taps/entity/QualityInfo;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;->mQualityInfo:Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{ mTimestampKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mImageInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;->mImageInfo:Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mQualityInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;->mQualityInfo:Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLivePhotoInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;->mLivePhotoInfo:Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayNameInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;->mDisplayNameInfo:Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
