.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI$TeleRangeConverterState;
.super Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TeleRangeConverterState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;II)V
    .registers 4

    .line 2092
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$TeleRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    .line 2093
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;II)V

    return-void
.end method


# virtual methods
.method public currentRange(I)Z
    .registers 2

    .line 2098
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->mMin:I

    if-lt p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method protected onEnter(I)V
    .registers 2

    .line 2122
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->onEnter(I)V

    .line 2123
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$TeleRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->onTeleCameraSelected()V

    return-void
.end method

.method public progressToValue(I)I
    .registers 5

    .line 2103
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$TeleRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraDeviceZoom(I)I

    move-result v0

    .line 2104
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$TeleRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iget-object v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusRatio()F

    move-result v1

    .line 2105
    rem-int/lit8 v2, v0, 0xa

    if-eqz v2, :cond_15

    sub-int/2addr v0, v2

    .line 2109
    :cond_15
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$TeleRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmTeleRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object v2

    if-eqz v2, :cond_32

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$TeleRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmTeleRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object p0

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->mMax:I

    if-ne p1, p0, :cond_32

    int-to-float p0, p1

    rem-float p1, p0, v1

    float-to-int p1, p1

    if-eqz p1, :cond_32

    div-float/2addr p0, v1

    float-to-int p0, p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_32
    return v0
.end method

.method public valueToProgress(I)I
    .registers 2

    .line 2117
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$TeleRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraZoom(I)I

    move-result p0

    return p0
.end method
