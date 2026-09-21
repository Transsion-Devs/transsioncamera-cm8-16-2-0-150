.class public final Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/flipper/FlipperLayout;->setTextLayoutHeight(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $primaryCharList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

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
.method constructor <init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/widgetslib/flipper/FlipperLayout;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    iput-object p2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;->$secondaryCharList:Ljava/util/List;

    iput-object p3, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;->$primaryCharList:Ljava/util/List;

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 11

    .line 563
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvSecondary:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTvSecondary$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 565
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvSecondary:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTvSecondary$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 566
    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvPrimary:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTvPrimary$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 567
    iget-object v2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvSecondary:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTvSecondary$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvSecondary:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTvSecondary$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 568
    iget-object v3, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvPrimary:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTvPrimary$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvPrimary:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTvPrimary$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 569
    iget-object v4, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;->$secondaryCharList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_75
    if-ge v5, v4, :cond_152

    .line 570
    const-string v6, "obtain(\n                \u2026ent.ALIGN_CENTER).build()"

    if-ltz v2, :cond_d1

    .line 572
    iget-object v7, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;->$secondaryCharList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 571
    invoke-static {v7, v0, v2}, Landroid/text/DynamicLayout$Builder;->obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/DynamicLayout$Builder;

    move-result-object v7

    .line 575
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v7, v8}, Landroid/text/DynamicLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/DynamicLayout$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/DynamicLayout$Builder;->build()Landroid/text/DynamicLayout;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v8, v9

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v8, v9

    .line 579
    invoke-virtual {v7}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v7

    .line 580
    iget-object v9, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    mul-float/2addr v7, v8

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvSecondary:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTvSecondary$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/widget/TextView;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvSecondary:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTvSecondary$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/widget/TextView;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-static {v9, v7}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$setDescHeight$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;F)V

    :cond_d1
    if-ltz v3, :cond_127

    .line 585
    iget-object v7, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;->$primaryCharList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 584
    invoke-static {v7, v1, v3}, Landroid/text/DynamicLayout$Builder;->obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/DynamicLayout$Builder;

    move-result-object v7

    .line 588
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v7, v8}, Landroid/text/DynamicLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/DynamicLayout$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/DynamicLayout$Builder;->build()Landroid/text/DynamicLayout;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v6, v8

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v6, v8

    .line 591
    invoke-virtual {v7}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v7

    .line 593
    iget-object v8, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    int-to-float v7, v7

    mul-float/2addr v7, v6

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvPrimary:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTvPrimary$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v7, v6

    iget-object v6, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvPrimary:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTvPrimary$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v7, v6

    invoke-static {v8, v7}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$setTopicHeight$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;F)V

    .line 596
    :cond_127
    iget-object v6, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->maxTotalHeight:F
    invoke-static {v6}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getMaxTotalHeight$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)F

    move-result v6

    iget-object v7, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->topicHeight:F
    invoke-static {v7}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTopicHeight$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)F

    move-result v7

    iget-object v8, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->descHeight:F
    invoke-static {v8}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getDescHeight$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)F

    move-result v8

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_14e

    .line 597
    iget-object v6, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->topicHeight:F
    invoke-static {v6}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTopicHeight$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)F

    move-result v7

    iget-object v8, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->descHeight:F
    invoke-static {v8}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getDescHeight$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)F

    move-result v8

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$setMaxTotalHeight$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;F)V

    :cond_14e
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_75

    .line 600
    :cond_152
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->textParent:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTextParent$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_160

    const-string v0, "textParent"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_160
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->maxTotalHeight:F
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getMaxTotalHeight$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method
