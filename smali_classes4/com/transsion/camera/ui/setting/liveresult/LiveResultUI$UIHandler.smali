.class final Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V
    .registers 3

    const-string v0, "liveResultUI"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 167
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;

    if-nez p0, :cond_2a

    .line 172
    # getter for: Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->access$getTAG$cp()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->what:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage liveResultUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 176
    :cond_2a
    # getter for: Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->access$getTAG$cp()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UIHandler handleMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 177
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_5c

    return-void

    .line 188
    :pswitch_4a
    # invokes: Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->doUpdateAllValue()V
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->access$doUpdateAllValue(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    return-void

    .line 184
    :pswitch_4e
    # invokes: Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->doHideView()V
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->access$doHideView(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    .line 185
    # invokes: Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->stopSensorMonitors()V
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->access$stopSensorMonitors(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    return-void

    .line 179
    :pswitch_55
    # invokes: Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->doShowView()V
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->access$doShowView(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    .line 180
    # invokes: Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->startSensorMonitors()V
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->access$startSensorMonitors(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    return-void

    :pswitch_data_5c
    .packed-switch 0x65
        :pswitch_55
        :pswitch_4e
        :pswitch_4a
    .end packed-switch
.end method
