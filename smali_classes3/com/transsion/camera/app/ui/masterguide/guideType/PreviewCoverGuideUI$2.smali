.class Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)V
    .registers 2

    .line 293
    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$2;->this$0:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 5

    if-nez p1, :cond_46

    .line 317
    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$2;->this$0:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->-$$Nest$fgetmPreviewCoverViewPager(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_25

    .line 318
    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$2;->this$0:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->-$$Nest$fgetmPreviewCoverViewPager(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$2;->this$0:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->-$$Nest$fgetmPreviewCoverAdapter(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Lcom/transsion/camera/app/ui/masterguide/adapter/PreviewCoverAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/adapter/PreviewCoverAdapter;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {p1, p0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void

    .line 319
    :cond_25
    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$2;->this$0:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->-$$Nest$fgetmPreviewCoverViewPager(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$2;->this$0:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->-$$Nest$fgetmPreviewCoverAdapter(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Lcom/transsion/camera/app/ui/masterguide/adapter/PreviewCoverAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/masterguide/adapter/PreviewCoverAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_46

    .line 320
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$2;->this$0:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->-$$Nest$fgetmPreviewCoverViewPager(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    invoke-virtual {p0, v2, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_46
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 301
    :goto_2
    iget-object v2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$2;->this$0:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    # getter for: Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mTitles:[Ljava/lang/String;
    invoke-static {v2}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->access$100(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_5c

    const/4 v2, 0x1

    if-nez p1, :cond_2b

    .line 303
    iget-object v3, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$2;->this$0:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->-$$Nest$fgetmViewPagerIndicator(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$2;->this$0:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-static {v4}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->-$$Nest$fgetmViewPagerIndicator(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne v1, v4, :cond_26

    goto :goto_27

    :cond_26
    move v2, v0

    :goto_27
    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_59

    .line 304
    :cond_2b
    iget-object v3, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$2;->this$0:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    # getter for: Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mTitles:[Ljava/lang/String;
    invoke-static {v3}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->access$200(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-le p1, v3, :cond_46

    .line 305
    iget-object v3, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$2;->this$0:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->-$$Nest$fgetmViewPagerIndicator(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v1, :cond_41

    goto :goto_42

    :cond_41
    move v2, v0

    :goto_42
    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_59

    .line 307
    :cond_46
    iget-object v3, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$2;->this$0:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->-$$Nest$fgetmViewPagerIndicator(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    if-ne v1, v4, :cond_55

    goto :goto_56

    :cond_55
    move v2, v0

    :goto_56
    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    :goto_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 310
    :cond_5c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$2;->this$0:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$UIHandler;

    move-result-object p1

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$2;->this$0:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$UIHandler;

    move-result-object p0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
