.class Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$FlareCaptureDataCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlareCaptureDataCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$FlareCaptureDataCallback;->this$0:Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$FlareCaptureDataCallback;-><init>(Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 7

    .line 77
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataCallback, data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", state = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch p1, :sswitch_data_80

    goto :goto_51

    :sswitch_31
    const-string p1, "key_mode_changed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    goto :goto_51

    :cond_3a
    const/4 v3, 0x2

    goto :goto_51

    :sswitch_3c
    const-string p1, "key_flare_capture_status"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    goto :goto_51

    :cond_45
    move v3, v2

    goto :goto_51

    :sswitch_47
    const-string p1, "key_on_pause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    goto :goto_51

    :cond_50
    move v3, v1

    :goto_51
    packed-switch v3, :pswitch_data_8e

    goto :goto_7e

    :pswitch_55
    if-lez p2, :cond_7e

    .line 82
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$FlareCaptureDataCallback;->this$0:Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;)Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$FlareCaptureDataCallback;->this$0:Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;)Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :pswitch_6a
    if-lez p2, :cond_7e

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$FlareCaptureDataCallback;->this$0:Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;)Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$FlareCaptureDataCallback;->this$0:Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;)Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7e
    :goto_7e
    return-void

    nop

    :sswitch_data_80
    .sparse-switch
        -0x20653e8a -> :sswitch_47
        0x4a54117c -> :sswitch_3c
        0x7a144df8 -> :sswitch_31
    .end sparse-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_55
        :pswitch_6a
    .end packed-switch
.end method
