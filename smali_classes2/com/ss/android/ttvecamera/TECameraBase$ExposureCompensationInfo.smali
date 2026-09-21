.class public Lcom/ss/android/ttvecamera/TECameraBase$ExposureCompensationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECameraBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExposureCompensationInfo"
.end annotation


# instance fields
.field public exposure:I

.field public max:I

.field public min:I

.field public step:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 562
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraBase$ExposureCompensationInfo;->max:I

    .line 563
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraBase$ExposureCompensationInfo;->exposure:I

    .line 564
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraBase$ExposureCompensationInfo;->min:I

    const/4 v0, 0x0

    .line 565
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraBase$ExposureCompensationInfo;->step:F

    return-void
.end method


# virtual methods
.method public isSupportExposureCompensation()Z
    .registers 3

    .line 568
    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraBase$ExposureCompensationInfo;->max:I

    iget v1, p0, Lcom/ss/android/ttvecamera/TECameraBase$ExposureCompensationInfo;->min:I

    if-le v0, v1, :cond_11

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraBase$ExposureCompensationInfo;->step:F

    const v0, 0x3a83126f    # 0.001f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method
