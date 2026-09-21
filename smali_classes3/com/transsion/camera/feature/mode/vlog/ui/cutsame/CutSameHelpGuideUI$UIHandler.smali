.class Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;)V
    .registers 3

    .line 72
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$UIHandler;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;

    if-nez p0, :cond_b

    goto :goto_4d

    .line 82
    :cond_b
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_16

    goto :goto_4d

    .line 92
    :cond_16
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->-$$Nest$fgetmLoopViewPager(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 93
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->-$$Nest$fgetmHelpImageList(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p1, v1

    .line 94
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->-$$Nest$fgetmLoopViewPager(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 96
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;)Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$UIHandler;

    move-result-object p0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 84
    :cond_3a
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->-$$Nest$fgetmHelpHasShowTimes(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;)I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_4d

    .line 85
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->onUserInteraction()V

    .line 86
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->-$$Nest$mresetPagerLocation(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;)V

    .line 87
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->-$$Nest$mshowHelpGuideDialog(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;)V

    .line 88
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->-$$Nest$mincreaseStartTimes(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;)V

    :cond_4d
    :goto_4d
    return-void
.end method
