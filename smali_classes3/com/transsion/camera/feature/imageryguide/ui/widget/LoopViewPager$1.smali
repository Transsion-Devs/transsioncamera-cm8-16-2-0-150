.class Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .line 59
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 63
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_20

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->-$$Nest$fgetmLooping(Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->-$$Nest$mstartTiming(Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;)V

    return-void

    .line 68
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->-$$Nest$fgetmLooping(Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->-$$Nest$mstopTiming(Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;)V

    return-void

    .line 73
    :cond_2e
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->-$$Nest$fgetmLooping(Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->-$$Nest$mstopTiming(Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;)V

    :cond_3b
    return-void
.end method
