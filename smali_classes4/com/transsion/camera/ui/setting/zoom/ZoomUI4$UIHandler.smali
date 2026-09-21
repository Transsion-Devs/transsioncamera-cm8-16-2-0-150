.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)V
    .registers 3

    .line 178
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 179
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    if-nez v0, :cond_12

    .line 186
    iget-object p0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "UIHandler handleMessage zoomUI is null, return. "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 190
    :cond_12
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    const/4 v2, 0x0

    if-eq p1, v1, :cond_35

    packed-switch p1, :pswitch_data_46

    goto :goto_3b

    .line 209
    :pswitch_1d
    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$mfadeInZoomWheel(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Z)V

    return-void

    .line 206
    :pswitch_21
    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$mshowZoomItemRoot(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Z)V

    return-void

    .line 199
    :pswitch_25
    iget-boolean p1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCameraSwitching:Z

    if-eqz p1, :cond_31

    const/16 p1, 0x68

    const-wide/16 v0, 0x12c

    .line 200
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 202
    :cond_31
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$monSlipStop(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)V

    return-void

    .line 192
    :cond_35
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmIsZoomChanging(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Z

    move-result p1

    if-eqz p1, :cond_3c

    :goto_3b
    return-void

    :cond_3c
    const/16 p1, 0x6a

    .line 195
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p0, 0x1

    .line 196
    invoke-virtual {v0, v2, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomWheel(ZZ)V

    return-void

    :pswitch_data_46
    .packed-switch 0x68
        :pswitch_25
        :pswitch_21
        :pswitch_1d
    .end packed-switch
.end method
