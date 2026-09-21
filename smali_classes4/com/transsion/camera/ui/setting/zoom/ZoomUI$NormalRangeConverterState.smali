.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI$NormalRangeConverterState;
.super Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NormalRangeConverterState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;II)V
    .registers 4

    .line 2067
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$NormalRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    .line 2068
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;II)V

    return-void
.end method


# virtual methods
.method protected onEnter(I)V
    .registers 2

    .line 2083
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->onEnter(I)V

    .line 2084
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$NormalRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->onMainCameraSelected()V

    return-void
.end method

.method public progressToValue(I)I
    .registers 2

    return p1
.end method

.method public valueToProgress(I)I
    .registers 2

    return p1
.end method
