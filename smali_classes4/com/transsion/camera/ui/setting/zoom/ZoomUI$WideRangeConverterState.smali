.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;
.super Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WideRangeConverterState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;II)V
    .registers 4

    .line 1994
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    .line 1995
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;II)V

    return-void
.end method


# virtual methods
.method public isScaleStartWhenRecording()Z
    .registers 2

    .line 2015
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mScaleStart:Z

    if-nez v0, :cond_e

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsZoomClick:Z

    if-eqz p0, :cond_10

    :cond_e
    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method protected onEnter(I)V
    .registers 2

    .line 2058
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->onEnter(I)V

    .line 2059
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->onWideCameraSelected()V

    return-void
.end method

.method public progressToValue(I)I
    .registers 7

    .line 2000
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmWideRangeConverterProgressList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2001
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmWideRangeConverterProgressList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmWideRangeConverterProgressList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge p1, v0, :cond_31

    move p1, v0

    goto :goto_34

    :cond_31
    if-le p1, v1, :cond_34

    move p1, v1

    .line 2007
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmWideRangeConverterValueList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmWideRangeConverterProgressList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Ljava/util/List;

    move-result-object v1

    div-int/lit16 v2, p1, 0x3e8

    mul-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2008
    rem-int/lit16 v1, p1, 0x3e8

    add-int v2, v0, v1

    .line 2010
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[progressToValue] base:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " remain:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " progress:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " result:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2
.end method

.method public valueToProgress(I)I
    .registers 8

    .line 2020
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;->isScaleStartWhenRecording()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8c

    .line 2021
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmWideRangeConverterProgressList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2022
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmWideRangeConverterProgressList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmWideRangeConverterProgressList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt p1, v2, :cond_36

    return p1

    :cond_36
    if-gt p1, v0, :cond_39

    return v0

    .line 2030
    :cond_39
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmWideRangeConverterValueNormalList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2031
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmWideRangeConverterValueNormalList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    move v1, v4

    :goto_5b
    if-ge v1, v2, :cond_7b

    .line 2032
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v4}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmWideRangeConverterValueNormalList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v0, :cond_7b

    add-int/lit8 v3, v1, 0x1

    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_5b

    .line 2038
    :cond_7b
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmWideRangeConverterProgressList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 2041
    :cond_8c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmWideRangeConverterValueList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_d5

    .line 2043
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmWideRangeConverterValueList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2044
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_a7

    .line 2045
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmWideRangeConverterProgressList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmWideRangeConverterValueList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_d4
    return v1

    .line 2050
    :cond_d5
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmWideRangeConverterProgressList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
