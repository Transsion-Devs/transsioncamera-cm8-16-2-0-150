.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;
.super Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WideRangeConverterState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;II)V
    .registers 4

    .line 2641
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    .line 2642
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;II)V

    return-void
.end method


# virtual methods
.method public isScaleStartWhenRecording()Z
    .registers 2

    .line 2662
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaleStart:Z

    if-nez v0, :cond_e

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsZoomClick:Z

    if-eqz p0, :cond_10

    :cond_e
    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method protected onEnter(IZ)V
    .registers 3

    .line 2697
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->onEnter(IZ)V

    .line 2698
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez p1, :cond_c

    .line 2699
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->onWideCameraSelected()V

    :cond_c
    return-void
.end method

.method public progressToValue(IZ)I
    .registers 7

    .line 2647
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmWideRangeConverterProgressList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2648
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmWideRangeConverterProgressList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmWideRangeConverterProgressList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p1, p2, :cond_31

    move p1, p2

    goto :goto_34

    :cond_31
    if-le p1, v0, :cond_34

    move p1, v0

    .line 2654
    :cond_34
    :goto_34
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmWideRangeConverterValueList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmWideRangeConverterProgressList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Ljava/util/List;

    move-result-object v0

    div-int/lit16 v1, p1, 0x3e8

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2655
    rem-int/lit16 v0, p1, 0x3e8

    add-int v1, p2, v0

    .line 2657
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[progressToValue] base:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " remain:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " progress:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " result:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method updateNextSwitchType(IZ)V
    .registers 5

    .line 2705
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateNextSwitchCamera(I)V

    .line 2706
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setValueToSetting(IZ)V

    return-void
.end method

.method public valueToProgress(I)I
    .registers 8

    .line 2667
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;->isScaleStartWhenRecording()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_59

    .line 2669
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmWideRangeConverterValueNormalList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2670
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmWideRangeConverterValueNormalList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    :goto_28
    move v5, v3

    move v3, v1

    move v1, v5

    if-ge v1, v2, :cond_48

    .line 2671
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v4}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmWideRangeConverterValueNormalList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v0, :cond_48

    add-int/lit8 v3, v1, 0x1

    goto :goto_28

    .line 2677
    :cond_48
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmWideRangeConverterProgressList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 2680
    :cond_59
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmWideRangeConverterValueList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_a2

    .line 2682
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmWideRangeConverterValueList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_74
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2683
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_74

    .line 2684
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmWideRangeConverterProgressList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmWideRangeConverterValueList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_a1
    return v1

    .line 2689
    :cond_a2
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmWideRangeConverterProgressList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
