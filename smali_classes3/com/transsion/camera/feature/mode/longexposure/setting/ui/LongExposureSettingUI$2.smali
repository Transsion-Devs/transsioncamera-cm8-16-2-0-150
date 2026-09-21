.class Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->runAnim(ZZ[Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;

.field final synthetic val$isShow:Z

.field final synthetic val$views:[Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$Rjz2laDNijyBYlo_yECDKlpMj1c(Landroid/view/View;)Z
    .registers 1

    .line 652
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$dh0Js3A2twIJwworXEMq4k6lyls(Landroid/view/View;)Z
    .registers 1

    .line 661
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$tTHO7n2wgS_V_r2tFWXwMYKSOGQ(Landroid/view/View;)V
    .registers 2

    const/4 v0, 0x4

    .line 662
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$v6OpvTrqHDOHCAS-QUr9KXx0NqE(Landroid/view/View;)V
    .registers 2

    const/4 v0, 0x0

    .line 653
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;Z[Landroid/view/View;)V
    .registers 4

    .line 648
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$2;->val$isShow:Z

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$2;->val$views:[Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 660
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$2;->val$isShow:Z

    if-nez p1, :cond_1b

    .line 661
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$2;->val$views:[Landroid/view/View;

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$2$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$2$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$2$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$2$$ExternalSyntheticLambda1;-><init>()V

    .line 662
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_1b
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 651
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$2;->val$isShow:Z

    if-eqz p1, :cond_1b

    .line 652
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$2;->val$views:[Landroid/view/View;

    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$2$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$2$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$2$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$2$$ExternalSyntheticLambda3;-><init>()V

    .line 653
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 655
    :cond_1b
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$2;->val$isShow:Z

    invoke-static {p1, p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->-$$Nest$monLongExposureSeekbarStateChange(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;Z)V

    return-void
.end method
