.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$ZoomUIController;
.super Lcom/transsion/camera/ui/setting/BaseRunnableController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomUIController"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/ui/setting/BaseRunnableController;"
    }
.end annotation


# instance fields
.field private mIsValueIncreasing:Z

.field private mValueOffset:I

.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Landroid/os/Handler;)V
    .registers 3

    .line 2085
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$ZoomUIController;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    .line 2086
    invoke-direct {p0, p2}, Lcom/transsion/camera/ui/setting/BaseRunnableController;-><init>(Landroid/os/Handler;)V

    const/4 p1, -0x1

    .line 2082
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$ZoomUIController;->mValueOffset:I

    const/4 p1, 0x0

    .line 2083
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$ZoomUIController;->mIsValueIncreasing:Z

    return-void
.end method


# virtual methods
.method protected applyNewValue(Ljava/lang/Integer;)V
    .registers 5

    .line 2137
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$ZoomUIController;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmViewState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    goto :goto_29

    .line 2142
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$ZoomUIController;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmFocalLengthBar(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->setZoomRatio(I)V

    goto :goto_29

    .line 2139
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$ZoomUIController;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomPointBar(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->updateZoomRatio(IZ)V

    .line 2146
    :goto_29
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$ZoomUIController;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mdoOnZoomRatioChanged(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;II)V

    return-void
.end method

.method protected bridge synthetic applyNewValue(Ljava/lang/Object;)V
    .registers 2

    .line 2081
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$ZoomUIController;->applyNewValue(Ljava/lang/Integer;)V

    return-void
.end method

.method protected calculateStepParameters(I)V
    .registers 4

    .line 2117
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->originalValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->expectedValue:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 p1, p1, 0xa

    div-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$ZoomUIController;->mValueOffset:I

    .line 2118
    iget p1, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->expectedValue:I

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->originalValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p1, v0, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$ZoomUIController;->mIsValueIncreasing:Z

    return-void
.end method

.method protected getCurrentValue()Ljava/lang/Integer;
    .registers 1

    .line 2132
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$ZoomUIController;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmCurrentRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic getCurrentValue()Ljava/lang/Object;
    .registers 1

    .line 2081
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$ZoomUIController;->getCurrentValue()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected getNewValue(Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 3

    .line 2091
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$ZoomUIController;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomConfig(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    if-nez v0, :cond_18

    .line 2092
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "getNewValue, zoom not supported"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2093
    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 2096
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$ZoomUIController;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomConfig(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->isContinuousZoomSupported()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2097
    iget p0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->expectedValue:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 2101
    :cond_2b
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$ZoomUIController;->mIsValueIncreasing:Z

    if-eqz v0, :cond_3c

    .line 2102
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$ZoomUIController;->mValueOffset:I

    add-int/2addr p1, v0

    .line 2103
    iget p0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->expectedValue:I

    if-le p1, p0, :cond_48

    :goto_3a
    move p1, p0

    goto :goto_48

    .line 2107
    :cond_3c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$ZoomUIController;->mValueOffset:I

    sub-int/2addr p1, v0

    .line 2108
    iget p0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->expectedValue:I

    if-ge p1, p0, :cond_48

    goto :goto_3a

    .line 2112
    :cond_48
    :goto_48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic getNewValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 2081
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$ZoomUIController;->getNewValue(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected shouldContinue()Z
    .registers 3

    .line 2123
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$ZoomUIController;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomConfig(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$ZoomUIController;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomConfig(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->isContinuousZoomSupported()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_2d

    .line 2127
    :cond_16
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->isRunning:Z

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$ZoomUIController;->getCurrentValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget p0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->expectedValue:I

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-eqz p0, :cond_2d

    const/4 p0, 0x1

    return p0

    :cond_2d
    :goto_2d
    return v1
.end method
