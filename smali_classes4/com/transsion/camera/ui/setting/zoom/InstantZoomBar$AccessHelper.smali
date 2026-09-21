.class Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$AccessHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;Landroid/view/View;)V
    .registers 3

    .line 457
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$AccessHelper;->this$0:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    .line 458
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .registers 6

    .line 463
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$AccessHelper;->this$0:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->-$$Nest$fgetmItemList(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_25

    .line 465
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$AccessHelper;->this$0:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->-$$Nest$fgetmItemList(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;

    iget-object v2, v2, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_22

    return v1

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_25
    const/high16 p0, -0x80000000

    return p0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .registers 4

    .line 475
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$AccessHelper;->this$0:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->-$$Nest$fgetmItemList(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_b
    if-ge v0, p0, :cond_17

    .line 477
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_17
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 7

    .line 498
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPerformActionForVirtualView, action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", viewId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 p3, 0x10

    const/4 v0, 0x0

    if-ne p2, p3, :cond_52

    const/high16 p2, -0x80000000

    if-eq p1, p2, :cond_52

    .line 501
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$AccessHelper;->this$0:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->-$$Nest$fgetmItemList(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    move p3, v0

    :goto_34
    const/4 v1, 0x1

    if-ge p3, p2, :cond_4c

    .line 503
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$AccessHelper;->this$0:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->-$$Nest$fgetmItemList(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;

    if-ne p3, p1, :cond_46

    goto :goto_47

    :cond_46
    move v1, v0

    :goto_47
    iput-boolean v1, v2, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;->mIsSelected:Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_34

    .line 505
    :cond_4c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$AccessHelper;->this$0:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->-$$Nest$mhandleItemSelected(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;I)V

    return v1

    :cond_52
    return v0
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 3

    .line 484
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$AccessHelper;->this$0:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->-$$Nest$fgetmItemList(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;

    .line 485
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;->mText:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 487
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 488
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 489
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/16 p0, 0x10

    .line 491
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    const/4 p0, 0x1

    .line 492
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    return-void
.end method
