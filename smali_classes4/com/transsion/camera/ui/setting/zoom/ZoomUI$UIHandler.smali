.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)V
    .registers 3

    .line 150
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 151
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    if-nez v0, :cond_b

    goto :goto_33

    .line 161
    :cond_b
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4e

    packed-switch p1, :pswitch_data_7e

    goto :goto_33

    .line 196
    :pswitch_15
    iget-boolean p1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isCameraSwitching:Z

    if-eqz p1, :cond_21

    const/16 p1, 0x68

    const-wide/16 v0, 0x12c

    .line 197
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 199
    :cond_21
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$monSlipStop(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)V

    return-void

    .line 182
    :pswitch_25
    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$mupdateCenterZoomView(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Z)V

    return-void

    .line 179
    :pswitch_29
    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$mupdateCenterZoomView(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Z)V

    return-void

    .line 170
    :pswitch_2d
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmIsZoomChanging(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Z

    move-result p0

    if-eqz p0, :cond_34

    :goto_33
    return-void

    .line 173
    :cond_34
    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->showZoomUI(Z)V

    .line 174
    iget-object p0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p1, 0xec

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 163
    :pswitch_3f
    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->access$000(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)I

    move-result p0

    const/4 p1, 0x7

    if-ne p0, p1, :cond_4a

    .line 164
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$mshowCenterZoomView(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)V

    return-void

    .line 166
    :cond_4a
    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->showZoomUI(Z)V

    return-void

    .line 185
    :cond_4e
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mSmoothValue:Ljava/util/ArrayList;

    if-eqz p1, :cond_76

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_76

    iget-boolean p1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    if-nez p1, :cond_76

    .line 186
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mSmoothValue:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 187
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mSmoothValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 188
    invoke-static {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$mstartSmoothZoom(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;I)V

    const-wide/16 v2, 0x14

    .line 189
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 191
    :cond_76
    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->sendZoomUIMessage(Z)V

    .line 192
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$mupdateZoomItemValue(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)V

    return-void

    nop

    :pswitch_data_7e
    .packed-switch 0x64
        :pswitch_3f
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_15
    .end packed-switch
.end method
