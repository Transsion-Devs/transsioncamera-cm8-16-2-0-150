.class public Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;
.super Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;
.source "SourceFile"


# static fields
.field private static final AI_ART_MUSEUM_GUIDE_SP:Ljava/lang/String; = "ai_art_museum_guide"

.field private static final DELAY_SHOW_TIME:J = 0xbb8L

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAIArtGuiderHelper:Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;

.field private mDialog:Landroid/app/Dialog;

.field private final mGuideHelper:Lcom/transsion/camera/feature/mode/aiartmuseum/helper/GuideHelper;

.field private final mMainHandler:Landroid/os/Handler;

.field private mStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;


# direct methods
.method public static synthetic $r8$lambda$0JBuuGq7cCN2X4kv1MDjZtk3hrM(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;Landroid/content/DialogInterface;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->lambda$showGuideDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wkVM70pOQ2hrCqhAl__dfWL-by4(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->lambda$initGuide$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$zF3xwIxgxRAxeDNgeagQ2MOUGiw(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->lambda$showGuideDialog$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIArtMuseum_GuideUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 6

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->mMainHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/helper/GuideHelper;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/helper/GuideHelper;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->mGuideHelper:Lcom/transsion/camera/feature/mode/aiartmuseum/helper/GuideHelper;

    .line 56
    new-instance p2, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderCameraHelper;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const-string v1, "ai_art_museum_guide"

    const/4 v2, 0x0

    .line 57
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderCameraHelper;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->mAIArtGuiderHelper:Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;

    return-void
.end method

.method private hideDialog()V
    .registers 3

    .line 149
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideDialog"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->mAIArtGuiderHelper:Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;

    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->hide()V

    return-void
.end method

.method private initGuide()V
    .registers 5

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->mGuideHelper:Lcom/transsion/camera/feature/mode/aiartmuseum/helper/GuideHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/helper/GuideHelper;->showGuide()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_14
    return-void
.end method

.method private synthetic lambda$initGuide$0()V
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->showGuideDialog()V

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->mGuideHelper:Lcom/transsion/camera/feature/mode/aiartmuseum/helper/GuideHelper;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/helper/GuideHelper;->increase()V

    return-void
.end method

.method private synthetic lambda$showGuideDialog$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 80
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p2, 0x1

    if-eq p1, p2, :cond_10

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1a

    const/4 p2, 0x3

    if-eq p1, p2, :cond_10

    goto :goto_23

    .line 90
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->mStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p0, :cond_23

    .line 91
    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    goto :goto_23

    .line 83
    :cond_1a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->mStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p0, :cond_23

    .line 84
    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_23
    :goto_23
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$showGuideDialog$2(Landroid/content/DialogInterface;)V
    .registers 3

    .line 102
    sget-object p1, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "guideDialogShow"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_14

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->mGuideHelper:Lcom/transsion/camera/feature/mode/aiartmuseum/helper/GuideHelper;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/helper/GuideHelper;->guideShowed()V

    :cond_14
    return-void
.end method

.method private showGuideDialog()V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->mAIArtGuiderHelper:Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;)V

    invoke-virtual {v0, v1}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->setTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->mAIArtGuiderHelper:Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;)V

    invoke-virtual {v0, v1}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->setShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->mAIArtGuiderHelper:Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;

    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->show()V

    return-void
.end method


# virtual methods
.method public init()V
    .registers 2

    .line 62
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->init()V

    .line 64
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v0, :cond_e

    .line 65
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->initGuide()V

    :cond_e
    return-void
.end method

.method public pause()V
    .registers 3

    .line 143
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->pause()V

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 145
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->hideDialog()V

    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->mStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 135
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->unInit()V

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setUserInteractionListener(Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;)V

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 138
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->hideDialog()V

    return-void
.end method

.method public updateAIArtMuseumOption(Ljava/lang/String;)V
    .registers 3

    .line 116
    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->mGuideHelper:Lcom/transsion/camera/feature/mode/aiartmuseum/helper/GuideHelper;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/helper/GuideHelper;->shouldShow()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 117
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->showGuideDialog()V

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->mGuideHelper:Lcom/transsion/camera/feature/mode/aiartmuseum/helper/GuideHelper;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/helper/GuideHelper;->guideShowed()V

    :cond_18
    return-void
.end method

.method public userInteractive()Z
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 128
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->hideDialog()V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method
