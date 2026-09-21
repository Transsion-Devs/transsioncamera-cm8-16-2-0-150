.class Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI$ZoomStatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomStatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI;Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI$ZoomStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 30
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI$ZoomStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 33
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI;->-$$Nest$fgetmTag(Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 34
    const-string v0, "key_wide_camera_item_seleccted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 35
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch p1, :sswitch_data_80

    goto :goto_57

    :sswitch_37
    const-string p1, "value_macro_camera_item_zoom_seleccted"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    goto :goto_57

    :cond_40
    const/4 v2, 0x2

    goto :goto_57

    :sswitch_42
    const-string p1, "value_macro_camera_item_second_zoom_seleccted"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    goto :goto_57

    :cond_4b
    const/4 v2, 0x1

    goto :goto_57

    :sswitch_4d
    const-string p1, "value_wide_camera_item_second_zoom_seleccted"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    goto :goto_57

    :cond_56
    move v2, v1

    :goto_57
    packed-switch v2, :pswitch_data_8e

    goto :goto_7e

    .line 44
    :pswitch_5b
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI;->updateEntryView()V

    return-void

    .line 38
    :pswitch_61
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI;->access$000(Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 39
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI;->access$100(Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string p2, "value_send_current_view_status"

    .line 40
    invoke-virtual {p1, v0, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseMacroZoomItemUI;->updateEntryView()V

    :cond_7e
    :goto_7e
    return-void

    nop

    :sswitch_data_80
    .sparse-switch
        -0xcc955a9 -> :sswitch_4d
        0xe85a5b4 -> :sswitch_42
        0x1c5669cf -> :sswitch_37
    .end sparse-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_61
        :pswitch_61
        :pswitch_5b
    .end packed-switch
.end method
