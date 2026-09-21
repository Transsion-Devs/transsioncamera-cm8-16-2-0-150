.class Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;)V
    .registers 2

    .line 665
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .line 668
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "hide, onAnimationCancel"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$3;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 674
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "hide, onAnimationEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 675
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 676
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->-$$Nest$fputmIsFadeAnimating(Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;Z)V

    .line 677
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
