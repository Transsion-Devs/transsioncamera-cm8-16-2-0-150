.class public Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mFlags:I

.field private mIsLivePhoto:Z

.field private mIsLowQuality:Z

.field private final mTimestampKey:J

.field private mUserID:I


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-wide p1, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->mTimestampKey:J

    return-void
.end method

.method private updateFlags(IZ)V
    .registers 3

    if-eqz p2, :cond_9

    .line 357
    iget p2, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->mFlags:I

    return-void

    .line 359
    :cond_9
    iget p2, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->mFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->mFlags:I

    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;
    .registers 9

    .line 374
    new-instance v0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->mTimestampKey:J

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->mIsLowQuality:Z

    iget-boolean v4, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->mIsLivePhoto:Z

    iget v5, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->mUserID:I

    iget v6, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->mFlags:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;-><init>(JZZIILcom/transsion/camera/app/common/taps/entity/DisplayNameInfo-IA;)V

    return-object v0
.end method

.method public setAIFrame(Z)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;
    .registers 3

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 346
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->updateFlags(IZ)V

    return-object p0
.end method

.method public setAIZoomSR(Z)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;
    .registers 3

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x2

    .line 351
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->updateFlags(IZ)V

    return-object p0
.end method

.method public setFlags(I)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;
    .registers 2

    .line 341
    iput p1, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->mFlags:I

    return-object p0
.end method

.method public setLivePhotoState(Z)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;
    .registers 2

    .line 369
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->mIsLivePhoto:Z

    return-object p0
.end method

.method public setLowQualityState(Z)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;
    .registers 2

    .line 364
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->mIsLowQuality:Z

    return-object p0
.end method

.method public setUserID(I)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;
    .registers 2

    .line 336
    iput p1, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->mUserID:I

    return-object p0
.end method
