.class Lcom/transsion/camera/app/ui/AbstractTopBarUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractTopBarUI;->initPopSettingControlView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V
    .registers 2

    .line 302
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 319
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 320
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->onPopSettingShowViewAnimationCancel(Landroid/animation/Animator;)V

    .line 321
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onAnimationCancel[mPopSettingShowView]: "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 312
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 313
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->onPopSettingShowViewAnimationEnd(Landroid/animation/Animator;)V

    .line 314
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onAnimationEnd[mPopSettingShowView]: "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 305
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 306
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateItemClickDisable(Z)V

    .line 307
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onAnimationStart[mPopSettingShowView]: "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
