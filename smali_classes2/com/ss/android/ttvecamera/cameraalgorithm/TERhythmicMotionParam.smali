.class public Lcom/ss/android/ttvecamera/cameraalgorithm/TERhythmicMotionParam;
.super Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmParam;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public cropList:[F

.field public maxAlpha:F

.field public maxVelocity:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmParam;-><init>()V

    const/4 v0, 0x3

    .line 13
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/ss/android/ttvecamera/cameraalgorithm/TERhythmicMotionParam;->cropList:[F

    .line 29
    sget v0, Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmParam$TECameraAlgorithmType;->TE_CAMERA_ALGORITHM_TYPE_RHYTHMIC_MOTION:I

    iput v0, p0, Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmParam;->type:I

    return-void
.end method
