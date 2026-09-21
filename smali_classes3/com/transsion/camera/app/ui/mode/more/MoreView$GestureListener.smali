.class public Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/more/MoreView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V
    .registers 2

    .line 1475
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1448
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmMoreGridListView(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    move-result-object p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmGridItemDisplayType(Lcom/transsion/camera/app/ui/mode/more/MoreView;)I

    move-result p1

    if-nez p1, :cond_28

    .line 1450
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmMoreGridListAdapter(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemCount()I

    move-result p1

    const/16 v0, 0xc

    if-gt p1, v0, :cond_28

    .line 1451
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmMoreGridListView(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9

    .line 1480
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/mode/more/MoreView;)I

    move-result p3

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_14

    .line 1481
    invoke-static {}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onScroll, mScreenFormType is expand, not support scroll to switch mode"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p4

    .line 1484
    :cond_14
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmEnable(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Z

    move-result p3

    if-eqz p3, :cond_e8

    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmIsEditMode(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Z

    move-result p3

    if-eqz p3, :cond_26

    goto/16 :goto_e8

    .line 1488
    :cond_26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p3

    if-gt p3, v0, :cond_e7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p3

    if-le p3, v0, :cond_34

    goto/16 :goto_e7

    .line 1491
    :cond_34
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 1492
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmMoreGridListLayout(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1493
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 1494
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/mode/more/MoreView;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_54

    .line 1495
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmHoverBottomHeightReduce(Lcom/transsion/camera/app/ui/mode/more/MoreView;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1497
    :cond_54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    cmpg-float p3, v2, p3

    if-ltz p3, :cond_e7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p3

    int-to-float v1, v1

    cmpl-float p3, p3, v1

    if-lez p3, :cond_6a

    goto/16 :goto_e7

    .line 1500
    :cond_6a
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/transsion/camera/R$dimen;->scroll_threshold_distance:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    .line 1501
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 1502
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    .line 1504
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/mode/more/MoreView;)I

    move-result p1

    if-ne p1, v0, :cond_a5

    .line 1505
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_a3

    neg-float p1, p3

    cmpg-float p1, p2, p1

    if-gez p1, :cond_a3

    :goto_a1
    move p1, v0

    goto :goto_b6

    :cond_a3
    move p1, p4

    goto :goto_b6

    .line 1507
    :cond_a5
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_a3

    cmpl-float p1, v1, p3

    if-lez p1, :cond_a3

    goto :goto_a1

    .line 1509
    :goto_b6
    invoke-static {}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScroll, triggerScroll: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_e7

    .line 1510
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmMorePanelScrollListener(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;

    move-result-object p1

    if-eqz p1, :cond_e7

    .line 1511
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmMorePanelScrollListener(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;->onMorePanelScroll()V

    .line 1512
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$mstartVibrator(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V

    return v0

    :cond_e7
    :goto_e7
    return p4

    .line 1485
    :cond_e8
    :goto_e8
    invoke-static {}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onScroll, mEnable: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmEnable(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mIsEditMode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmIsEditMode(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p4
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
