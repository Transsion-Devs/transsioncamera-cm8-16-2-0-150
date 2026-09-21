.class public Lcom/ss/android/vesdk/filterparam/pub/VEVideoCanvasFilter;
.super Lcom/ss/android/vesdk/filterparam/pub/VEFilter;
.source "SourceFile"


# instance fields
.field public blur:J

.field public color:Ljava/lang/String;

.field public enableAntiAliasing:Z

.field public gradientBottomColor:Ljava/lang/String;

.field public gradientTopColor:Ljava/lang/String;

.field public image:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 21
    invoke-direct {p0}, Lcom/ss/android/vesdk/filterparam/pub/VEFilter;-><init>()V

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCanvasFilter;->blur:J

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCanvasFilter;->color:Ljava/lang/String;

    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCanvasFilter;->enableAntiAliasing:Z

    .line 14
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCanvasFilter;->image:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCanvasFilter;->gradientTopColor:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCanvasFilter;->gradientBottomColor:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;->VideoCanvas:Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEFilter;->filterType:Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;

    return-void
.end method
