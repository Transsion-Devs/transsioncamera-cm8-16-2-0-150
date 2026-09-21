.class Lcom/transsion/camera/app/ui/AbstractHintUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractHintUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractHintUI;)V
    .registers 2

    .line 286
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 289
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(I)V

    .line 290
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmTwinkleGuideRoot(Lcom/transsion/camera/app/ui/AbstractHintUI;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_53

    .line 293
    :cond_15
    sget-object p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick,mTwinkleGuideEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmTwinkleGuideEnabled(Lcom/transsion/camera/app/ui/AbstractHintUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mTwinkleGuideMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmTwinkleGuideMode(Lcom/transsion/camera/app/ui/AbstractHintUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 295
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmTwinkleGuideMode(Lcom/transsion/camera/app/ui/AbstractHintUI;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    invoke-static {}, Lcom/transsion/camera/utils/manager/GlobalClickManager;->checkCanClick()Z

    move-result p1

    if-nez p1, :cond_54

    :goto_53
    return-void

    .line 296
    :cond_54
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateAnalytics(ZZ)V

    .line 297
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmTwinkleGuideMode(Lcom/transsion/camera/app/ui/AbstractHintUI;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_ac

    .line 298
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmTwinkleGuideMode(Lcom/transsion/camera/app/ui/AbstractHintUI;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.transsion.camera.ui.setting.flarecapture.FlareCaptureSettingUIEntry"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 299
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->enterSettingUIBottom()V

    goto :goto_ac

    .line 300
    :cond_7a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmTwinkleGuideMode(Lcom/transsion/camera/app/ui/AbstractHintUI;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "val_celebrity_scene_food"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a3

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmTwinkleGuideMode(Lcom/transsion/camera/app/ui/AbstractHintUI;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "val_celebrity_scene_sunset"

    .line 301
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_99

    goto :goto_a3

    .line 305
    :cond_99
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmTwinkleGuideMode(Lcom/transsion/camera/app/ui/AbstractHintUI;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$mupdateSpecifiedMode(Lcom/transsion/camera/app/ui/AbstractHintUI;Ljava/lang/String;)V

    goto :goto_ac

    .line 303
    :cond_a3
    :goto_a3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1, v0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->onPopSettingShowViewClick(ZZ)V

    .line 308
    :cond_ac
    :goto_ac
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmTwinkleGuideRoot(Lcom/transsion/camera/app/ui/AbstractHintUI;)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_110

    const-string v3, "scaleX"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 309
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v4}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmTwinkleGuideRoot(Lcom/transsion/camera/app/ui/AbstractHintUI;)Landroid/view/View;

    move-result-object v4

    new-array v1, v1, [F

    fill-array-data v1, :array_11a

    const-string v5, "scaleY"

    invoke-static {v4, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 310
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmSuperNightScaleAnimatorSet(Lcom/transsion/camera/app/ui/AbstractHintUI;)Landroid/animation/AnimatorSet;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    iget-object v3, v3, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 311
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmSuperNightScaleAnimatorSet(Lcom/transsion/camera/app/ui/AbstractHintUI;)Landroid/animation/AnimatorSet;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 312
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmSuperNightScaleAnimatorSet(Lcom/transsion/camera/app/ui/AbstractHintUI;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 313
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmSuperNightScaleAnimatorSet(Lcom/transsion/camera/app/ui/AbstractHintUI;)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/ui/AbstractHintUI$1$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractHintUI$1$1;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI$1;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_110
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_11a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method
