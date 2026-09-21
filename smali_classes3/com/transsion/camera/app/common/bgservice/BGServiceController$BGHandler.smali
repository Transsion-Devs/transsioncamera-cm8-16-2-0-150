.class Lcom/transsion/camera/app/common/bgservice/BGServiceController$BGHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/bgservice/BGServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BGHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/bgservice/BGServiceController;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/bgservice/BGServiceController;Landroid/os/Looper;)V
    .registers 3

    .line 175
    iput-object p1, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController$BGHandler;->this$0:Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    .line 176
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 181
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    const/4 p0, 0x2

    if-eq v0, p0, :cond_16

    const/4 p0, 0x3

    if-eq v0, p0, :cond_c

    goto :goto_33

    .line 196
    :cond_c
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p0, :cond_33

    .line 198
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->forceReleaseSurface()V

    return-void

    .line 190
    :cond_16
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p0, :cond_33

    .line 192
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->onBGServiceDied()V

    return-void

    .line 183
    :cond_20
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/bgservice/BgEvent;

    .line 184
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController$BGHandler;->this$0:Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    iget v0, p1, Lcom/transsion/camera/app/common/bgservice/BgEvent;->mImgReaderId:I

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->-$$Nest$mgetSurface(Lcom/transsion/camera/app/common/bgservice/BGServiceController;I)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 186
    const-class v0, Lcom/transsion/camera/app/common/bgservice/BgEvent;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->notifyEventCallback(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_33
    :goto_33
    return-void
.end method
