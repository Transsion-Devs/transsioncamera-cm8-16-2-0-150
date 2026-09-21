.class Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager$UiHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;Landroid/os/Looper;)V
    .registers 3

    .line 61
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager$UiHandler;->this$0:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    .line 62
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 67
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 68
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_a

    return-void

    .line 70
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager$UiHandler;->this$0:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->-$$Nest$mupdateSize(Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;)V

    return-void
.end method
