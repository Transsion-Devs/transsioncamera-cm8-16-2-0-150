.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V
    .registers 2

    .line 226
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Lcom/transsion/camera/ui/setting/zoom/ZoomUI5-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 229
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_28

    return-void

    .line 241
    :pswitch_6
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mshowFocalLengthBar(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    return-void

    .line 238
    :pswitch_c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mshowTickRing(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    return-void

    :pswitch_12
    const/16 p1, 0x67

    .line 231
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmDefaultViewState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mswitchToViewState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V

    return-void

    .line 235
    :pswitch_21
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mshowPointBar(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x65
        :pswitch_21
        :pswitch_12
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
