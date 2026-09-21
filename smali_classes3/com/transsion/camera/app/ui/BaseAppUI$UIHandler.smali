.class Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mAppUIReference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 3

    .line 3946
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3947
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;->mAppUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 3952
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;->mAppUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/BaseAppUI;

    if-nez p0, :cond_25

    .line 3954
    invoke-static {}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage cameraAppUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 3957
    :cond_25
    invoke-static {}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UIHandler handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3958
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_96

    :pswitch_44
    return-void

    .line 3976
    :pswitch_45
    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$mdoUpdateOptionBar(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    return-void

    .line 3979
    :pswitch_49
    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$mdoUpdatePopSettingUI(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    return-void

    .line 3967
    :pswitch_4d
    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$mdoUpdateHelpGuide(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    return-void

    .line 3997
    :pswitch_51
    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$mdoHideCustomPreviewCover(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    return-void

    .line 3994
    :pswitch_55
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$mdoShowCustomPreviewCover(Lcom/transsion/camera/app/ui/BaseAppUI;Landroid/graphics/Bitmap;)V

    return-void

    .line 3991
    :pswitch_5d
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$mdoUpdateShutterType(Lcom/transsion/camera/app/ui/BaseAppUI;IZ)V

    return-void

    .line 3973
    :pswitch_6b
    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$mdoUpdateTopBarAndOptionBar(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    return-void

    .line 3988
    :pswitch_6f
    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$mdoDelayLoadUIManager(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    return-void

    .line 3985
    :pswitch_73
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$monCameraOperateAction(Lcom/transsion/camera/app/ui/BaseAppUI;I)V

    return-void

    .line 3982
    :pswitch_79
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$mnotifyCameraStateToUI(Lcom/transsion/camera/app/ui/BaseAppUI;I)V

    return-void

    .line 3970
    :pswitch_7f
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateSettingUIList()V

    return-void

    .line 3964
    :pswitch_83
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, v0, v1, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$mdoUpdateUIState(Lcom/transsion/camera/app/ui/BaseAppUI;IILjava/lang/String;)V

    return-void

    .line 3960
    :pswitch_8f
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doSetupUIManagers()V

    .line 3961
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->onOrientationChanged()V

    return-void

    :pswitch_data_96
    .packed-switch 0x64
        :pswitch_8f
        :pswitch_83
        :pswitch_7f
        :pswitch_79
        :pswitch_44
        :pswitch_73
        :pswitch_6f
        :pswitch_44
        :pswitch_6b
        :pswitch_5d
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_44
        :pswitch_49
        :pswitch_45
    .end packed-switch
.end method
