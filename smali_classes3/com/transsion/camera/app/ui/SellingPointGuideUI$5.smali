.class Lcom/transsion/camera/app/ui/SellingPointGuideUI$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/SellingPointGuideUI;->initOverlayGuideViewPager(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

.field final synthetic val$viewList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/SellingPointGuideUI;Ljava/util/List;)V
    .registers 3

    .line 649
    iput-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$5;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$5;->val$viewList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 5

    .line 683
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$5;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$menableInfiniteLoop(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Z

    move-result v0

    if-eqz v0, :cond_3e

    if-nez p1, :cond_3e

    .line 684
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$5;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmCurrentOverlayGuidePagerPosition(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_25

    .line 685
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$5;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmOverlayGuideViewPager(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$5;->val$viewList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {p1, p0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void

    .line 686
    :cond_25
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$5;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmCurrentOverlayGuidePagerPosition(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)I

    move-result p1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$5;->val$viewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_3e

    .line 687
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$5;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmOverlayGuideViewPager(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    invoke-virtual {p0, v2, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_3e
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 7

    .line 656
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$5;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmCurrentOverlayGuidePagerPosition(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_24

    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$5;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmCurrentOverlayGuidePagerPosition(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$5;->val$viewList:Ljava/util/List;

    .line 657
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_24

    .line 658
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$5;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmCurrentOverlayGuidePagerPosition(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)I

    move-result v2

    sub-int/2addr v2, v1

    const-string v3, "0"

    invoke-virtual {v0, v3, v2}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->setOverlayGuideClickIconId(Ljava/lang/String;I)V

    .line 661
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$5;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fputmCurrentOverlayGuidePagerPosition(Lcom/transsion/camera/app/ui/SellingPointGuideUI;I)V

    const/4 v0, 0x0

    move v2, v0

    .line 663
    :goto_2b
    iget-object v3, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$5;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmSellingPointTitleList(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8d

    if-nez p1, :cond_57

    .line 665
    iget-object v3, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$5;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmOverlayGuidePageIndicator(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$5;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {v4}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmOverlayGuidePageIndicator(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 666
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v1

    if-ne v2, v4, :cond_52

    move v4, v1

    goto :goto_53

    :cond_52
    move v4, v0

    .line 665
    :goto_53
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_8a

    .line 667
    :cond_57
    iget-object v3, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$5;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmSellingPointTitleList(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le p1, v3, :cond_76

    .line 668
    iget-object v3, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$5;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmOverlayGuidePageIndicator(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v2, :cond_71

    move v4, v1

    goto :goto_72

    :cond_71
    move v4, v0

    :goto_72
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_8a

    .line 670
    :cond_76
    iget-object v3, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$5;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmOverlayGuidePageIndicator(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    if-ne v2, v4, :cond_86

    move v4, v1

    goto :goto_87

    :cond_86
    move v4, v0

    :goto_87
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    :goto_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 674
    :cond_8d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$5;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmOverlayTitleTextViewList(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 675
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 677
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$5;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 678
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$5;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
