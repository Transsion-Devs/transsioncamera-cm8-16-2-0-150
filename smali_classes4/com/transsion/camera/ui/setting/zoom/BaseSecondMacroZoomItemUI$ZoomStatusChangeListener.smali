.class Lcom/transsion/camera/ui/setting/zoom/BaseSecondMacroZoomItemUI$ZoomStatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/BaseSecondMacroZoomItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomStatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondMacroZoomItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/zoom/BaseSecondMacroZoomItemUI;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondMacroZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondMacroZoomItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/BaseSecondMacroZoomItemUI;Lcom/transsion/camera/ui/setting/zoom/BaseSecondMacroZoomItemUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondMacroZoomItemUI$ZoomStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseSecondMacroZoomItemUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 32
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondMacroZoomItemUI$ZoomStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 35
    const-string v0, "key_wide_camera_item_seleccted"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 36
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch p1, :sswitch_data_5e

    goto :goto_35

    :sswitch_15
    const-string p1, "value_macro_camera_item_zoom_seleccted"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto :goto_35

    :cond_1e
    const/4 v2, 0x2

    goto :goto_35

    :sswitch_20
    const-string p1, "value_macro_camera_item_second_zoom_seleccted"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto :goto_35

    :cond_29
    const/4 v2, 0x1

    goto :goto_35

    :sswitch_2b
    const-string p1, "value_wide_camera_item_second_zoom_seleccted"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_35

    :cond_34
    move v2, v1

    :goto_35
    packed-switch v2, :pswitch_data_6c

    goto :goto_5c

    .line 45
    :pswitch_39
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondMacroZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondMacroZoomItemUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondMacroZoomItemUI;->updateEntryView()V

    return-void

    .line 39
    :pswitch_3f
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondMacroZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondMacroZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondMacroZoomItemUI;->access$000(Lcom/transsion/camera/ui/setting/zoom/BaseSecondMacroZoomItemUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 40
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondMacroZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondMacroZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondMacroZoomItemUI;->access$100(Lcom/transsion/camera/ui/setting/zoom/BaseSecondMacroZoomItemUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string p2, "value_send_current_view_status"

    .line 41
    invoke-virtual {p1, v0, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondMacroZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondMacroZoomItemUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondMacroZoomItemUI;->updateEntryView()V

    :cond_5c
    :goto_5c
    return-void

    nop

    :sswitch_data_5e
    .sparse-switch
        -0xcc955a9 -> :sswitch_2b
        0xe85a5b4 -> :sswitch_20
        0x1c5669cf -> :sswitch_15
    .end sparse-switch

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_39
        :pswitch_3f
    .end packed-switch
.end method
