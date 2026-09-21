.class Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->setupLottieAnimation(IZF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)V
    .registers 2

    .line 492
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 495
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 496
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mLivePhotoIconClicked:Z

    return-void
.end method
