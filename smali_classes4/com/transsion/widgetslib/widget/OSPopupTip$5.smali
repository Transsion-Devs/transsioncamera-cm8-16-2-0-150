.class Lcom/transsion/widgetslib/widget/OSPopupTip$5;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/OSPopupTip;->showHorizontal(Landroid/view/View;Ljava/lang/String;IIZ)Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$calYoffSet:I

.field final synthetic val$isLeft:Z

.field final synthetic val$isRTL:Z

.field final synthetic val$layout:Landroid/view/View;

.field final synthetic val$popupWidth:I

.field final synthetic val$popupWindow:Landroid/widget/PopupWindow;

.field final synthetic val$radius:I

.field final synthetic val$totalHeight:F

.field final synthetic val$viewAnchor:Landroid/view/View;

.field final synthetic val$viewArrow:Landroid/view/View;

.field final synthetic val$viewArrowWidth:I

.field final synthetic val$viewText:Landroid/widget/TextView;

.field final synthetic val$xoff:I

.field final synthetic val$yoff:I


# direct methods
.method constructor <init>(ILandroid/view/View;ZZIILandroid/view/View;Landroid/widget/TextView;FLandroid/widget/PopupWindow;IIILandroid/view/View;)V
    .registers 15

    .line 536
    iput p1, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$radius:I

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$viewAnchor:Landroid/view/View;

    iput-boolean p3, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$isLeft:Z

    iput-boolean p4, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$isRTL:Z

    iput p5, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$popupWidth:I

    iput p6, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$viewArrowWidth:I

    iput-object p7, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$layout:Landroid/view/View;

    iput-object p8, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$viewText:Landroid/widget/TextView;

    iput p9, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$totalHeight:F

    iput-object p10, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$popupWindow:Landroid/widget/PopupWindow;

    iput p11, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$xoff:I

    iput p12, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$calYoffSet:I

    iput p13, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$yoff:I

    iput-object p14, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$viewArrow:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 10

    .line 539
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget p1, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$radius:I

    int-to-float v5, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    const/4 p1, 0x2

    .line 540
    new-array p2, p1, [I

    .line 541
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 542
    iget-boolean p2, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$isLeft:Z

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$isRTL:Z

    xor-int/2addr p2, v0

    if-eqz p2, :cond_27

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    goto :goto_29

    :cond_27
    iget p2, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$popupWidth:I

    .line 543
    :goto_29
    iget v0, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$viewArrowWidth:I

    add-int/2addr p2, v0

    .line 544
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$isLeft:Z

    if-eqz v0, :cond_31

    goto :goto_32

    :cond_31
    neg-int p2, p2

    .line 546
    :goto_32
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$layout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_41

    .line 547
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$viewText:Landroid/widget/TextView;

    # invokes: Lcom/transsion/widgetslib/widget/OSPopupTip;->getTextActualHeight(Landroid/widget/TextView;)I
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/OSPopupTip;->access$000(Landroid/widget/TextView;)I

    move-result v0

    goto :goto_42

    :cond_41
    const/4 v0, 0x1

    .line 549
    :goto_42
    # getter for: Lcom/transsion/widgetslib/widget/OSPopupTip;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/widgetslib/widget/OSPopupTip;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pop height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/widgetscore/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v0, v0

    .line 550
    iget v1, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$totalHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v6, v0

    .line 551
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$popupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$viewAnchor:Landroid/view/View;

    iget v0, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$xoff:I

    add-int v3, p2, v0

    iget p2, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$calYoffSet:I

    iget v0, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$yoff:I

    add-int v4, p2, v0

    iget v5, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$popupWidth:I

    invoke-virtual/range {v1 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 553
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$layout:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setPivotX(F)V

    .line 554
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;->val$layout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/2addr p2, p1

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method
