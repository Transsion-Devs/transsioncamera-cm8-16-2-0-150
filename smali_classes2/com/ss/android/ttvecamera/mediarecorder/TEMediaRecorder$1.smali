.class Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->startRecord(I)V
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

    .line 103
    iput-object p1, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder$1;->this$0:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder$1;->this$0:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->prepare()V

    .line 107
    iget-object p0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder$1;->this$0:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->start()V

    return-void
.end method
