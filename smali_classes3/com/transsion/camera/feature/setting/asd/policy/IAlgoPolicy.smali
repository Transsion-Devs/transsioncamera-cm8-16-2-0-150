.class public interface abstract Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getReplacedIlluminationType(I)I
.end method

.method public abstract setCaptureEndFlag(Z)V
.end method

.method public abstract setHwFeatures(Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;)V
.end method

.method public abstract setStreamId(I)V
.end method

.method public abstract updateAsdLogicData(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z
.end method

.method public abstract updateBrightnessAndISOParameters([II)Z
.end method

.method public abstract updateParameters(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;II)V
.end method
