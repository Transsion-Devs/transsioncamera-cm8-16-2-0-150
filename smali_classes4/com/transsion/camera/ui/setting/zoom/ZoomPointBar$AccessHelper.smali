.class Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AccessHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Landroid/view/View;)V
    .registers 3

    .line 1188
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AccessHelper;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    .line 1189
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .registers 5

    const/4 v0, 0x0

    .line 1194
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AccessHelper;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmZoomItems(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 1195
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AccessHelper;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmZoomItems(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    iget-object v1, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_22

    return v0

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    const/high16 p0, -0x80000000

    return p0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .registers 4

    const/4 v0, 0x0

    .line 1205
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AccessHelper;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmZoomItems(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 1206
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 6

    .line 1231
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

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

    if-ne p2, p3, :cond_2f

    const/high16 p2, -0x80000000

    if-eq p1, p2, :cond_2f

    .line 1234
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AccessHelper;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$mhandleItemSelected(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;I)V

    const/4 p0, 0x1

    return p0

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 5

    .line 1213
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AccessHelper;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmZoomItems(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_2b

    .line 1214
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AccessHelper;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmZoomItems(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    .line 1215
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mText:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 1217
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 1218
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 1219
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    goto :goto_4b

    .line 1221
    :cond_2b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 1222
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AccessHelper;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AccessHelper;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    :goto_4b
    const/16 p0, 0x10

    .line 1224
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    const/4 p0, 0x1

    .line 1225
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    return-void
.end method
