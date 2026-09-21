.class public final Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Video2ImageParam"
.end annotation


# instance fields
.field public durationInMs:I

.field public fps:I

.field public height:I

.field public outputPath:Ljava/lang/String;

.field public setpts:F

.field public startInMs:I

.field public tempPngPath:Ljava/lang/String;

.field public videoPath:Ljava/lang/String;

.field public waterMarkPath:Ljava/lang/String;

.field public waterMarkWidth:I

.field public waterMarkXMargin:I

.field public waterMarkYBottomMargin:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1868
    iput v0, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->waterMarkWidth:I

    const v0, 0x3ecccccd    # 0.4f

    .line 1872
    iput v0, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->setpts:F

    const/16 v0, 0x8

    .line 1876
    iput v0, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->fps:I

    const/16 v0, 0xb4

    .line 1881
    iput v0, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->width:I

    const/4 v0, 0x0

    .line 1886
    iput v0, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->height:I

    .line 1891
    iput v0, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->waterMarkXMargin:I

    .line 1896
    iput v0, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->waterMarkYBottomMargin:I

    .line 1901
    iput v0, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->startInMs:I

    .line 1907
    iput v0, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->durationInMs:I

    return-void
.end method
