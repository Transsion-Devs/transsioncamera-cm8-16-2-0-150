.class public interface abstract Lcom/transsion/camera/app/ui/IHintUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IScreenFormControl;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;
.implements Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$UnionValueAnimatorUpdateListener;


# virtual methods
.method public abstract endHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
.end method

.method public abstract fadeInHint()V
.end method

.method public abstract fadeOutHint()V
.end method

.method public abstract getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;
.end method

.method public abstract getHintState()Z
.end method

.method public abstract getTwinkleGuideMode()Ljava/lang/String;
.end method

.method public abstract hideAllHint()V
.end method

.method public abstract hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
.end method

.method public abstract hideTwinkleGuide()V
.end method

.method public abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract notifyCameraOperateActionToUI(I)V
.end method

.method public abstract onOrientationChanged(IZ)V
.end method

.method public abstract refreshHintViewVisibility()V
.end method

.method public abstract registerHintStateListener(Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;)V
.end method

.method public abstract resetEndHint()V
.end method

.method public abstract resetTwinkleGuide(Z)V
.end method

.method public abstract resume()V
.end method

.method public abstract setEnableHintUI(Z)V
.end method

.method public abstract setHintUITrans(II)V
.end method

.method public abstract setModePickerControl(Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;)V
.end method

.method public abstract setRecorderOrientation(I)V
.end method

.method public abstract setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
.end method

.method public abstract setTwinkleGuideAvailable(Z)V
.end method

.method public abstract setupViews()V
.end method

.method public abstract showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
.end method

.method public abstract unInit()V
.end method

.method public abstract unRegisterHintStateListener()V
.end method

.method public abstract updateCurrentMode(Ljava/lang/String;)V
.end method

.method public abstract updatePreviewRect(Landroid/graphics/Rect;)V
.end method
