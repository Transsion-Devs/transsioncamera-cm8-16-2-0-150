.class public final synthetic Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;

.field public final synthetic f$1:Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/IHandLandmarker$ILandmarkerListener;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/IHandLandmarker$ILandmarkerListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector$$ExternalSyntheticLambda1;->f$1:Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/IHandLandmarker$ILandmarkerListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector$$ExternalSyntheticLambda1;->f$1:Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/IHandLandmarker$ILandmarkerListener;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->$r8$lambda$Wcq8fClS97O3Bw0H7TW6v5ueOWc(Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/IHandLandmarker$ILandmarkerListener;)V

    return-void
.end method
