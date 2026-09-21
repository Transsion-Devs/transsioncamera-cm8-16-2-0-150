.class Lcom/transsion/widgetslib/view/ViewPagerTabs$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/ViewPagerTabs;->setViewPager(Landroidx/viewpager/widget/ViewPager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

.field final synthetic val$defaultIndex:I

.field final synthetic val$viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;Landroidx/viewpager/widget/ViewPager;I)V
    .registers 4

    .line 683
    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$3;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    iput-object p2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$3;->val$viewPager:Landroidx/viewpager/widget/ViewPager;

    iput p3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$3;->val$defaultIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 5

    .line 686
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$3;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 687
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$3;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    # getter for: Lcom/transsion/widgetslib/view/ViewPagerTabs;->mViewPager:Landroidx/viewpager/widget/ViewPager;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$900(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 694
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$3;->val$viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/transsion/widgetslib/view/ViewPagerTabs$InternalViewPagerListener;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$3;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/transsion/widgetslib/view/ViewPagerTabs$InternalViewPagerListener;-><init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;Lcom/transsion/widgetslib/view/ViewPagerTabs$1;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 695
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$3;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    # invokes: Lcom/transsion/widgetslib/view/ViewPagerTabs;->setTabs()V
    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$1100(Lcom/transsion/widgetslib/view/ViewPagerTabs;)V

    .line 696
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$3;->val$viewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$3;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    iget v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$3;->val$defaultIndex:I

    # invokes: Lcom/transsion/widgetslib/view/ViewPagerTabs;->getRtlPosition(I)I
    invoke-static {v1, v2}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$1200(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 697
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$3;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    # getter for: Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$1300(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$3;->val$defaultIndex:I

    # setter for: Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mCurPosition:I
    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->access$002(Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;I)I

    .line 699
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$3;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    # getter for: Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$1300(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 700
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$3;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->onPageScrollStateChanged(I)V

    :cond_4a
    return-void
.end method
