.class public final Lcom/transsion/widgetslib/flipper/FlipperLayout$setNoTopicTextLayoutHeight$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/flipper/FlipperLayout;->setNoTopicTextLayoutHeight(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $secondaryCharList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/widgetslib/flipper/FlipperLayout;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setNoTopicTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    iput-object p2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setNoTopicTextLayoutHeight$1;->$secondaryCharList:Ljava/util/List;

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 8

    .line 515
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setNoTopicTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvSecondary:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTvSecondary$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 517
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setNoTopicTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvSecondary:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTvSecondary$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 518
    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setNoTopicTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setNoTopicTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvSecondary:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTvSecondary$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setNoTopicTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvSecondary:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTvSecondary$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 519
    iget-object v2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setNoTopicTextLayoutHeight$1;->$secondaryCharList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_46
    if-ge v3, v2, :cond_be

    if-ltz v1, :cond_bb

    .line 522
    iget-object v4, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setNoTopicTextLayoutHeight$1;->$secondaryCharList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 521
    invoke-static {v4, v0, v1}, Landroid/text/DynamicLayout$Builder;->obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/DynamicLayout$Builder;

    move-result-object v4

    .line 525
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v5}, Landroid/text/DynamicLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/DynamicLayout$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/DynamicLayout$Builder;->build()Landroid/text/DynamicLayout;

    move-result-object v4

    const-string v5, "obtain(\n                \u2026ent.ALIGN_CENTER).build()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v5, v6

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v5, v6

    .line 529
    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v4

    .line 530
    iget-object v6, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setNoTopicTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    mul-float/2addr v4, v5

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvSecondary:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTvSecondary$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setNoTopicTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvSecondary:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTvSecondary$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static {v6, v4}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$setDescHeight$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;F)V

    .line 532
    iget-object v4, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setNoTopicTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->maxTotalHeight:F
    invoke-static {v4}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getMaxTotalHeight$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)F

    move-result v4

    iget-object v5, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setNoTopicTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->descHeight:F
    invoke-static {v5}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getDescHeight$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_bb

    .line 533
    iget-object v4, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setNoTopicTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->descHeight:F
    invoke-static {v4}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getDescHeight$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)F

    move-result v5

    invoke-static {v4, v5}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$setMaxTotalHeight$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;F)V

    :cond_bb
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 537
    :cond_be
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setNoTopicTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->textParent:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTextParent$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_cc

    const-string v0, "textParent"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_cc
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setNoTopicTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->maxTotalHeight:F
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getMaxTotalHeight$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method
