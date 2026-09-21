.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI$SatSupportWideConverterState;
.super Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SatSupportWideConverterState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;II)V
    .registers 4

    .line 1964
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$SatSupportWideConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    .line 1965
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;II)V

    return-void
.end method


# virtual methods
.method public currentRange(I)Z
    .registers 3

    .line 1976
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->mMin:I

    if-lt p1, v0, :cond_a

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->mMax:I

    if-gt p1, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method protected onEnter(I)V
    .registers 2

    .line 1970
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->onEnter(I)V

    .line 1971
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$SatSupportWideConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->onSatCameraSelected()V

    return-void
.end method

.method progressToValue(I)I
    .registers 2

    return p1
.end method

.method valueToProgress(I)I
    .registers 2

    return p1
.end method
