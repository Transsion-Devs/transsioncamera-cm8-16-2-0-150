.class public Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;
.super Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;
.source "SourceFile"


# static fields
.field public static REQUIREMENT_ENIGMA_DETECT:J = 0x10000L


# instance fields
.field public codeType:I

.field public decodeMultiple:Z

.field public detectRectHeight:F

.field public detectRectLeft:F

.field public detectRectTop:F

.field public detectRectWidth:F

.field public detectRequirement:J

.field public enableDetectRect:Z

.field public enhanceCamera:Z

.field public scanMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 67
    invoke-direct {p0}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRectLeft:F

    .line 16
    iput v0, p0, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRectTop:F

    .line 21
    iput v0, p0, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRectWidth:F

    .line 26
    iput v0, p0, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRectHeight:F

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->enableDetectRect:Z

    .line 37
    iput v0, p0, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->scanMode:I

    .line 43
    sget-wide v1, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->REQUIREMENT_ENIGMA_DETECT:J

    iput-wide v1, p0, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRequirement:J

    .line 50
    iput v0, p0, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->codeType:I

    .line 56
    iput-boolean v0, p0, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->decodeMultiple:Z

    .line 62
    iput-boolean v0, p0, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->enhanceCamera:Z

    const/4 v0, 0x7

    .line 68
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->setAlgorithmType(I)V

    .line 69
    const-string v0, "Enigma Detect"

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->setAlgorithmName(Ljava/lang/String;)V

    return-void
.end method
