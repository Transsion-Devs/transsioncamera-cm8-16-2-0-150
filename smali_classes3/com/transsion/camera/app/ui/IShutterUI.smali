.class public interface abstract Lcom/transsion/camera/app/ui/IShutterUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IRootUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;
    }
.end annotation


# virtual methods
.method public abstract getCShotButtonViewVisible()I
.end method

.method public abstract getIsCapturing()Z
.end method

.method public abstract getQVideoButtonViewVisible()I
.end method

.method public abstract getShutterType()I
.end method

.method public abstract getShutterTypeSelftimerOff()I
.end method

.method public abstract getShutterTypeSelftimerOn()I
.end method

.method public abstract hideCShotNumber()V
.end method

.method public abstract hideShutterButton()V
.end method

.method public abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract isPressed()Z
.end method

.method public abstract isRecordingAndOrientation(ZI)V
.end method

.method public abstract isUIProcessingAndOrientation(ZI)V
.end method

.method public abstract loadAfterPreviewStarted()V
.end method

.method public abstract notifyCSNotSupport()V
.end method

.method public abstract notifyContinuousShotStop()V
.end method

.method public abstract notifyLoseFocus()V
.end method

.method public abstract onContinuousShotProgress(II)V
.end method

.method public abstract onContinuousShotStop()V
.end method

.method public abstract onOrientationChanged(IZ)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onScreenFormChanged(IZ)V
.end method

.method public abstract setContinuousShotEnd(Z)V
.end method

.method public abstract setIsCameraSwitching(Z)V
.end method

.method public abstract setIsCapturing(Z)V
.end method

.method public abstract setIsContinuousShooting(Z)V
.end method

.method public abstract setIsPhotoSizeChanging(Z)V
.end method

.method public abstract setIsQuickVideoRecording(Z)V
.end method

.method public abstract setOnShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;)V
.end method

.method public abstract setPanoramaCaptureBegin(Z)V
.end method

.method public abstract setSelfTimerBegin(Z)V
.end method

.method public abstract setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
.end method

.method public abstract setShutterTypeSelftimerOff(I)V
.end method

.method public abstract setShutterTypeSelftimerOn(I)V
.end method

.method public abstract setSuperNightLiteCaptureState(Z)V
.end method

.method public abstract setSwipeOperationListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwipeOperationListener;)V
.end method

.method public abstract setupViews()V
.end method

.method public abstract showCShotNumber()V
.end method

.method public abstract showShutterButton()V
.end method

.method public abstract stopQuickVideo()V
.end method

.method public abstract transitionToIdle()V
.end method

.method public abstract transitionToPressed(Z)V
.end method

.method public abstract transitionToProcessing()V
.end method

.method public abstract transitionToRegular()V
.end method

.method public abstract transitionToSmall()V
.end method

.method public abstract transitionToSmile()V
.end method

.method public abstract transitionToVoice()V
.end method

.method public abstract unInit()V
.end method

.method public abstract updateCurrentMode(Ljava/lang/String;)V
.end method

.method public abstract updateFlipSecondaryMenuState(ZZ)V
.end method

.method public abstract updateShutterType(IZ)V
.end method
