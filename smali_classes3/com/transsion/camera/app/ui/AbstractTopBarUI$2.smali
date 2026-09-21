.class Lcom/transsion/camera/app/ui/AbstractTopBarUI$2;
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

    .line 324
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 346
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 347
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fputmFlashFacadeChanged(Lcom/transsion/camera/app/ui/AbstractTopBarUI;Z)V

    .line 348
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateItemClickDisable(Z)V

    .line 349
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onAnimationCancel[mPopSettingHideView]: "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 335
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 336
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 337
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 338
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 339
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fputmFlashFacadeChanged(Lcom/transsion/camera/app/ui/AbstractTopBarUI;Z)V

    .line 340
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateItemClickDisable(Z)V

    .line 341
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onAnimationEnd[mPopSettingHideView]: "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 328
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 329
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateItemClickDisable(Z)V

    .line 330
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onAnimationStart[mPopSettingHideView]: "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
