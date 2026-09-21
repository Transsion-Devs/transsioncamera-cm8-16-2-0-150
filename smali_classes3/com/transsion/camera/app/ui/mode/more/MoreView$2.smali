.class Lcom/transsion/camera/app/ui/mode/more/MoreView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/mode/more/MoreView;->runMoreContainerRotateAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V
    .registers 2

    .line 1872
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$2;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 1875
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1876
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$2;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/app/ui/mode/more/MoreView;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$mupdateLayoutParams(Lcom/transsion/camera/app/ui/mode/more/MoreView;IZ)V

    .line 1877
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$2;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmMoreContainerZoomIn(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
