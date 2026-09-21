.class Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$OnPageChangeListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPageChangeListenerWrapper"
.end annotation


# instance fields
.field private final mDelegate:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field final synthetic this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .registers 3

    .line 204
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$OnPageChangeListenerWrapper;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$OnPageChangeListenerWrapper;->mDelegate:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 5

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$OnPageChangeListenerWrapper;->mDelegate:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 221
    invoke-static {}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageScrollStateChanged state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$OnPageChangeListenerWrapper;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->-$$Nest$fgetmLooping(Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;)Z

    move-result v0

    if-eqz v0, :cond_32

    if-nez p1, :cond_2d

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$OnPageChangeListenerWrapper;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->-$$Nest$mstartTiming(Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;)V

    return-void

    .line 226
    :cond_2d
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$OnPageChangeListenerWrapper;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->-$$Nest$mstopTiming(Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;)V

    :cond_32
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$OnPageChangeListenerWrapper;->mDelegate:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$OnPageChangeListenerWrapper;->mDelegate:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {p0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    return-void
.end method
