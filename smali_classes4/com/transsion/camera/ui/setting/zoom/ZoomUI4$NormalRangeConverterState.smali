.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$NormalRangeConverterState;
.super Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NormalRangeConverterState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;II)V
    .registers 4

    .line 2714
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$NormalRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    .line 2715
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;II)V

    return-void
.end method


# virtual methods
.method protected onEnter(IZ)V
    .registers 3

    .line 2730
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->onEnter(IZ)V

    .line 2731
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$NormalRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez p1, :cond_c

    .line 2732
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->onMainCameraSelected()V

    :cond_c
    return-void
.end method

.method public progressToValue(IZ)I
    .registers 3

    return p1
.end method

.method updateNextSwitchType(IZ)V
    .registers 5

    .line 2738
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$NormalRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateNextSwitchCamera(I)V

    .line 2739
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$NormalRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setValueToSetting(IZ)V

    return-void
.end method

.method public valueToProgress(I)I
    .registers 2

    return p1
.end method
