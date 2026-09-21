.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$SatSupportWideConverterState;
.super Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SatSupportWideConverterState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;II)V
    .registers 4

    .line 2606
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$SatSupportWideConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    .line 2607
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;II)V

    return-void
.end method


# virtual methods
.method public currentRange(I)Z
    .registers 3

    .line 2623
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->mMin:I

    if-lt p1, v0, :cond_a

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->mMax:I

    if-gt p1, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method protected onEnter(IZ)V
    .registers 3

    .line 2612
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->onEnter(IZ)V

    .line 2613
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$SatSupportWideConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->onSatCameraSelected()V

    return-void
.end method

.method progressToValue(IZ)I
    .registers 3

    return p1
.end method

.method updateNextSwitchType(IZ)V
    .registers 3

    .line 2618
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$SatSupportWideConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setValueToSetting(IZ)V

    return-void
.end method

.method valueToProgress(I)I
    .registers 2

    return p1
.end method
