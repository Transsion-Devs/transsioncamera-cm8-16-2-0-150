.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$TeleRangeConverterState;
.super Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TeleRangeConverterState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;II)V
    .registers 4

    .line 2747
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$TeleRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    .line 2748
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;II)V

    return-void
.end method


# virtual methods
.method public currentRange(I)Z
    .registers 2

    .line 2753
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->mMin:I

    if-lt p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method protected onEnter(IZ)V
    .registers 3

    .line 2781
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->onEnter(IZ)V

    .line 2782
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$TeleRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez p1, :cond_c

    .line 2783
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->onTeleCameraSelected()V

    :cond_c
    return-void
.end method

.method public progressToValue(IZ)I
    .registers 7

    .line 2758
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$TeleRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraDeviceZoom(I)I

    .line 2759
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$TeleRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusRatio()F

    move-result v0

    int-to-float v1, p1

    rem-float v2, v1, v0

    float-to-int v2, v2

    if-eqz v2, :cond_1b

    div-float v3, v1, v0

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_1b
    div-float v3, v1, v0

    float-to-int v3, v3

    :goto_1e
    if-nez p2, :cond_39

    .line 2767
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$TeleRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmTeleRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object p2

    if-eqz p2, :cond_39

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$TeleRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmTeleRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object p0

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->mMax:I

    if-ne p1, p0, :cond_39

    if-eqz v2, :cond_39

    div-float/2addr v1, v0

    float-to-int p0, v1

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_39
    return v3
.end method

.method updateNextSwitchType(IZ)V
    .registers 5

    .line 2789
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$TeleRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateNextSwitchCamera(I)V

    .line 2790
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$TeleRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setValueToSetting(IZ)V

    return-void
.end method

.method public valueToProgress(I)I
    .registers 2

    .line 2776
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$TeleRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraZoom(I)I

    move-result p0

    return p0
.end method
