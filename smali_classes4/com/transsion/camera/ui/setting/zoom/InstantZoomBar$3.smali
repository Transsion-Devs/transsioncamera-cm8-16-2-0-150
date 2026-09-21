.class Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;)V
    .registers 2

    .line 315
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .line 318
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "fadeOut, onAnimationCancel"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$3;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 324
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "fadeOut, onAnimationEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 325
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 326
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
