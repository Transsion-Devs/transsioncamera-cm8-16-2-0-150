.class public interface abstract Lcom/transsion/camera/app/common/mode/IImageProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addCaptureThumbInfo(Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;)V
.end method

.method public abstract getPictureCount()I
.end method

.method public abstract getPictureSurfaceId()I
.end method

.method public abstract init(Lcom/transsion/camera/app/common/location/LocationManager;Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;Landroid/content/Context;)V
.end method

.method public abstract pause()V
.end method

.method public abstract resetBgEnable()V
.end method

.method public abstract resume()V
.end method

.method public abstract setStatusMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
.end method

.method public abstract unInit()V
.end method

.method public abstract updateCameraId(Ljava/lang/String;)V
.end method

.method public abstract updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
.end method
