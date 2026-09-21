.class public Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmParam$TECameraAlgorithmType;
    }
.end annotation


# instance fields
.field public processListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget v0, Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmParam$TECameraAlgorithmType;->TE_CAMERA_ALGORITHM_TYPE_INVALID:I

    iput v0, p0, Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmParam;->type:I

    return-void
.end method
