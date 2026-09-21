.class Lcom/transsion/camera/app/common/gsensor/StableMonitor$MyHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/gsensor/StableMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private final mReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/transsion/camera/app/common/gsensor/StableMonitor;)V
    .registers 3

    .line 212
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 213
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor$MyHandler;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor$MyHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;

    if-nez p0, :cond_b

    goto :goto_15

    .line 223
    :cond_b
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1a

    const/16 p1, 0x66

    if-eq v0, p1, :cond_16

    :goto_15
    return-void

    .line 228
    :cond_16
    invoke-static {p0}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->-$$Nest$mdoResetValue(Lcom/transsion/camera/app/common/gsensor/StableMonitor;)V

    return-void

    .line 225
    :cond_1a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/gsensor/GyroData;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->-$$Nest$mdoCheckValue(Lcom/transsion/camera/app/common/gsensor/StableMonitor;Lcom/transsion/camera/app/common/gsensor/GyroData;)V

    return-void
.end method
