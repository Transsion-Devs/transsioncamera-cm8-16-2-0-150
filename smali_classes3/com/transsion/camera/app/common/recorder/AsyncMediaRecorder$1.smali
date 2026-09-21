.class Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;)V
    .registers 2

    .line 367
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder$1;->this$0:Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 2

    .line 375
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder$1;->this$0:Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->operationPrepared()V

    return-void
.end method

.method public onStart()V
    .registers 1

    .line 370
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder$1;->this$0:Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->startMediaRecorder()V

    return-void
.end method
