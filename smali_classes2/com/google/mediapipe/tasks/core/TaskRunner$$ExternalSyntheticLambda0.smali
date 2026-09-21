.class public final synthetic Lcom/google/mediapipe/tasks/core/TaskRunner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/framework/PacketListCallback;


# instance fields
.field public final synthetic f$0:Lcom/google/mediapipe/tasks/core/OutputHandler;

.field public final synthetic f$1:Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mediapipe/tasks/core/OutputHandler;Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/TaskRunner$$ExternalSyntheticLambda0;->f$0:Lcom/google/mediapipe/tasks/core/OutputHandler;

    iput-object p2, p0, Lcom/google/mediapipe/tasks/core/TaskRunner$$ExternalSyntheticLambda0;->f$1:Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;

    return-void
.end method


# virtual methods
.method public final process(Ljava/util/List;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner$$ExternalSyntheticLambda0;->f$0:Lcom/google/mediapipe/tasks/core/OutputHandler;

    iget-object p0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner$$ExternalSyntheticLambda0;->f$1:Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;

    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/core/TaskRunner;->$r8$lambda$uV5eJ0E2p93kwD73qbTBFaFAplg(Lcom/google/mediapipe/tasks/core/OutputHandler;Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;Ljava/util/List;)V

    return-void
.end method
