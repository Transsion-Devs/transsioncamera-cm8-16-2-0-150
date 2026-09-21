.class Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment$MyPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;)V
    .registers 2

    .line 252
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment$MyPagerAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .line 273
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .registers 1

    .line 255
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment$MyPagerAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->-$$Nest$fgetmProWatermarkTopViews(Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 3

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment$MyPagerAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->-$$Nest$fgetmProWatermarkTopViews(Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 267
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
