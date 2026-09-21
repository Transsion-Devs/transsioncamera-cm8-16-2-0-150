.class Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)V
    .registers 2

    .line 430
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$4;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 433
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 435
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$4;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->-$$Nest$mupdateLayoutParams(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;Z)V

    .line 436
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$4;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->-$$Nest$fgetmDynamicShowAnimatorListenerAdapter(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->-$$Nest$mshowGuideWithAnimation(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method
