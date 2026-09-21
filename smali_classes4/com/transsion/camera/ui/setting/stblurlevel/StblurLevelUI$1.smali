.class Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->showOrHideSTblurLevel(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;Z)V
    .registers 3

    .line 379
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI$1;->this$0:Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;

    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI$1;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .line 396
    invoke-static {}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationCancel, show:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI$1;->val$show:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 397
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI$1;->val$show:Z

    if-nez p1, :cond_27

    .line 398
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI$1;->this$0:Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_27
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .registers 4

    .line 388
    invoke-static {}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationEnd, show:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI$1;->val$show:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 389
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI$1;->val$show:Z

    if-nez p1, :cond_27

    .line 390
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI$1;->this$0:Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_27
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .registers 4

    .line 382
    invoke-static {}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationStart, show:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI$1;->val$show:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 383
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI$1;->this$0:Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
