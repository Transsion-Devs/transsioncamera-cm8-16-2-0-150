.class public abstract Lcom/transsion/camera/ui/setting/zoom/BaseFrontZoomItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/zoom/BaseFrontZoomItemUI$ZoomStatusChangeListener;
    }
.end annotation


# instance fields
.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Landroid/content/res/Resources;)V
    .registers 3

    .line 25
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 22
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/BaseFrontZoomItemUI$ZoomStatusChangeListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseFrontZoomItemUI$ZoomStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseFrontZoomItemUI;Lcom/transsion/camera/ui/setting/zoom/BaseFrontZoomItemUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFrontZoomItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method private onClick()V
    .registers 3

    .line 53
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_13

    .line 56
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_13
    return-void

    .line 59
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFrontZoomItemUI;->getDefaultZoomValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_item_seleccted"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFrontZoomItemUI;->getResponseValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected abstract getDefaultZoomValue()Ljava/lang/String;
.end method

.method public getEntryViewType()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;
    .registers 1

    .line 88
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->TYPE_TEXT:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    return-object p0
.end method

.method protected abstract getResponseValue()Ljava/lang/String;
.end method

.method protected abstract getZoomRatio()Ljava/lang/String;
.end method

.method protected onClickEvent()Z
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFrontZoomItemUI;->onClick()V

    const/4 p0, 0x1

    return p0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 3

    .line 82
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 83
    const-string p1, "key_wide_camera_item_seleccted"

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFrontZoomItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->registerKeyToMonitor(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method protected setSelected(Z)V
    .registers 2

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    if-eqz p0, :cond_7

    .line 108
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_7
    return-void
.end method

.method public unInit()V
    .registers 3

    .line 42
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->unInit()V

    .line 43
    const-string v0, "key_wide_camera_item_seleccted"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFrontZoomItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->unRegisterKeyToMonitor(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public updateEntryValue(Ljava/lang/String;)V
    .registers 3

    .line 66
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->updateEntryValue(Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFrontZoomItemUI;->getDefaultZoomValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_19
    return-void
.end method

.method protected abstract updateEntryViewStatus(Ljava/lang/String;)V
.end method

.method protected updateTextEntryView()V
    .registers 2

    .line 75
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->updateTextEntryView()V

    .line 76
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFrontZoomItemUI;->getZoomRatio()Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
