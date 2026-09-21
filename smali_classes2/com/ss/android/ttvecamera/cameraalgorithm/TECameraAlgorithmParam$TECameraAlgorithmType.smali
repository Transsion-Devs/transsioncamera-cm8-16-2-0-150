.class public Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmParam$TECameraAlgorithmType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TECameraAlgorithmType"
.end annotation


# static fields
.field public static TE_CAMERA_ALGORITHM_TYPE_FACE_DETECT:I = 0x2

.field public static TE_CAMERA_ALGORITHM_TYPE_INVALID:I = 0x0

.field public static TE_CAMERA_ALGORITHM_TYPE_LENS_SHARPEN:I = 0x4

.field public static TE_CAMERA_ALGORITHM_TYPE_RHYTHMIC_MOTION:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
