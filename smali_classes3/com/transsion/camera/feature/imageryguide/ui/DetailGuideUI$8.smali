.class Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->startExitAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

.field final synthetic val$shouldExitAllGuideFragment:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;Z)V
    .registers 3

    .line 917
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$8;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    iput-boolean p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$8;->val$shouldExitAllGuideFragment:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 941
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 927
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 928
    invoke-static {}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "[onAnimationEnd] : "

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 929
    iget-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$8;->val$shouldExitAllGuideFragment:Z

    if-eqz p1, :cond_16

    .line 930
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$8;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$mexitAllFragment(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V

    goto :goto_1b

    .line 932
    :cond_16
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$8;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$mexit(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V

    .line 934
    :goto_1b
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$8;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fgetmDetailAdapter(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 935
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$8;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fgetmDetailAdapter(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->setEnable(Z)V

    :cond_2d
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 920
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 921
    invoke-static {}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "[onAnimationStart] : "

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 922
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$8;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->setEnable(Z)V

    return-void
.end method
