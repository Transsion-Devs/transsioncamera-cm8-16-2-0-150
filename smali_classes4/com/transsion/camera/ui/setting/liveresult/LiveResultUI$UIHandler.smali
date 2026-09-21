.class Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V
    .registers 3

    .line 207
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 208
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 213
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;

    if-nez p0, :cond_25

    .line 215
    invoke-static {}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage liveResultUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 219
    :cond_25
    invoke-static {}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UIHandler handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 220
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_58

    return-void

    .line 230
    :pswitch_45
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->-$$Nest$mdoUpdateAllValue(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    return-void

    .line 226
    :pswitch_49
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->-$$Nest$mdoHideView(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    .line 227
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->-$$Nest$mstopSensorMonitors(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    return-void

    .line 222
    :pswitch_50
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->-$$Nest$mdoShowView(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    .line 223
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->-$$Nest$mstartSensorMonitors(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    return-void

    nop

    :pswitch_data_58
    .packed-switch 0x65
        :pswitch_50
        :pswitch_49
        :pswitch_45
    .end packed-switch
.end method
