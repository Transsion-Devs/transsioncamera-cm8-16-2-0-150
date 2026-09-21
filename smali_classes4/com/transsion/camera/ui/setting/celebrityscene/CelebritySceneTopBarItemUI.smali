.class public Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;
.source "SourceFile"


# static fields
.field private static final ALLOWED_ERROR:I = 0x2

.field private static final CELEBRITY_ID_FOOD:I = 0x3

.field private static final CELEBRITY_ID_SUNSET:I = 0x2

.field private static final STEADY_FRAME:I = 0xa

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private hidePopupRunnable:Ljava/lang/Runnable;

.field private mCelebrityValue:Ljava/lang/String;

.field private mIsFoodFirstShown:Z

.field private mIsPopupTipsNeedShow:Z

.field private mIsSunsetFirstShown:Z

.field private mLastStableValue:I

.field private mPopupTipsTextView:Landroid/widget/TextView;

.field private mPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

.field private mSceneQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method public static synthetic $r8$lambda$2eKdmsRpoEiE2HKNmLbPGRSUOCw(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$cNHGn5B04QEvy4k1ItWurh8vBCU(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->lambda$setupEntryView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e5Pux7NzXQ7k2rwS2NITOGWUyvs(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->lambda$showPopupTips$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$meDWDWghr4zEc4ETS5zch1Pzo4Q(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pgDCdVG3Gc1W5NAP-LU7VaNIyvA(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->lambda$showPopupTips$3(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CelebritySceneTopBarItemUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 43
    new-instance p1, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->hidePopupRunnable:Ljava/lang/Runnable;

    .line 45
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mSceneQueue:Ljava/util/Queue;

    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mLastStableValue:I

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mIsPopupTipsNeedShow:Z

    .line 49
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mIsFoodFirstShown:Z

    .line 50
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mIsSunsetFirstShown:Z

    .line 54
    new-instance p1, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;)V

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private checkSteadyScene(I)V
    .registers 5

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mSceneQueue:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 138
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mSceneQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_18

    .line 139
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mSceneQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 142
    :cond_18
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->isStable()Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 143
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mSceneQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 144
    iget v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mLastStableValue:I

    if-eq p1, v0, :cond_4d

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mIsPopupTipsNeedShow:Z

    if-eqz v0, :cond_4d

    .line 145
    iput p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mLastStableValue:I

    .line 146
    sget-object v0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isStable asd scene : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->showPopupTips(I)V

    :cond_4d
    return-void
.end method

.method private hidePopupTips()V
    .registers 3

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x186

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->hide()V

    return-void
.end method

.method private isStable()Z
    .registers 5

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mSceneQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-ge v0, v1, :cond_c

    return v2

    .line 157
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mSceneQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mSceneQueue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v2

    :cond_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v0, :cond_1f

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x2

    if-le v1, v3, :cond_1f

    return v2

    :cond_37
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$0()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->hidePopupTips()V

    return-void
.end method

.method private synthetic lambda$setupEntryView$1(Landroid/view/View;)V
    .registers 4

    .line 73
    sget-object p1, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "PopupTipsTextView click to show"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mCelebrityValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    const-string p1, "val_celebrity_scene_food"

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mCelebrityValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x1f

    if-eqz p1, :cond_38

    .line 76
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCelebritySceneType(I)V

    .line 77
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const-string v1, "6"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    goto :goto_53

    .line 78
    :cond_38
    const-string p1, "val_celebrity_scene_sunset"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mCelebrityValue:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 79
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCelebritySceneType(I)V

    .line 80
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const-string v1, "7"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 82
    :cond_53
    :goto_53
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x180

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 83
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->hidePopupTips()V

    return-void
.end method

.method private synthetic lambda$showPopupTips$2()V
    .registers 1

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->hide()V

    return-void
.end method

.method private synthetic lambda$showPopupTips$3(Ljava/lang/String;)V
    .registers 4

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/16 v1, 0x50

    invoke-virtual {v0, p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->show(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method private onClick(Landroid/view/View;)V
    .registers 2

    .line 58
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz p1, :cond_b

    .line 59
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->onSettingOptionClick(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method private showPopupTips(I)V
    .registers 6

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-eq p1, v0, :cond_2d

    const/16 v0, 0xc

    if-eq p1, v0, :cond_e

    .line 194
    const-string p1, "val_celebrity_scene_none"

    const/4 v0, 0x0

    goto :goto_4b

    .line 185
    :cond_e
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mIsSunsetFirstShown:Z

    if-nez p1, :cond_13

    goto :goto_7e

    .line 188
    :cond_13
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$string;->effect_sunset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const-string v3, "7"

    invoke-virtual {p1, v2, v3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 191
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mIsSunsetFirstShown:Z

    .line 192
    const-string p1, "val_celebrity_scene_sunset"

    goto :goto_4b

    .line 176
    :cond_2d
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mIsFoodFirstShown:Z

    if-nez p1, :cond_32

    goto :goto_7e

    .line 179
    :cond_32
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$string;->effect_food:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const-string v3, "6"

    invoke-virtual {p1, v2, v3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 182
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mIsFoodFirstShown:Z

    .line 183
    const-string p1, "val_celebrity_scene_food"

    :goto_4b
    if-eqz v0, :cond_7e

    .line 197
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v1, :cond_7e

    .line 198
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x185

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 199
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;

    new-instance v2, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 200
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->hidePopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 201
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;

    new-instance v2, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->hidePopupRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mCelebrityValue:Ljava/lang/String;

    :cond_7e
    :goto_7e
    return-void
.end method


# virtual methods
.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getItemType()Ljava/lang/String;
    .registers 1

    .line 91
    const-string p0, "OPTION_BAR"

    return-object p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 3

    .line 107
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->notifyCameraOperateAction(I)V

    const/16 v0, 0x11

    if-eq p1, v0, :cond_30

    const/16 v0, 0x12

    if-eq p1, v0, :cond_2c

    const/16 v0, 0x4d

    if-eq p1, v0, :cond_30

    const/16 v0, 0x4e

    if-eq p1, v0, :cond_2c

    const/16 v0, 0x115

    if-eq p1, v0, :cond_30

    const/16 v0, 0x116

    if-eq p1, v0, :cond_2c

    const/16 v0, 0x171

    if-eq p1, v0, :cond_30

    const/16 v0, 0x172

    if-eq p1, v0, :cond_2c

    const/16 v0, 0x183

    if-eq p1, v0, :cond_30

    const/16 v0, 0x184

    if-eq p1, v0, :cond_2c

    return-void

    :cond_2c
    const/4 p1, 0x1

    .line 122
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mIsPopupTipsNeedShow:Z

    return-void

    :cond_30
    const/4 p1, 0x0

    .line 114
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mIsPopupTipsNeedShow:Z

    .line 115
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->hidePopupTips()V

    return-void
.end method

.method public onOrientationChanged(IZ)V
    .registers 3

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    if-eqz p0, :cond_7

    .line 132
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->onOrientationChanged(I)V

    :cond_7
    return-void
.end method

.method public bridge synthetic setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 96
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 101
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 102
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .registers 4

    .line 65
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setupEntryView()V

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    if-nez v0, :cond_3e

    .line 67
    new-instance v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    const/16 v1, 0x8

    .line 68
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->setCloseImageVisible(I)V

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$color;->popup_tips_celebrity_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->setBackGroundColor(I)V

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->getPopupTipsView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;->mPopupTipsTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3e

    .line 72
    new-instance v1, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneTopBarItemUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3e
    return-void
.end method
