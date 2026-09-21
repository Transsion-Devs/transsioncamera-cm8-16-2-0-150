.class Lcom/transsion/camera/utils/debug/CaptureCheckManager$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/debug/CaptureCheckManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/utils/debug/CaptureCheckManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/utils/debug/CaptureCheckManager;Landroid/os/Looper;)V
    .registers 3

    .line 44
    iput-object p1, p0, Lcom/transsion/camera/utils/debug/CaptureCheckManager$1;->this$0:Lcom/transsion/camera/utils/debug/CaptureCheckManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 47
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    return-void

    .line 49
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/utils/debug/CaptureCheckManager$1;->this$0:Lcom/transsion/camera/utils/debug/CaptureCheckManager;

    invoke-static {p0}, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->-$$Nest$mcheckCapture(Lcom/transsion/camera/utils/debug/CaptureCheckManager;)V

    return-void
.end method
