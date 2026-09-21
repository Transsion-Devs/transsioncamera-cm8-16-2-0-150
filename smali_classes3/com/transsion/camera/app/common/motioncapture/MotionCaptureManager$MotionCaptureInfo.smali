.class public Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MotionCaptureInfo"
.end annotation


# instance fields
.field public mBanding:I

.field public mBmDetectResult:I

.field public mBmDetectResultOfSilentCapture:I

.field public mCaptureType:I

.field public mMainFreq:F

.field public mMotionIntensity:I

.field public mSilentCaptureTimestamp:J

.field public mSwitchValue:Ljava/lang/String;

.field public mTimestamp:J


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;IJ)V
    .registers 7

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 734
    iput-wide v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mSilentCaptureTimestamp:J

    const/4 p1, -0x1

    .line 735
    iput p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mBmDetectResultOfSilentCapture:I

    .line 736
    iput p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mBmDetectResult:I

    .line 738
    iput p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mBanding:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 739
    iput v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mMainFreq:F

    .line 740
    iput p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mMotionIntensity:I

    .line 742
    iput p2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mCaptureType:I

    .line 743
    iput-wide p3, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mTimestamp:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MotionCaptureInfo { mCaptureType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mCaptureType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTimestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mSilentCaptureTimestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mSilentCaptureTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mBmDetectResult = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mBmDetectResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBmDetectResultOfSilentCapture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mBmDetectResultOfSilentCapture:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMainFreq = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mMainFreq:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMotionIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mMotionIntensity:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
