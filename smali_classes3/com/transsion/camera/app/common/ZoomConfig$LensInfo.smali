.class public Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ZoomConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LensInfo"
.end annotation


# instance fields
.field private mBaseRatio:I

.field private mCameraId:Ljava/lang/String;

.field private mCurrentRatio:I

.field private mEndRatio:I

.field private mFixedRatio:I

.field private mFocalLength:[Ljava/lang/String;

.field private mIsEndRatioIncluding:Z

.field private mLensType:I

.field private mStartRatio:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocalLength(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)[Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mFocalLength:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLensType(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mLensType:I

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 295
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mFocalLength:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public containsRatio(I)Z
    .registers 6

    .line 367
    iget v0, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mStartRatio:I

    iget v1, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mEndRatio:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_c

    if-ne v0, p1, :cond_b

    return v3

    :cond_b
    return v2

    .line 371
    :cond_c
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mIsEndRatioIncluding:Z

    if-eqz p0, :cond_16

    if-gt v0, p1, :cond_15

    if-gt p1, v1, :cond_15

    return v3

    :cond_15
    return v2

    :cond_16
    if-gt v0, p1, :cond_1b

    if-ge p1, v1, :cond_1b

    return v3

    :cond_1b
    return v2
.end method

.method public getBaseRatio()I
    .registers 1

    .line 312
    iget p0, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mBaseRatio:I

    return p0
.end method

.method public getCameraId()Ljava/lang/String;
    .registers 1

    .line 354
    iget-object p0, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentRatio()I
    .registers 1

    .line 336
    iget p0, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mCurrentRatio:I

    return p0
.end method

.method public getFixedRatio()I
    .registers 1

    .line 345
    iget p0, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mFixedRatio:I

    return p0
.end method

.method public getFocalLengths()[Ljava/lang/String;
    .registers 1

    .line 363
    iget-object p0, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mFocalLength:[Ljava/lang/String;

    return-object p0
.end method

.method public getLensType()I
    .registers 1

    .line 303
    iget p0, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mLensType:I

    return p0
.end method

.method public getStartRatio()I
    .registers 1

    .line 327
    iget p0, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mStartRatio:I

    return p0
.end method

.method public setBaseRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;
    .registers 2

    .line 307
    iput p1, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mBaseRatio:I

    return-object p0
.end method

.method public setCameraId(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;
    .registers 2

    .line 349
    iput-object p1, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrentRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;
    .registers 2

    .line 331
    iput p1, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mCurrentRatio:I

    return-object p0
.end method

.method public setFixedRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;
    .registers 2

    .line 340
    iput p1, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mFixedRatio:I

    return-object p0
.end method

.method public varargs setFocalLength([Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;
    .registers 2

    .line 358
    iput-object p1, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mFocalLength:[Ljava/lang/String;

    return-object p0
.end method

.method public setLensType(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;
    .registers 2

    .line 298
    iput p1, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mLensType:I

    return-object p0
.end method

.method public setRatioRange(II)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;
    .registers 4

    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setRatioRange(IIZ)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object p0

    return-object p0
.end method

.method public setRatioRange(IIZ)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;
    .registers 4

    .line 320
    iput p1, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mStartRatio:I

    .line 321
    iput p2, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mEndRatio:I

    .line 322
    iput-boolean p3, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mIsEndRatioIncluding:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LensInfo{mLensType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mLensType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStartRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mStartRatio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEndRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mEndRatio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->mCurrentRatio:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
