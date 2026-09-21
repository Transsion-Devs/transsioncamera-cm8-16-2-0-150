.class Lcom/ss/android/vesdk/TECameraVideoRecorder$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->setFocusWithFaceDetect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$num:[I


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;[I)V
    .registers 3

    .line 2555
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$34;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$34;->val$num:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;Lcom/ss/android/vesdk/faceinfo/VEFaceDetectInfo;)V
    .registers 11

    .line 2558
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$34;->val$num:[I

    const/4 v0, 0x0

    aget v1, p1, v0

    if-eqz v1, :cond_c

    add-int/lit8 v1, v1, -0x1

    .line 2559
    aput v1, p1, v0

    return-void

    :cond_c
    if-eqz p2, :cond_a0

    .line 2562
    invoke-virtual {p2}, Lcom/ss/android/vesdk/faceinfo/VEFaceDetectInfo;->getInfo()[Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;

    move-result-object p1

    if-eqz p1, :cond_a0

    .line 2564
    invoke-virtual {p2}, Lcom/ss/android/vesdk/faceinfo/VEFaceDetectInfo;->getInfo()[Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->getRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    .line 2565
    invoke-virtual {p2}, Lcom/ss/android/vesdk/faceinfo/VEFaceDetectInfo;->getInfo()[Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;

    move-result-object p2

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->getRect()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    int-to-double v1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v1, v3

    .line 2567
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$34;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRenderSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3300(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object p1

    iget p1, p1, Lcom/ss/android/vesdk/VESize;->height:I

    int-to-double v5, p1

    div-double/2addr v1, v5

    double-to-float p1, v1

    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$34;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/TERecorderBase;->getRenderView()Lcom/ss/android/vesdk/render/VERenderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/vesdk/render/VERenderView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    int-to-double v1, p2

    mul-double/2addr v1, v3

    .line 2568
    iget-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$34;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRenderSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {p2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3300(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object p2

    iget p2, p2, Lcom/ss/android/vesdk/VESize;->width:I

    int-to-double v3, p2

    div-double/2addr v1, v3

    double-to-float p2, v1

    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$34;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/TERecorderBase;->getRenderView()Lcom/ss/android/vesdk/render/VERenderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/vesdk/render/VERenderView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p2, v1

    .line 2570
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$34;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v1, v1, Lcom/ss/android/vesdk/TERecorderBase;->mRenderView:Lcom/ss/android/vesdk/render/VERenderView;

    if-eqz v1, :cond_70

    invoke-virtual {v1}, Lcom/ss/android/vesdk/render/VERenderView;->getWidth()I

    move-result v1

    move v5, v1

    goto :goto_71

    :cond_70
    move v5, v0

    .line 2571
    :goto_71
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$34;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v1, v1, Lcom/ss/android/vesdk/TERecorderBase;->mRenderView:Lcom/ss/android/vesdk/render/VERenderView;

    if-eqz v1, :cond_7d

    invoke-virtual {v1}, Lcom/ss/android/vesdk/render/VERenderView;->getHeight()I

    move-result v1

    move v6, v1

    goto :goto_7e

    :cond_7d
    move v6, v0

    .line 2573
    :goto_7e
    new-instance v2, Lcom/ss/android/vesdk/VEFocusSettings$Builder;

    float-to-int v3, p1

    float-to-int v4, p2

    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$34;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object p1, p1, Lcom/ss/android/vesdk/TERecorderBase;->mContext:Landroid/content/Context;

    .line 2574
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget v7, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct/range {v2 .. v7}, Lcom/ss/android/vesdk/VEFocusSettings$Builder;-><init>(IIIIF)V

    .line 2575
    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEFocusSettings$Builder;->build()Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object p1

    .line 2576
    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEFocusSettings;->setFromUser(Z)V

    .line 2577
    iget-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$34;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-virtual {p2, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setFocus(Lcom/ss/android/vesdk/VEFocusSettings;)V

    goto :goto_bd

    .line 2579
    :cond_a0
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$34;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/TERecorderBase;->getRenderView()Lcom/ss/android/vesdk/render/VERenderView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ss/android/vesdk/render/VERenderView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$34;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/TERecorderBase;->getRenderView()Lcom/ss/android/vesdk/render/VERenderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/vesdk/render/VERenderView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-virtual {p1, p2, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setFocus(FF)V

    .line 2581
    :goto_bd
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$34;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-virtual {p1, p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->removeFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V

    return-void
.end method
