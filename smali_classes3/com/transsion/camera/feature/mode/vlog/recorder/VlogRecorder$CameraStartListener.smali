.class Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder$CameraStartListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStartListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder$CameraStartListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder$CameraStartListener;-><init>(Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 2

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder$CameraStartListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->operationPrepared()V

    return-void
.end method

.method public onStart()V
    .registers 1

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder$CameraStartListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->-$$Nest$mstartMediaRecorder(Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;)V

    return-void
.end method
