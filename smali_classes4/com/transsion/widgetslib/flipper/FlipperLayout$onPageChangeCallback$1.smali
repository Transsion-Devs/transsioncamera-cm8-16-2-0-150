.class public final Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/flipper/FlipperLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    .line 85
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 7

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageScrollStateChanged, state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentPst: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->currentPst:I
    invoke-static {v1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getCurrentPst$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlipperLayout"

    invoke-static {v1, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->isAutoPlay:Z
    invoke-static {v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$isAutoPlay$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Z

    move-result v0

    if-eqz v0, :cond_39

    if-nez p1, :cond_34

    .line 105
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # invokes: Lcom/transsion/widgetslib/flipper/FlipperLayout;->sendScrollMsg()V
    invoke-static {v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$sendScrollMsg(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    goto :goto_39

    .line 107
    :cond_34
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # invokes: Lcom/transsion/widgetslib/flipper/FlipperLayout;->removeScrollMsg()V
    invoke-static {v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$removeScrollMsg(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    .line 111
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->isCyclic$widgetsLib_release()Z

    move-result v0

    if-eqz v0, :cond_92

    if-nez p1, :cond_92

    .line 113
    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;
    invoke-static {p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getViewPager$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "viewPager"

    if-nez p1, :cond_52

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_52
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_92

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    add-int/lit8 p1, p1, -0x1

    .line 115
    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->currentPst:I
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getCurrentPst$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_7a

    .line 116
    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getViewPager$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v2

    if-nez v2, :cond_71

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_71
    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->attachHeadTailItem:I
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getAttachHeadTailItem$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I

    move-result v4

    sub-int v4, p1, v4

    invoke-static {v2, v4, v3}, Lcom/transsion/widgetslib/flipper/FlipperLayoutHelperKt;->setCurrentItemSafety(Landroidx/viewpager2/widget/ViewPager2;IZ)V

    .line 118
    :cond_7a
    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->currentPst:I
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getCurrentPst$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I

    move-result v2

    if-ne v2, p1, :cond_92

    .line 119
    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getViewPager$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-nez p1, :cond_8a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_8b

    :cond_8a
    move-object v0, p1

    :goto_8b
    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->attachHeadTailItem:I
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getAttachHeadTailItem$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I

    move-result p0

    invoke-static {v0, p0, v3}, Lcom/transsion/widgetslib/flipper/FlipperLayoutHelperKt;->setCurrentItemSafety(Landroidx/viewpager2/widget/ViewPager2;IZ)V

    :cond_92
    return-void
.end method

.method public onPageSelected(I)V
    .registers 5

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected, position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentPst: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->currentPst:I
    invoke-static {v1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getCurrentPst$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlipperLayout"

    invoke-static {v1, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->textPrimaryList:Ljava/util/List;
    invoke-static {v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTextPrimaryList$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    if-ltz p1, :cond_46

    .line 89
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_46

    .line 90
    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvPrimary:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTvPrimary$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_3d

    goto :goto_46

    :cond_3d
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_46
    :goto_46
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->textSecondaryList:Ljava/util/List;
    invoke-static {v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTextSecondaryList$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_68

    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    if-ltz p1, :cond_68

    .line 94
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_68

    .line 95
    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvSecondary:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTvSecondary$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_5f

    goto :goto_68

    :cond_5f
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_68
    :goto_68
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$setCurrentPst$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;I)V

    return-void
.end method
