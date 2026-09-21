.class public Lcom/transsion/camera/app/common/ZoomInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field baseZoomRatio:F

.field customZoomValue:I

.field focalLength:Ljava/lang/String;

.field focalLengths:[Ljava/lang/String;

.field maxZoomRatio:I

.field minZoomRatio:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 6
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/ZoomInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseZoomRatio()F
    .registers 1

    .line 48
    iget p0, p0, Lcom/transsion/camera/app/common/ZoomInfo;->baseZoomRatio:F

    return p0
.end method

.method public getCustomZoomValue()I
    .registers 1

    .line 63
    iget p0, p0, Lcom/transsion/camera/app/common/ZoomInfo;->customZoomValue:I

    return p0
.end method

.method public getFocalLength()Ljava/lang/String;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/ZoomInfo;->focalLength:Ljava/lang/String;

    return-object p0
.end method

.method public getFocalLengths()[Ljava/lang/String;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/common/ZoomInfo;->focalLengths:[Ljava/lang/String;

    return-object p0
.end method

.method public getMaxZoomRatio()I
    .registers 1

    .line 51
    iget p0, p0, Lcom/transsion/camera/app/common/ZoomInfo;->maxZoomRatio:I

    return p0
.end method

.method public getMinZoomRatio()I
    .registers 1

    .line 55
    iget p0, p0, Lcom/transsion/camera/app/common/ZoomInfo;->minZoomRatio:I

    return p0
.end method

.method public inCurrentRange(I)Z
    .registers 3

    .line 72
    iget v0, p0, Lcom/transsion/camera/app/common/ZoomInfo;->minZoomRatio:I

    if-lt p1, v0, :cond_a

    iget p0, p0, Lcom/transsion/camera/app/common/ZoomInfo;->maxZoomRatio:I

    if-ge p1, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public setBaseZoomRatio(F)V
    .registers 2

    .line 20
    iput p1, p0, Lcom/transsion/camera/app/common/ZoomInfo;->baseZoomRatio:F

    return-void
.end method

.method public setCustomZoomValue(I)V
    .registers 2

    .line 36
    iput p1, p0, Lcom/transsion/camera/app/common/ZoomInfo;->customZoomValue:I

    return-void
.end method

.method public setFocalLength(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/transsion/camera/app/common/ZoomInfo;->focalLength:Ljava/lang/String;

    return-void
.end method

.method public setFocalLengths([Ljava/lang/String;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/transsion/camera/app/common/ZoomInfo;->focalLengths:[Ljava/lang/String;

    return-void
.end method

.method public setMaxZoomRatio(I)V
    .registers 2

    .line 24
    iput p1, p0, Lcom/transsion/camera/app/common/ZoomInfo;->maxZoomRatio:I

    return-void
.end method

.method public setMinZoomRatio(I)V
    .registers 2

    .line 28
    iput p1, p0, Lcom/transsion/camera/app/common/ZoomInfo;->minZoomRatio:I

    return-void
.end method
