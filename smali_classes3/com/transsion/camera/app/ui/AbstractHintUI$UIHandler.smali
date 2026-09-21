.class Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractHintUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractHintUI;)V
    .registers 3

    .line 227
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 228
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/ui/AbstractHintUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 233
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/AbstractHintUI;

    if-nez p0, :cond_23

    .line 235
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage hintUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 239
    :cond_23
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_56

    return-void

    .line 261
    :pswitch_29
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$msetTwinkleGuideRootGone(Lcom/transsion/camera/app/ui/AbstractHintUI;)V

    return-void

    .line 264
    :pswitch_2d
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$mdoHideAllHints(Lcom/transsion/camera/app/ui/AbstractHintUI;)V

    return-void

    :pswitch_31
    const/4 p1, 0x0

    .line 257
    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$mstopTwinkleGuideAnim(Lcom/transsion/camera/app/ui/AbstractHintUI;Z)V

    .line 258
    invoke-virtual {p0, p1, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateAnalytics(ZZ)V

    return-void

    .line 254
    :pswitch_39
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$mstartTwinkleGuideAnim(Lcom/transsion/camera/app/ui/AbstractHintUI;)V

    return-void

    .line 251
    :pswitch_3d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$mshowDynamicAlwaysHintView(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 248
    :pswitch_45
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$mdoHideInfo(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 243
    :pswitch_4d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$mdoShowHint(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    nop

    :pswitch_data_56
    .packed-switch 0x64
        :pswitch_4d
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_4d
        :pswitch_4d
        :pswitch_3d
        :pswitch_39
        :pswitch_31
        :pswitch_2d
        :pswitch_29
    .end packed-switch
.end method
