.class public Lcom/google/mediapipe/tasks/core/OutputHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/core/OutputHandler$ProgressListener;,
        Lcom/google/mediapipe/tasks/core/OutputHandler$ValueListener;,
        Lcom/google/mediapipe/tasks/core/OutputHandler$PureResultListener;,
        Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener;,
        Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OutputT::",
        "Lcom/google/mediapipe/tasks/core/TaskResult;",
        "InputT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OutputHandler"


# instance fields
.field protected cachedTaskResult:Lcom/google/mediapipe/tasks/core/TaskResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOutputT;"
        }
    .end annotation
.end field

.field protected errorListener:Lcom/google/mediapipe/tasks/core/ErrorListener;

.field private handleTimestampBoundChanges:Z

.field protected latestOutputTimestamp:J

.field private outputPacketConverter:Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter<",
            "TOutputT;TInputT;>;"
        }
    .end annotation
.end field

.field private resultListener:Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener<",
            "TOutputT;TInputT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 76
    iput-wide v0, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->latestOutputTimestamp:J

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->handleTimestampBoundChanges:Z

    return-void
.end method


# virtual methods
.method public getLatestOutputTimestamp()J
    .registers 3

    .line 132
    iget-wide v0, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->latestOutputTimestamp:J

    return-wide v0
.end method

.method handleTimestampBoundChanges()Z
    .registers 1

    .line 120
    iget-boolean p0, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->handleTimestampBoundChanges:Z

    return p0
.end method

.method public retrieveCachedTaskResult()Lcom/google/mediapipe/tasks/core/TaskResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOutputT;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->cachedTaskResult:Lcom/google/mediapipe/tasks/core/TaskResult;

    const/4 v1, 0x0

    .line 126
    iput-object v1, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->cachedTaskResult:Lcom/google/mediapipe/tasks/core/TaskResult;

    return-object v0
.end method

.method run(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;)V"
        }
    .end annotation

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->outputPacketConverter:Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter;

    invoke-interface {v0, p1}, Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter;->convertToTaskResult(Ljava/util/List;)Lcom/google/mediapipe/tasks/core/TaskResult;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->resultListener:Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener;

    if-nez v1, :cond_1c

    .line 145
    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->cachedTaskResult:Lcom/google/mediapipe/tasks/core/TaskResult;

    const/4 v0, 0x0

    .line 146
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {p1}, Lcom/google/mediapipe/framework/Packet;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->latestOutputTimestamp:J

    return-void

    :catch_1a
    move-exception p1

    goto :goto_28

    .line 148
    :cond_1c
    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->outputPacketConverter:Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter;

    invoke-interface {v1, p1}, Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter;->convertToTaskInput(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    .line 149
    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->resultListener:Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener;

    invoke-interface {v1, v0, p1}, Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener;->run(Lcom/google/mediapipe/tasks/core/TaskResult;Ljava/lang/Object;)V
    :try_end_27
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_0 .. :try_end_27} :catch_1a

    return-void

    .line 152
    :goto_28
    iget-object p0, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->errorListener:Lcom/google/mediapipe/tasks/core/ErrorListener;

    if-eqz p0, :cond_30

    .line 153
    invoke-interface {p0, p1}, Lcom/google/mediapipe/tasks/core/ErrorListener;->onError(Ljava/lang/RuntimeException;)V

    goto :goto_46

    .line 155
    :cond_30
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error occurs when getting MediaPipe task result. "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OutputHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_46
    return-void
.end method

.method public setErrorListener(Lcom/google/mediapipe/tasks/core/ErrorListener;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->errorListener:Lcom/google/mediapipe/tasks/core/ErrorListener;

    return-void
.end method

.method public setHandleTimestampBoundChanges(Z)V
    .registers 2

    .line 115
    iput-boolean p1, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->handleTimestampBoundChanges:Z

    return-void
.end method

.method public setOutputPacketConverter(Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter<",
            "TOutputT;TInputT;>;)V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->outputPacketConverter:Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter;

    return-void
.end method

.method public setResultListener(Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener<",
            "TOutputT;TInputT;>;)V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->resultListener:Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener;

    return-void
.end method
