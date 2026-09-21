.class Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->stopRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder$2;->this$0:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder$2;->this$0:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->stop()V

    return-void
.end method
