.class public final synthetic Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/mediapipe/tasks/core/TaskOptions;

.field public final synthetic f$1:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mediapipe/tasks/core/TaskOptions;Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda7;->f$0:Lcom/google/mediapipe/tasks/core/TaskOptions;

    iput-object p2, p0, Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda7;->f$1:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda7;->f$0:Lcom/google/mediapipe/tasks/core/TaskOptions;

    iget-object p0, p0, Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda7;->f$1:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;

    check-cast p1, Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions;

    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/core/TaskOptions;->$r8$lambda$h6RiN82CjQiWaENkBD7jREQN5zI(Lcom/google/mediapipe/tasks/core/TaskOptions;Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions;)V

    return-void
.end method
