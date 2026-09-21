.class Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture$StatusListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture$StatusListener;->this$0:Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture;Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture$StatusListener;-><init>(Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture;)V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "capture_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_58

    .line 75
    :cond_c
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch p1, :sswitch_data_5a

    goto :goto_3c

    :sswitch_1c
    const-string p1, "shot2shot_end"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto :goto_3c

    :cond_25
    const/4 v2, 0x2

    goto :goto_3c

    :sswitch_27
    const-string p1, "capture_end"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    goto :goto_3c

    :cond_30
    move v2, v0

    goto :goto_3c

    :sswitch_32
    const-string p1, "capture_start"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto :goto_3c

    :cond_3b
    move v2, v1

    :goto_3c
    packed-switch v2, :pswitch_data_68

    goto :goto_58

    .line 85
    :pswitch_40
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture$StatusListener;->this$0:Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture;->-$$Nest$fputmIsCapturing(Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture;Z)V

    return-void

    .line 77
    :pswitch_46
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture$StatusListener;->this$0:Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture;->-$$Nest$fputmIsCapturing(Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture;Z)V

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture$StatusListener;->this$0:Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture;->isModeSupport()Z

    move-result p1

    if-eqz p1, :cond_58

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture$StatusListener;->this$0:Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture;->-$$Nest$mupdateFlareCaptureScene(Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture;)V

    :cond_58
    :goto_58
    return-void

    nop

    :sswitch_data_5a
    .sparse-switch
        -0x76a61dd7 -> :sswitch_32
        0x9bb6c62 -> :sswitch_27
        0x667e128e -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_46
        :pswitch_40
        :pswitch_40
    .end packed-switch
.end method
