.class Lcom/singleblur/blur/STBlurPreview$1;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singleblur/blur/STBlurPreview;-><init>(Landroid/content/Context;ZLjava/lang/String;Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singleblur/blur/STBlurPreview;

.field final synthetic val$resize:Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

.field final synthetic val$segmentModel:Ljava/lang/String;

.field final synthetic val$threadCount:Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;

.field final synthetic val$useSegment:Z


# direct methods
.method constructor <init>(Lcom/singleblur/blur/STBlurPreview;Ljava/lang/String;ZLjava/lang/String;Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;)V
    .registers 7

    .line 117
    iput-object p1, p0, Lcom/singleblur/blur/STBlurPreview$1;->this$0:Lcom/singleblur/blur/STBlurPreview;

    iput-boolean p3, p0, Lcom/singleblur/blur/STBlurPreview$1;->val$useSegment:Z

    iput-object p4, p0, Lcom/singleblur/blur/STBlurPreview$1;->val$segmentModel:Ljava/lang/String;

    iput-object p5, p0, Lcom/singleblur/blur/STBlurPreview$1;->val$resize:Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

    iput-object p6, p0, Lcom/singleblur/blur/STBlurPreview$1;->val$threadCount:Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 5

    .line 120
    iget-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview$1;->val$useSegment:Z

    if-eqz v0, :cond_1a

    .line 121
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview$1;->this$0:Lcom/singleblur/blur/STBlurPreview;

    new-instance v1, Lcom/singleblur/faceapi/FigureSegment;

    iget-object v2, p0, Lcom/singleblur/blur/STBlurPreview$1;->val$segmentModel:Ljava/lang/String;

    iget-object v3, p0, Lcom/singleblur/blur/STBlurPreview$1;->val$resize:Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

    invoke-direct {v1, v2, v3}, Lcom/singleblur/faceapi/FigureSegment;-><init>(Ljava/lang/String;Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;)V

    invoke-static {v0, v1}, Lcom/singleblur/blur/STBlurPreview;->-$$Nest$fputmSegment(Lcom/singleblur/blur/STBlurPreview;Lcom/singleblur/faceapi/FigureSegment;)V

    .line 122
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview$1;->this$0:Lcom/singleblur/blur/STBlurPreview;

    iget-object p0, p0, Lcom/singleblur/blur/STBlurPreview$1;->val$segmentModel:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/singleblur/blur/STBlurPreview;->-$$Nest$fputmSegmentModel(Lcom/singleblur/blur/STBlurPreview;Ljava/lang/String;)V

    return-void

    .line 124
    :cond_1a
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview$1;->this$0:Lcom/singleblur/blur/STBlurPreview;

    new-instance v1, Lcom/singleblur/faceapi/FaceTrack;

    iget-object v2, p0, Lcom/singleblur/blur/STBlurPreview$1;->val$resize:Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

    sget-object v3, Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;->POINT_COUNT_21:Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;

    iget-object p0, p0, Lcom/singleblur/blur/STBlurPreview$1;->val$threadCount:Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;

    invoke-direct {v1, v2, v3, p0}, Lcom/singleblur/faceapi/FaceTrack;-><init>(Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;)V

    invoke-static {v0, v1}, Lcom/singleblur/blur/STBlurPreview;->-$$Nest$fputmTrack(Lcom/singleblur/blur/STBlurPreview;Lcom/singleblur/faceapi/FaceTrack;)V

    return-void
.end method
