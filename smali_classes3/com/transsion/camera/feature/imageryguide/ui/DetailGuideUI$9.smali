.class Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->initExitAnim(Z)Ljava/util/List;
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

    .line 992
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$9;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    iput-boolean p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$9;->val$shouldExitAllGuideFragment:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 995
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 996
    iget-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$9;->val$shouldExitAllGuideFragment:Z

    if-eqz p1, :cond_d

    .line 997
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$9;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$mexitAllFragment(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V

    goto :goto_12

    .line 999
    :cond_d
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$9;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$mexit(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V

    .line 1001
    :goto_12
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$9;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fgetmDetailAdapter(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1002
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$9;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fgetmDetailAdapter(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->setEnable(Z)V

    :cond_24
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 1008
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
