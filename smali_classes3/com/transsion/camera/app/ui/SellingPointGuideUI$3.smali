.class Lcom/transsion/camera/app/ui/SellingPointGuideUI$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/SellingPointGuideUI;->initFloatingWindowViewPager(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
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

    .line 530
    iput-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$3;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$3;->val$viewList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 5

    .line 546
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$3;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$menableInfiniteLoop(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Z

    move-result v0

    if-eqz v0, :cond_54

    if-nez p1, :cond_54

    .line 547
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$3;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmCurrentFloatingViewPagerPosition(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_30

    .line 548
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$3;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$3;->val$viewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-static {p1, v1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fputmCurrentFloatingViewPagerPosition(Lcom/transsion/camera/app/ui/SellingPointGuideUI;I)V

    .line 549
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$3;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmFloatingWindowViewPager(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$3;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmCurrentFloatingViewPagerPosition(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)I

    move-result p0

    invoke-virtual {p1, p0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void

    .line 551
    :cond_30
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$3;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmCurrentFloatingViewPagerPosition(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)I

    move-result p1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$3;->val$viewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_54

    .line 552
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$3;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {p1, v2}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fputmCurrentFloatingViewPagerPosition(Lcom/transsion/camera/app/ui/SellingPointGuideUI;I)V

    .line 553
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$3;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmFloatingWindowViewPager(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$3;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmCurrentFloatingViewPagerPosition(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)I

    move-result p0

    .line 554
    invoke-virtual {p1, p0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_54
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 5

    .line 538
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$3;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fputmCurrentFloatingViewPagerPosition(Lcom/transsion/camera/app/ui/SellingPointGuideUI;I)V

    .line 540
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$3;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 541
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$3;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
