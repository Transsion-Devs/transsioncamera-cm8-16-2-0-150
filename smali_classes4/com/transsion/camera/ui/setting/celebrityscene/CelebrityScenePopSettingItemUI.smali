.class public Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;
.source "SourceFile"


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mIsTwinkleGuideShowing:Z

.field private mPopupTipsShowRunnable:Ljava/lang/Runnable;

.field private mRecommendPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public static synthetic $r8$lambda$Rp570m2thG6fFdfOXv-TTaigsJI(Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI;->lambda$showPopupTips$0(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CelebrityScenePopSettingItemUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 3

    .line 28
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    const/4 p2, 0x0

    .line 25
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI;->mIsTwinkleGuideShowing:Z

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private synthetic lambda$showPopupTips$0(Ljava/lang/String;)V
    .registers 4

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI;->mRecommendPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/16 v1, 0x31

    invoke-virtual {v0, p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->show(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method private showPopupTips()V
    .registers 6

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->getTwinkleGuideMode()Ljava/lang/String;

    move-result-object v0

    .line 86
    sget-object v1, Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showPopupTips ++ twinkleGuideMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mIsTwinkleGuideShowing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI;->mIsTwinkleGuideShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    const-string v2, "val_celebrity_scene_food"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI;->mIsTwinkleGuideShowing:Z

    if-eqz v2, :cond_3b

    .line 89
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$string;->choose_food:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4f

    .line 90
    :cond_3b
    const-string v2, "val_celebrity_scene_sunset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI;->mIsTwinkleGuideShowing:Z

    if-eqz v2, :cond_81

    .line 91
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$string;->choose_sunset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    :goto_4f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showPopupTips -- twinkleGuideMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI;->mPopupTipsShowRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_6c

    .line 97
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$UIHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    :cond_6c
    new-instance v0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI;->mPopupTipsShowRunnable:Ljava/lang/Runnable;

    .line 101
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$UIHandler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x185

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_81
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIIIIIIII)Landroid/view/View;
    .registers 15

    .line 38
    new-instance v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI;->mRecommendPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->setCloseImageVisible(I)V

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI;->mRecommendPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$color;->popup_tips_celebrity_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->setBackGroundColor(I)V

    .line 41
    invoke-super/range {p0 .. p11}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIIIIIIII)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 3

    .line 50
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->notifyCameraOperateAction(I)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_27

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_27

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_27

    const/16 v0, 0xf9

    if-eq p1, v0, :cond_23

    const/16 v0, 0x171

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x172

    if-eq p1, v0, :cond_1b

    goto :goto_3a

    :cond_1b
    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI;->mIsTwinkleGuideShowing:Z

    return-void

    :cond_1f
    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI;->mIsTwinkleGuideShowing:Z

    return-void

    .line 53
    :cond_23
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI;->showPopupTips()V

    return-void

    .line 64
    :cond_27
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI;->mPopupTipsShowRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_33

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$UIHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI;->mPopupTipsShowRunnable:Ljava/lang/Runnable;

    .line 68
    :cond_33
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI;->mRecommendPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    if-eqz p0, :cond_3a

    .line 69
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->hide()V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebrityScenePopSettingItemUI;->mRecommendPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    if-eqz p0, :cond_7

    .line 80
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->onOrientationChanged(I)V

    :cond_7
    return-void
.end method
