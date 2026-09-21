.class public interface abstract Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;


# virtual methods
.method public abstract getPreProcessed()Z
.end method

.method public abstract needPreviewFrame()Z
.end method

.method public abstract onCameraOperateAction(I)V
.end method

.method public abstract onFirstSteadyFrame()V
.end method

.method public abstract onModeInit(Lcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;Ljava/lang/String;)V
.end method

.method public abstract onModePaused()V
.end method

.method public abstract onModeResumed()V
.end method

.method public abstract onModeUnInit()V
.end method

.method public abstract onPreviewFrame([BIII)V
.end method

.method public abstract onSettingReady()V
.end method

.method public abstract onSurfaceCreated()V
.end method

.method public abstract onSurfaceDestoryed()V
.end method

.method public abstract process(Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II[FJI)Z
.end method

.method public abstract setPreProcessed(Z)V
.end method

.method public abstract setRecordCallback(Lcom/transsion/camera/app/common/mode/IRecordCallback;)V
.end method

.method public abstract updatePreviewSize(Landroid/util/Size;Landroid/util/Size;)V
.end method
