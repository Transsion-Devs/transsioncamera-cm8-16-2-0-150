.class Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;Landroid/os/Looper;)V
    .registers 3

    .line 63
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->-$$Nest$mprocessMessage(Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;Landroid/os/Message;)V

    return-void
.end method
