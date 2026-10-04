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

    .line 233
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
    .registers 3

    .line 236
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_40

    return-void

    .line 251
    :pswitch_6
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 252
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float p0, p0

    mul-float/2addr p0, v0

    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float v0, v0

    div-float/2addr p0, v0

    .line 254
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x30

    .line 252
    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    return-void

    .line 248
    :pswitch_1e
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mshowFocalLengthBar(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    return-void

    .line 245
    :pswitch_24
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mshowTickRing(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    return-void

    :pswitch_2a
    const/16 p1, 0x67

    .line 238
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 239
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmDefaultViewState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mswitchToViewState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V

    return-void

    .line 242
    :pswitch_39
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mshowPointBar(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    return-void

    nop

    :pswitch_data_40
    .packed-switch 0x65
        :pswitch_39
        :pswitch_2a
        :pswitch_24
        :pswitch_1e
        :pswitch_6
    .end packed-switch
.end method
