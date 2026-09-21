.class Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;)V
    .registers 2

    .line 1462
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .line 1465
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "hide, onAnimationCancel"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1466
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$4;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 1471
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "hide, onAnimationEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1472
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1473
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1474
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->-$$Nest$fputmIsFadingOut(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;Z)V

    return-void
.end method
