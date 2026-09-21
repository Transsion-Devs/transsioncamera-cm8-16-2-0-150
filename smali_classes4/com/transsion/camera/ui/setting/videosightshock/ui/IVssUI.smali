.class public interface abstract Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getRecyclerViewRoot()Landroid/widget/FrameLayout;
.end method

.method public abstract getVssItemAdapter()Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;
.end method

.method public abstract initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/setting/ISetting;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V
.end method

.method public abstract onOrientationChanged(I)V
.end method

.method public abstract onScreenFormChanged(IZ)V
.end method

.method public abstract recoverPanelToDefault(Z)V
.end method

.method public abstract setEnable(Z)V
.end method

.method public abstract updateRecyclerViewScrollState(I)V
.end method

.method public abstract updateSettingUILayout(Landroid/view/View;Landroid/view/ViewGroup;IILcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;ZIZ)V
.end method
