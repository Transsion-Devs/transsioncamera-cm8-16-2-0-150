.class Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/exposure/ExposureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(I)V
    .registers 5

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$fgetmListener(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;

    move-result-object v0

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e6

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->isEvSeekBarVisible()Z

    move-result v0

    if-eqz v0, :cond_e6

    if-ltz p1, :cond_e6

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$fgetmEvSeekbar(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->getMax()I

    move-result v0

    if-le p1, v0, :cond_28

    goto/16 :goto_e6

    .line 222
    :cond_28
    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$sfgetsMaxEv()I

    move-result v0

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$sfgetsMinEv()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_35

    goto/16 :goto_e6

    .line 226
    :cond_35
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v1, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$fputmLastProgress(Lcom/transsion/camera/ui/setting/exposure/ExposureView;I)V

    int-to-float p1, p1

    .line 227
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$fgetmEvSeekbar(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->getMax()I

    move-result v1

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$sfgetsMinEv()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    add-float/2addr p1, v1

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$fgetmEvSeekbar(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->getMax()I

    move-result v1

    div-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$fgetmLastEv(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_e6

    .line 230
    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onProgressChanged] mLastProgress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$fgetmLastEv(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",sMaxEv = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$sfgetsMaxEv()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sMinEv = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$sfgetsMinEv()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",max = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$fgetmEvSeekbar(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    move-result-object v2

    .line 232
    invoke-virtual {v2}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->getMax()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$fputmLastEv(Lcom/transsion/camera/ui/setting/exposure/ExposureView;F)V

    .line 234
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$fgetmListener(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$fgetmLastEv(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)F

    move-result v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;->onExposureViewChanged(F)V

    .line 235
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$fgetmEvChangeStartNotified(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Z

    move-result p1

    if-nez p1, :cond_e6

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$fgetmEvSeekbar(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    move-result-object p1

    .line 236
    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->backgroundVisible()Z

    move-result p1

    if-eqz p1, :cond_e6

    .line 237
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$monEvChanged(Lcom/transsion/camera/ui/setting/exposure/ExposureView;Z)V

    :cond_e6
    :goto_e6
    return-void
.end method

.method public onStartTracking()V
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$fgetmListener(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;->onTrackingTouchStatusChanged(Z)V

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$fputmEvChangeStartNotified(Lcom/transsion/camera/ui/setting/exposure/ExposureView;Z)V

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$fgetmEvSeekbar(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->startTouching(Landroid/view/View;)V

    return-void
.end method

.method public onStopTracking()V
    .registers 4

    .line 209
    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopTracking mEvChangeStartNotified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$fgetmEvChangeStartNotified(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$fgetmEvChangeStartNotified(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$monEvChanged(Lcom/transsion/camera/ui/setting/exposure/ExposureView;Z)V

    .line 213
    :cond_2c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->-$$Nest$fgetmEvSeekbar(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->stopTouching(Landroid/view/View;)V

    return-void
.end method
