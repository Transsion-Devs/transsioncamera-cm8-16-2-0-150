.class final Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$Builder;
.super Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/mediapipe/tasks/core/TaskOptions;",
        ">",
        "Lcom/google/mediapipe/tasks/core/TaskInfo$Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private enableFlowLimiting:Ljava/lang/Boolean;

.field private inputStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private outputStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private taskGraphName:Ljava/lang/String;

.field private taskName:Ljava/lang/String;

.field private taskOptions:Lcom/google/mediapipe/tasks/core/TaskOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private taskRunningModeName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 133
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public autoBuild()Lcom/google/mediapipe/tasks/core/TaskInfo;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/mediapipe/tasks/core/TaskInfo<",
            "TT;>;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$Builder;->taskName:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_17

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " taskName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    :cond_17
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$Builder;->taskRunningModeName:Ljava/lang/String;

    if-nez v0, :cond_2c

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " taskRunningModeName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    :cond_2c
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$Builder;->taskGraphName:Ljava/lang/String;

    if-nez v0, :cond_41

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " taskGraphName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    :cond_41
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$Builder;->taskOptions:Lcom/google/mediapipe/tasks/core/TaskOptions;

    if-nez v0, :cond_56

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " taskOptions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    :cond_56
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$Builder;->inputStreams:Ljava/util/List;

    if-nez v0, :cond_6b

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " inputStreams"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    :cond_6b
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$Builder;->outputStreams:Ljava/util/List;

    if-nez v0, :cond_80

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " outputStreams"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    :cond_80
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$Builder;->enableFlowLimiting:Ljava/lang/Boolean;

    if-nez v0, :cond_95

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enableFlowLimiting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    :cond_95
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 215
    new-instance v2, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;

    iget-object v3, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$Builder;->taskName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$Builder;->taskRunningModeName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$Builder;->taskGraphName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$Builder;->taskOptions:Lcom/google/mediapipe/tasks/core/TaskOptions;

    iget-object v7, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$Builder;->inputStreams:Ljava/util/List;

    iget-object v8, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$Builder;->outputStreams:Ljava/util/List;

    iget-object p0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$Builder;->enableFlowLimiting:Ljava/lang/Boolean;

    .line 222
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/mediapipe/tasks/core/TaskOptions;Ljava/util/List;Ljava/util/List;ZLcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$1;)V

    return-object v2

    .line 213
    :cond_b4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing required properties:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEnableFlowLimiting(Z)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/mediapipe/tasks/core/TaskInfo$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 185
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$Builder;->enableFlowLimiting:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setInputStreams(Ljava/util/List;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/mediapipe/tasks/core/TaskInfo$Builder<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 172
    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$Builder;->inputStreams:Ljava/util/List;

    return-object p0

    .line 170
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null inputStreams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOutputStreams(Ljava/util/List;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/mediapipe/tasks/core/TaskInfo$Builder<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 180
    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$Builder;->outputStreams:Ljava/util/List;

    return-object p0

    .line 178
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null outputStreams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTaskGraphName(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/mediapipe/tasks/core/TaskInfo$Builder<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 156
    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$Builder;->taskGraphName:Ljava/lang/String;

    return-object p0

    .line 154
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null taskGraphName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTaskName(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/mediapipe/tasks/core/TaskInfo$Builder<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 140
    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$Builder;->taskName:Ljava/lang/String;

    return-object p0

    .line 138
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null taskName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTaskOptions(Lcom/google/mediapipe/tasks/core/TaskOptions;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/mediapipe/tasks/core/TaskInfo$Builder<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 164
    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$Builder;->taskOptions:Lcom/google/mediapipe/tasks/core/TaskOptions;

    return-object p0

    .line 162
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null taskOptions"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTaskRunningModeName(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/mediapipe/tasks/core/TaskInfo$Builder<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 148
    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$Builder;->taskRunningModeName:Ljava/lang/String;

    return-object p0

    .line 146
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null taskRunningModeName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
