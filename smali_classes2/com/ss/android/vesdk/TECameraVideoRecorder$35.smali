.class Lcom/ss/android/vesdk/TECameraVideoRecorder$35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->setFocusWithFaceDetect(Lcom/ss/android/vesdk/VEFocusSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;)V
    .registers 2

    .line 2594
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$35;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;Lcom/ss/android/vesdk/faceinfo/VEFaceDetectInfo;)V
    .registers 9

    .line 2597
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$35;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUseFaceDetectFocus:Z
    invoke-static {p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3400(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 2600
    :cond_9
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$35;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFocusFaceDetectCount:I
    invoke-static {p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3500(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    move-result p1

    if-eqz p1, :cond_17

    .line 2601
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$35;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # operator-- for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFocusFaceDetectCount:I
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3510(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    return-void

    :cond_17
    const/4 p1, 0x0

    if-eqz p2, :cond_b0

    .line 2604
    invoke-virtual {p2}, Lcom/ss/android/vesdk/faceinfo/VEFaceDetectInfo;->getInfo()[Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;

    move-result-object v0

    if-eqz v0, :cond_b0

    .line 2606
    invoke-virtual {p2}, Lcom/ss/android/vesdk/faceinfo/VEFaceDetectInfo;->getInfo()[Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 2607
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

    .line 2609
    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$35;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRenderSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3300(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object v4

    iget v4, v4, Lcom/ss/android/vesdk/VESize;->height:I

    int-to-double v4, v4

    div-double/2addr v0, v4

    double-to-float v0, v0

    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$35;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/TERecorderBase;->getRenderView()Lcom/ss/android/vesdk/render/VERenderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/vesdk/render/VERenderView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    int-to-double v4, p2

    mul-double/2addr v4, v2

    .line 2610
    iget-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$35;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRenderSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {p2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3300(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object p2

    iget p2, p2, Lcom/ss/android/vesdk/VESize;->width:I

    int-to-double v1, p2

    div-double/2addr v4, v1

    double-to-float p2, v4

    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$35;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/TERecorderBase;->getRenderView()Lcom/ss/android/vesdk/render/VERenderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/vesdk/render/VERenderView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p2, v1

    .line 2612
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$35;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;
    invoke-static {v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3600(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object v1

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/VEFocusSettings;->setX(I)V

    .line 2613
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$35;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;
    invoke-static {v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3600(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object v1

    float-to-int v2, p2

    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/VEFocusSettings;->setY(I)V

    .line 2614
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$35;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;
    invoke-static {v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3600(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ss/android/vesdk/VEFocusSettings;->setFromUser(Z)V

    .line 2615
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$35;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;
    invoke-static {v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3600(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setFocus(Lcom/ss/android/vesdk/VEFocusSettings;)V

    .line 2617
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$35;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;
    invoke-static {v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3600(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEFocusSettings;->getCameraFaceFocusPoint()Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFaceFocusPoint;

    move-result-object v1

    if-eqz v1, :cond_109

    .line 2618
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$35;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;
    invoke-static {v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3600(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEFocusSettings;->getCameraFaceFocusPoint()Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFaceFocusPoint;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFaceFocusPoint;->focusPoint(FF)V

    goto :goto_109

    .line 2621
    :cond_b0
    iget-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$35;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-virtual {p2}, Lcom/ss/android/vesdk/TERecorderBase;->getRenderView()Lcom/ss/android/vesdk/render/VERenderView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ss/android/vesdk/render/VERenderView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    .line 2622
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$35;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/TERecorderBase;->getRenderView()Lcom/ss/android/vesdk/render/VERenderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/vesdk/render/VERenderView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 2624
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$35;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3600(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object v0

    float-to-int v2, p2

    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/VEFocusSettings;->setX(I)V

    .line 2625
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$35;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3600(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object v0

    float-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/VEFocusSettings;->setY(I)V

    .line 2626
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$35;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3600(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/vesdk/VEFocusSettings;->setFromUser(Z)V

    .line 2627
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$35;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3600(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setFocus(Lcom/ss/android/vesdk/VEFocusSettings;)V

    .line 2629
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$35;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3600(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEFocusSettings;->getCameraFaceFocusPoint()Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFaceFocusPoint;

    move-result-object v0

    if-eqz v0, :cond_109

    .line 2630
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$35;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3600(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEFocusSettings;->getCameraFaceFocusPoint()Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFaceFocusPoint;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFaceFocusPoint;->focusPoint(FF)V

    .line 2633
    :cond_109
    :goto_109
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$35;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUseFaceDetectFocus:Z
    invoke-static {p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3402(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)Z

    return-void
.end method
