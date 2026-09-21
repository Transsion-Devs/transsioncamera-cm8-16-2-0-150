.class Lcom/ss/android/vesdk/TERecorder$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder;->setFocusWithFaceDetect(Lcom/ss/android/vesdk/VEFocusSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;)V
    .registers 2

    .line 4853
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$22;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;Lcom/ss/android/vesdk/faceinfo/VEFaceDetectInfo;)V
    .registers 9

    .line 4856
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$22;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mUseFaceDetectFocus:Z
    invoke-static {p1}, Lcom/ss/android/vesdk/TERecorder;->access$2700(Lcom/ss/android/vesdk/TERecorder;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 4859
    :cond_9
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$22;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mFocusFaceDetectCount:I
    invoke-static {p1}, Lcom/ss/android/vesdk/TERecorder;->access$2800(Lcom/ss/android/vesdk/TERecorder;)I

    move-result p1

    if-eqz p1, :cond_17

    .line 4860
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$22;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # operator-- for: Lcom/ss/android/vesdk/TERecorder;->mFocusFaceDetectCount:I
    invoke-static {p0}, Lcom/ss/android/vesdk/TERecorder;->access$2810(Lcom/ss/android/vesdk/TERecorder;)I

    return-void

    :cond_17
    const/4 p1, 0x0

    if-eqz p2, :cond_b0

    .line 4863
    invoke-virtual {p2}, Lcom/ss/android/vesdk/faceinfo/VEFaceDetectInfo;->getInfo()[Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;

    move-result-object v0

    if-eqz v0, :cond_b0

    .line 4865
    invoke-virtual {p2}, Lcom/ss/android/vesdk/faceinfo/VEFaceDetectInfo;->getInfo()[Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 4866
    invoke-virtual {p2}, Lcom/ss/android/vesdk/faceinfo/VEFaceDetectInfo;->getInfo()[Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;

    move-result-object p2

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->getRect()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    .line 4868
    iget-object v4, p0, Lcom/ss/android/vesdk/TERecorder$22;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mRenderSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v4}, Lcom/ss/android/vesdk/TERecorder;->access$2600(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object v4

    iget v4, v4, Lcom/ss/android/vesdk/VESize;->width:I

    int-to-double v4, v4

    div-double/2addr v0, v4

    double-to-float v0, v0

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder$22;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/TERecorderBase;->getRenderView()Lcom/ss/android/vesdk/render/VERenderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/vesdk/render/VERenderView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    int-to-double v4, p2

    mul-double/2addr v4, v2

    .line 4869
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder$22;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mRenderSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {p2}, Lcom/ss/android/vesdk/TERecorder;->access$2600(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object p2

    iget p2, p2, Lcom/ss/android/vesdk/VESize;->height:I

    int-to-double v1, p2

    div-double/2addr v4, v1

    double-to-float p2, v4

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder$22;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/TERecorderBase;->getRenderView()Lcom/ss/android/vesdk/render/VERenderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/vesdk/render/VERenderView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p2, v1

    .line 4871
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder$22;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;
    invoke-static {v1}, Lcom/ss/android/vesdk/TERecorder;->access$2900(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object v1

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/VEFocusSettings;->setX(I)V

    .line 4872
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder$22;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;
    invoke-static {v1}, Lcom/ss/android/vesdk/TERecorder;->access$2900(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object v1

    float-to-int v2, p2

    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/VEFocusSettings;->setY(I)V

    .line 4873
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder$22;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;
    invoke-static {v1}, Lcom/ss/android/vesdk/TERecorder;->access$2900(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ss/android/vesdk/VEFocusSettings;->setFromUser(Z)V

    .line 4874
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder$22;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;
    invoke-static {v1}, Lcom/ss/android/vesdk/TERecorder;->access$2900(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/TERecorder;->setFocus(Lcom/ss/android/vesdk/VEFocusSettings;)V

    .line 4876
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder$22;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;
    invoke-static {v1}, Lcom/ss/android/vesdk/TERecorder;->access$2900(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEFocusSettings;->getCameraFaceFocusPoint()Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFaceFocusPoint;

    move-result-object v1

    if-eqz v1, :cond_109

    .line 4877
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder$22;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;
    invoke-static {v1}, Lcom/ss/android/vesdk/TERecorder;->access$2900(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEFocusSettings;->getCameraFaceFocusPoint()Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFaceFocusPoint;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFaceFocusPoint;->focusPoint(FF)V

    goto :goto_109

    .line 4880
    :cond_b0
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder$22;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {p2}, Lcom/ss/android/vesdk/TERecorderBase;->getRenderView()Lcom/ss/android/vesdk/render/VERenderView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ss/android/vesdk/render/VERenderView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    .line 4881
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder$22;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/TERecorderBase;->getRenderView()Lcom/ss/android/vesdk/render/VERenderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/vesdk/render/VERenderView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 4883
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$22;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$2900(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object v0

    float-to-int v2, p2

    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/VEFocusSettings;->setX(I)V

    .line 4884
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$22;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$2900(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object v0

    float-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/VEFocusSettings;->setY(I)V

    .line 4885
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$22;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$2900(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/vesdk/VEFocusSettings;->setFromUser(Z)V

    .line 4886
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$22;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$2900(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/TERecorder;->setFocus(Lcom/ss/android/vesdk/VEFocusSettings;)V

    .line 4888
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$22;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$2900(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEFocusSettings;->getCameraFaceFocusPoint()Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFaceFocusPoint;

    move-result-object v0

    if-eqz v0, :cond_109

    .line 4889
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$22;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$2900(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEFocusSettings;->getCameraFaceFocusPoint()Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFaceFocusPoint;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFaceFocusPoint;->focusPoint(FF)V

    .line 4892
    :cond_109
    :goto_109
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$22;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # setter for: Lcom/ss/android/vesdk/TERecorder;->mUseFaceDetectFocus:Z
    invoke-static {p0, p1}, Lcom/ss/android/vesdk/TERecorder;->access$2702(Lcom/ss/android/vesdk/TERecorder;Z)Z

    return-void
.end method
