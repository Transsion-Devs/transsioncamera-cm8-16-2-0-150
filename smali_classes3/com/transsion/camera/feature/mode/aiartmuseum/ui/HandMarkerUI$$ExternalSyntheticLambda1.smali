.class public final synthetic Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;

.field public final synthetic f$1:Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;II)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI$$ExternalSyntheticLambda1;->f$1:Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;

    iput p3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI$$ExternalSyntheticLambda1;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI$$ExternalSyntheticLambda1;->f$1:Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;

    iget v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI$$ExternalSyntheticLambda1;->f$2:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI$$ExternalSyntheticLambda1;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->$r8$lambda$0PMiK4lWVYM-hiQKZoUOhnNKcm4(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;II)V

    return-void
.end method
