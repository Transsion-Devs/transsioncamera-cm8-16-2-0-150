.class Lcom/transsion/widgetslib/view/ViewPagerTabs$InternalViewPagerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/ViewPagerTabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalViewPagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;


# direct methods
.method private constructor <init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;)V
    .registers 2

    .line 847
    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$InternalViewPagerListener;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;Lcom/transsion/widgetslib/view/ViewPagerTabs$1;)V
    .registers 3

    .line 847
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs$InternalViewPagerListener;-><init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    .line 865
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$InternalViewPagerListener;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    # invokes: Lcom/transsion/widgetslib/view/ViewPagerTabs;->onTabPageScrollStateChanged(I)V
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$1700(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    .line 851
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$InternalViewPagerListener;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    # invokes: Lcom/transsion/widgetslib/view/ViewPagerTabs;->onTabPageScrolled(IFI)V
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$1400(Lcom/transsion/widgetslib/view/ViewPagerTabs;IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    .line 856
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$InternalViewPagerListener;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    # setter for: Lcom/transsion/widgetslib/view/ViewPagerTabs;->mCurrentPosition:I
    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$1502(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)I

    .line 857
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$InternalViewPagerListener;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    # invokes: Lcom/transsion/widgetslib/view/ViewPagerTabs;->onTabPageSelected(I)V
    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$1600(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)V

    .line 858
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$InternalViewPagerListener;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    # getter for: Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$1300(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 859
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$InternalViewPagerListener;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    # getter for: Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$1300(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$InternalViewPagerListener;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    # invokes: Lcom/transsion/widgetslib/view/ViewPagerTabs;->getRtlPosition(I)I
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$1200(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)I

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->onPageScrolled(IF)V

    :cond_22
    return-void
.end method
