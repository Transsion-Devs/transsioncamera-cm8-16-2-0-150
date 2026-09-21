.class public final Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ARConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;,
        Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;,
        Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$FocusMode;,
        Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;,
        Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;,
        Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$AugmentedFaceMode;
    }
.end annotation


# instance fields
.field public augmentedFaceMode:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$AugmentedFaceMode;

.field public cloudAnchorMode:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;

.field public depthMode:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;

.field public focusMode:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$FocusMode;

.field public lightEstimationMode:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;

.field public planeFindingMode:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$AugmentedFaceMode;->DISABLED:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$AugmentedFaceMode;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;->augmentedFaceMode:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$AugmentedFaceMode;

    .line 731
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;->DISABLED:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;->cloudAnchorMode:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;

    .line 732
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;->DISABLED:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;->depthMode:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;

    .line 733
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$FocusMode;->FIXED:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$FocusMode;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;->focusMode:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$FocusMode;

    .line 734
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;->DISABLED:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;->lightEstimationMode:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;

    .line 735
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;->DISABLED:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;->planeFindingMode:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;

    return-void
.end method
