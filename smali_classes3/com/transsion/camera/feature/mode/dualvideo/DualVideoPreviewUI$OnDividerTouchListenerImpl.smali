.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDividerTouchListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)V
    .registers 2

    .line 664
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 670
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1ae

    const/4 v3, 0x2

    if-eq v1, v0, :cond_d5

    if-eq v1, v3, :cond_12

    goto/16 :goto_1d1

    .line 681
    :cond_12
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmDividerDownY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)F

    move-result v4

    sub-float/2addr v1, v4

    .line 683
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmCurTouchPointId(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v4

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    if-eq v4, p2, :cond_2a

    return v2

    .line 686
    :cond_2a
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmPreviewUICallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object p2

    if-eqz p2, :cond_3f

    .line 687
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmPreviewUICallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object p2

    invoke-interface {p2, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;->OnDividerChanging(F)Z

    move-result p2

    if-nez p2, :cond_3f

    return v0

    .line 694
    :cond_3f
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    float-to-int v1, v1

    add-int/2addr p2, v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmDividerUpEdgeOffset(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v3

    sub-int/2addr v2, v4

    if-gt p2, v2, :cond_60

    .line 695
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmDividerUpEdgeOffset(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/2addr v2, v3

    :goto_5e
    sub-int/2addr p2, v2

    goto :goto_84

    .line 696
    :cond_60
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    add-int/2addr p2, v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmDividerDownEdgeOffset(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v3

    sub-int/2addr v2, v4

    if-lt p2, v2, :cond_7f

    .line 697
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmDividerDownEdgeOffset(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/2addr v2, v3

    goto :goto_5e

    .line 699
    :cond_7f
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    add-int/2addr p2, v1

    .line 702
    :goto_84
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmDividerUpEdgeOffset(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v3

    add-int/2addr v4, v5

    if-gt v2, v4, :cond_a4

    .line 703
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmDividerUpEdgeOffset(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v3

    :goto_a2
    add-int/2addr p0, v1

    goto :goto_c8

    .line 704
    :cond_a4
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmDividerDownEdgeOffset(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v3

    add-int/2addr v4, v5

    if-lt v2, v4, :cond_c3

    .line 705
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmDividerDownEdgeOffset(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v3

    goto :goto_a2

    .line 707
    :cond_c3
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p0

    goto :goto_a2

    .line 710
    :goto_c8
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1, v1, p2, v2, p0}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1d1

    .line 717
    :cond_d5
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v3

    add-int/2addr p2, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmPreviewViewHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v1

    div-int/2addr v1, v3

    if-le p2, v1, :cond_139

    .line 718
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v3

    add-int/2addr p2, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmDividerMiddleEdgeOffset(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v1

    sub-int/2addr p2, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmPreviewViewHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v1

    div-int/2addr v1, v3

    if-gt p2, v1, :cond_19c

    .line 719
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmPreviewUICallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object p2

    if-eqz p2, :cond_113

    .line 720
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmPreviewUICallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;->OnDividerToMiddle()V

    .line 722
    :cond_113
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmPreviewViewHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result p2

    div-int/2addr p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v3

    sub-int/2addr p2, v1

    .line 723
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmPreviewViewHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v1

    div-int/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 724
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1, v2, p2, v3, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_19c

    .line 726
    :cond_139
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v3

    add-int/2addr p2, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmPreviewViewHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v1

    div-int/2addr v1, v3

    if-ge p2, v1, :cond_19c

    .line 727
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v3

    add-int/2addr p2, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmDividerMiddleEdgeOffset(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v1

    add-int/2addr p2, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmPreviewViewHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v1

    div-int/2addr v1, v3

    if-lt p2, v1, :cond_19c

    .line 728
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmPreviewUICallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object p2

    if-eqz p2, :cond_177

    .line 729
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmPreviewUICallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;->OnDividerToMiddle()V

    .line 731
    :cond_177
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmPreviewViewHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result p2

    div-int/2addr p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v3

    sub-int/2addr p2, v1

    .line 732
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmPreviewViewHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v1

    div-int/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 733
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1, v2, p2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 736
    :cond_19c
    :goto_19c
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmPreviewUICallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object p1

    if-eqz p1, :cond_1d1

    .line 737
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmPreviewUICallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;->onDividerChangeEnd()Z

    goto :goto_1d1

    .line 673
    :cond_1ae
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fputmDividerDownY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;F)V

    .line 674
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fputmCurTouchPointId(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;I)V

    .line 675
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmPreviewUICallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object p1

    if-eqz p1, :cond_1d1

    .line 676
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->-$$Nest$fgetmPreviewUICallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;->onDividerChangeBegin()V

    :cond_1d1
    :goto_1d1
    return v0
.end method
