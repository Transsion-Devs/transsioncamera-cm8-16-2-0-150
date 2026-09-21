.class Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/exposure/ExposureUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V
    .registers 3

    .line 153
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 154
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Lcom/transsion/camera/ui/setting/exposure/ExposureUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    if-nez p0, :cond_25

    .line 161
    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage exposureUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 165
    :cond_25
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_60

    goto :goto_39

    .line 182
    :pswitch_2b
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$mhideExposureView(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V

    return-void

    .line 179
    :pswitch_2f
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$mshowExposureView(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V

    return-void

    .line 167
    :pswitch_33
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmIsEvChanging(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Z

    move-result p1

    if-eqz p1, :cond_3a

    :goto_39
    return-void

    .line 170
    :cond_3a
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$mhideExposureView(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V

    .line 171
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmScrollTriggered(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Z

    move-result p1

    if-eqz p1, :cond_56

    const/4 p1, 0x0

    .line 172
    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fputmScrollTriggered(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Z)V

    .line 173
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string v0, "key_exposure_scroll_start_and_hide"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v1, "exposure_hide"

    .line 174
    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    :cond_56
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetsOperationControl(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 p1, 0x9a

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    :pswitch_data_60
    .packed-switch 0x64
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
    .end packed-switch
.end method
