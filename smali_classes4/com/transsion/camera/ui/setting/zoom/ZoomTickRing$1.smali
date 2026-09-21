.class Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->initAnimator()V
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

    .line 362
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 365
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "mScrollAnimator, onAnimationCancel"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 366
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->updateScrollState(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 371
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "mScrollAnimator, onAnimationEnd"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 372
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->updateScrollState(I)V

    return-void
.end method
