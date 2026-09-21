.class public Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;
.super Lcom/ss/android/vesdk/filterparam/pub/VEFilter;
.source "SourceFile"


# instance fields
.field public alpha:D

.field public anchorX:D

.field public anchorY:D

.field public blendMode:Ljava/lang/String;

.field public borderColor:Ljava/lang/String;

.field public borderWidth:D

.field public flipX:Z

.field public flipY:Z

.field public isAutoFitScale:Z

.field public positionX:D

.field public positionY:D

.field public rotation:D

.field public scaleX:D

.field public scaleY:D


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 29
    invoke-direct {p0}, Lcom/ss/android/vesdk/filterparam/pub/VEFilter;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 10
    iput-wide v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->alpha:D

    const-wide/16 v2, 0x0

    .line 11
    iput-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->anchorX:D

    .line 12
    iput-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->anchorY:D

    .line 13
    const-string v4, ""

    iput-object v4, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->blendMode:Ljava/lang/String;

    .line 14
    iput-object v4, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->borderColor:Ljava/lang/String;

    .line 15
    iput-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->borderWidth:D

    const/4 v4, 0x0

    .line 16
    iput-boolean v4, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->flipX:Z

    .line 17
    iput-boolean v4, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->flipY:Z

    const/4 v4, 0x1

    .line 19
    iput-boolean v4, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->isAutoFitScale:Z

    .line 20
    iput-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->positionX:D

    .line 21
    iput-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->positionY:D

    .line 22
    iput-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->rotation:D

    .line 23
    iput-wide v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->scaleX:D

    .line 24
    iput-wide v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->scaleY:D

    .line 30
    sget-object v0, Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;->Transform:Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEFilter;->filterType:Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;

    return-void
.end method
