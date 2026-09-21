.class Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 6

    .line 210
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelected, index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 211
    :goto_18
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->-$$Nest$fgetmHelpImageList(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 212
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->-$$Nest$fgetmLoopViewPagerIndicator(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v1, p1, :cond_32

    const/4 v3, 0x1

    goto :goto_33

    :cond_32
    move v3, v0

    :goto_33
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 214
    :cond_39
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;)Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$UIHandler;

    move-result-object p1

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;)Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$UIHandler;

    move-result-object p0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
