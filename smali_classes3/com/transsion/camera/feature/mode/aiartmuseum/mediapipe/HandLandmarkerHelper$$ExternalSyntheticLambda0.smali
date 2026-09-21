.class public final synthetic Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;

    return-void
.end method


# virtual methods
.method public final run(Lcom/google/mediapipe/tasks/core/TaskResult;Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;

    check-cast p1, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;

    check-cast p2, Lcom/google/mediapipe/framework/image/MPImage;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->$r8$lambda$_fYgIMqCOy5cAYCYM-9ZgkiQ6F0(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;Lcom/google/mediapipe/framework/image/MPImage;)V

    return-void
.end method
