.class Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$GroupCaptureDataCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupCaptureDataCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;)V
    .registers 2

    .line 393
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$GroupCaptureDataCallback;->this$0:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$GroupCaptureDataCallback;-><init>(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 8

    .line 396
    check-cast p1, Ljava/lang/String;

    .line 397
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_a2

    goto :goto_31

    :sswitch_11
    const-string v0, "key_scene_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_31

    :cond_1a
    move v4, v2

    goto :goto_31

    :sswitch_1c
    const-string v0, "key_icon_select_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto :goto_31

    :cond_25
    move v4, v3

    goto :goto_31

    :sswitch_27
    const-string v0, "key_preview_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    goto :goto_31

    :cond_30
    move v4, v1

    :goto_31
    packed-switch v4, :pswitch_data_b0

    goto :goto_a1

    .line 399
    :pswitch_35
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$GroupCaptureDataCallback;->this$0:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;)Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$UIHandler;

    move-result-object p1

    if-lez p2, :cond_3f

    move v0, v2

    goto :goto_40

    :cond_3f
    move v0, v3

    :goto_40
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$GroupCaptureDataCallback;->this$0:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;)Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$UIHandler;

    move-result-object p0

    if-lez p2, :cond_4c

    move v2, v3

    :cond_4c
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 403
    :pswitch_50
    invoke-static {}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataCallback, KEY_ICON_SELECT_STATE: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 404
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$GroupCaptureDataCallback;->this$0:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;

    if-lez p2, :cond_6d

    move v1, v3

    :cond_6d
    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->-$$Nest$fputmIsIconSelected(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;Z)V

    .line 405
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$GroupCaptureDataCallback;->this$0:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;

    iget-object p2, p1, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p2, :cond_82

    .line 406
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->-$$Nest$fgetmIsIconSelected(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;)Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setSelected(Z)V

    .line 407
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$GroupCaptureDataCallback;->this$0:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->-$$Nest$mupdateIconDrawable(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;)V

    .line 409
    :cond_82
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$GroupCaptureDataCallback;->this$0:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->-$$Nest$mpersistIconState(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;)V

    return-void

    :pswitch_88
    if-nez p2, :cond_a1

    .line 413
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$GroupCaptureDataCallback;->this$0:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;)Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 414
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$GroupCaptureDataCallback;->this$0:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;)Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 415
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$GroupCaptureDataCallback;->this$0:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;

    invoke-static {p0, v1}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->-$$Nest$fputmIsFirstFrameDrawn(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;Z)V

    :cond_a1
    :goto_a1
    return-void

    :sswitch_data_a2
    .sparse-switch
        0x29a7737a -> :sswitch_27
        0x33a8f7b4 -> :sswitch_1c
        0x46710d3e -> :sswitch_11
    .end sparse-switch

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_88
        :pswitch_50
        :pswitch_35
    .end packed-switch
.end method
