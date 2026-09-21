.class public interface abstract Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/IItemListener;


# virtual methods
.method public abstract createItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract initItemUI(II)V
.end method

.method public abstract onOrientationChanged(I)V
.end method

.method public abstract onScreenFormChanged(IZ)V
.end method

.method public abstract setDeviceSettingData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setItemListener(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/IItemListener;)V
.end method

.method public abstract setupItemView()V
.end method

.method public abstract updateLowLight(Z)V
.end method
