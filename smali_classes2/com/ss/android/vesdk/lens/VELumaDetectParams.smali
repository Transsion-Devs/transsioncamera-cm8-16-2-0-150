.class public Lcom/ss/android/vesdk/lens/VELumaDetectParams;
.super Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public detectFrames:I

.field public ecStep:F

.field public exposureTime:I

.field public faceNum:I

.field public faceRects:[Landroid/graphics/Rect;

.field public iso:I

.field public maxExposureTime:I

.field public maxIso:I

.field public minExposureTime:I

.field public minIso:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;-><init>()V

    const/16 v0, 0x64

    .line 12
    iput v0, p0, Lcom/ss/android/vesdk/lens/VELumaDetectParams;->iso:I

    .line 17
    iput v0, p0, Lcom/ss/android/vesdk/lens/VELumaDetectParams;->minIso:I

    const/16 v0, 0x1900

    .line 22
    iput v0, p0, Lcom/ss/android/vesdk/lens/VELumaDetectParams;->maxIso:I

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcom/ss/android/vesdk/lens/VELumaDetectParams;->exposureTime:I

    .line 32
    iput v0, p0, Lcom/ss/android/vesdk/lens/VELumaDetectParams;->minExposureTime:I

    .line 37
    iput v0, p0, Lcom/ss/android/vesdk/lens/VELumaDetectParams;->maxExposureTime:I

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/ss/android/vesdk/lens/VELumaDetectParams;->ecStep:F

    const/4 v0, 0x3

    .line 47
    iput v0, p0, Lcom/ss/android/vesdk/lens/VELumaDetectParams;->detectFrames:I

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/ss/android/vesdk/lens/VELumaDetectParams;->faceNum:I

    return-void
.end method
