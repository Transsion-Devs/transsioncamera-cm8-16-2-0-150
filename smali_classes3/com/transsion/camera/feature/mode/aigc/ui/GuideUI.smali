.class public Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;
.super Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;
.implements Lcom/transsion/camera/featurelibs/aicommon/ui/IAgreementUI$IAgreementUIListener;


# static fields
.field public static final AIGC_GUIDE_DIALOG:Ljava/lang/String; = "aigc_guide_dialog"

.field private static final BUBBLE_DELAY_SHOW_TIME:J = 0x1f4L

.field private static final DELAY_SHOW_TIME:J = 0xbb8L

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAgreementShow:Z

.field private mDescription:Landroid/widget/TextView;

.field private mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

.field private mFragmentShow:Z

.field private mGuideBubbleShow:Z

.field private final mGuideHelper:Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;

.field private mIcon:Landroid/widget/ImageView;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMasterGuideUIBean:Lcom/transsion/camera/app/common/MasterGuideUIBean;

.field private mPaused:Z

.field private mPopSettingShow:Z

.field private mPopWindowShow:Z

.field private mPreviewCoverShow:Z

.field private mScrollRoot:Landroid/widget/ScrollView;

.field private mSecondaryMenuShow:Z

.field private mSelfTiming:Z

.field private mStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;


# direct methods
.method public static synthetic $r8$lambda$KSuBiNqarEQIglRIsgjopqiyQmA(Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->lambda$checkToShowBuddleGuide$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$WQ6AEu0PI3dRjr-OeLF0LyDHRTk(Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->showDialog()V

    return-void
.end method

.method public static synthetic $r8$lambda$f7BLh6i_E_GjNlyLS1xvJlA5Peo(Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;Landroid/content/DialogInterface;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->lambda$showDialog$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vQTr7yIjlYpL9WUrxlvmSw2ubCM(Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->lambda$initGuideView$2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$z-J69yDgKjg0eozK4TMMlma1HzM(Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->lambda$showDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 75
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GuideUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 5

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V

    .line 112
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mMainHandler:Landroid/os/Handler;

    .line 116
    new-instance p2, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;

    invoke-direct {p2, p1, p3}, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mGuideHelper:Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;

    return-void
.end method

.method private cannotShowBuddleGuide()Z
    .registers 4

    .line 343
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannotShowBuddleGuide mPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAgreementShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mAgreementShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSelfTiming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mSelfTiming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mFragmentShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mFragmentShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSecondaryMenuShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mSecondaryMenuShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPreviewCoverShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mPreviewCoverShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mGuideBubbleShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mGuideBubbleShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPopSettingShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mPopSettingShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPopWindowShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mPopWindowShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", previewGuideShowed(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mGuideHelper:Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;

    .line 352
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->previewGuideShowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", shouldShowBubble(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mGuideHelper:Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;

    .line 353
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->shouldShowBubble()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 355
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mPaused:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8a

    return v1

    .line 359
    :cond_8a
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mAgreementShow:Z

    if-eqz v0, :cond_8f

    return v1

    .line 363
    :cond_8f
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mSelfTiming:Z

    if-eqz v0, :cond_94

    return v1

    .line 367
    :cond_94
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mFragmentShow:Z

    if-eqz v0, :cond_99

    return v1

    .line 371
    :cond_99
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mSecondaryMenuShow:Z

    if-eqz v0, :cond_9e

    return v1

    .line 375
    :cond_9e
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mPreviewCoverShow:Z

    if-eqz v0, :cond_a3

    return v1

    .line 379
    :cond_a3
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mGuideBubbleShow:Z

    if-eqz v0, :cond_a8

    return v1

    .line 383
    :cond_a8
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mPopSettingShow:Z

    if-nez v0, :cond_c2

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mPopWindowShow:Z

    if-eqz v0, :cond_b1

    goto :goto_c2

    .line 387
    :cond_b1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mGuideHelper:Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->previewGuideShowed()Z

    move-result v0

    if-nez v0, :cond_ba

    return v1

    .line 391
    :cond_ba
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mGuideHelper:Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->shouldShowBubble()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_c2
    :goto_c2
    return v1
.end method

.method private checkToShowBuddleGuide()V
    .registers 5

    .line 323
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "checkToShowBuddleGuide"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 325
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->cannotShowBuddleGuide()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 329
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private createGuideView()Landroid/view/View;
    .registers 4

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/aigc/R$layout;->aigc_guide_layout:I

    const/4 v2, 0x0

    .line 265
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 267
    sget v1, Lcom/transsion/camera/feature/aigc/R$id;->aigc_guide_scroll_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mScrollRoot:Landroid/widget/ScrollView;

    .line 268
    sget v1, Lcom/transsion/camera/feature/aigc/R$id;->aigc_guide_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mIcon:Landroid/widget/ImageView;

    .line 269
    sget v1, Lcom/transsion/camera/feature/aigc/R$id;->aigc_guide_description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mDescription:Landroid/widget/TextView;

    .line 271
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->initGuideView()V

    return-object v0
.end method

.method private hideBuddleGuide()V
    .registers 3

    .line 409
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideBuddleGuide"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mMasterGuideUIBean:Lcom/transsion/camera/app/common/MasterGuideUIBean;

    if-eqz v1, :cond_15

    .line 411
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IMasterGuideControl;->hideMasterGuide(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V

    const/4 v0, 0x0

    .line 412
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mMasterGuideUIBean:Lcom/transsion/camera/app/common/MasterGuideUIBean;

    :cond_15
    return-void
.end method

.method private hideDialog()V
    .registers 3

    .line 252
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideDialog"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 254
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz p0, :cond_17

    .line 256
    :try_start_b
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->hide()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    .line 258
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hide exception"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    return-void
.end method

.method private initGuide()V
    .registers 5

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mGuideHelper:Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->showGuide()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setUserInteractionListener(Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;)V

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_19
    return-void
.end method

.method private initGuideView()V
    .registers 3

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mScrollRoot:Landroid/widget/ScrollView;

    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 299
    sget v0, Lcom/transsion/camera/feature/mode/aigc/util/RegionUtil;->CURRENT_REGION:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x4

    if-eq v0, v1, :cond_25

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1d

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mIcon:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_guide_dialog_icon_public:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_34

    .line 301
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mIcon:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_guide_dialog_icon_africa:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_34

    .line 305
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mIcon:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_guide_dialog_icon_southasia:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_34

    .line 309
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mIcon:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_guide_dialog_icon_southeastasia:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 317
    :goto_34
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mDescription:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/feature/aigc/R$color;->aigc_guide_description_text_color_dark:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_49
    return-void
.end method

.method private synthetic lambda$checkToShowBuddleGuide$3()V
    .registers 2

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez v0, :cond_c

    .line 331
    sget-object p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "checkToShowBuddleGuide mAppUI is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 334
    :cond_c
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->cannotShowBuddleGuide()Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 337
    :cond_13
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->showBuddleGuide()V

    .line 338
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mGuideHelper:Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->bubbleGuideShowed()V

    return-void
.end method

.method private synthetic lambda$initGuideView$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 278
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p2, 0x1

    if-eq p1, p2, :cond_10

    const/4 p2, 0x3

    if-eq p1, p2, :cond_10

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1a

    goto :goto_23

    .line 288
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p0, :cond_23

    .line 289
    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    goto :goto_23

    .line 281
    :cond_1a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p0, :cond_23

    .line 282
    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_23
    :goto_23
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$showDialog$0(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 197
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->hideDialog()V

    return-void
.end method

.method private synthetic lambda$showDialog$1(Landroid/content/DialogInterface;)V
    .registers 3

    .line 202
    sget-object p1, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onDismiss"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 203
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mScrollRoot:Landroid/widget/ScrollView;

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 204
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 206
    :cond_f
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    .line 207
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mScrollRoot:Landroid/widget/ScrollView;

    .line 208
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mIcon:Landroid/widget/ImageView;

    .line 209
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mDescription:Landroid/widget/TextView;

    return-void
.end method

.method private screenFormTypeExpandOrLRHover()Z
    .registers 3

    .line 221
    iget p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mScreenFormType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v1, 0x4

    if-eq p0, v1, :cond_e

    const/4 v1, 0x5

    if-ne p0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    return p0

    :cond_e
    :goto_e
    return v0
.end method

.method private showBuddleGuide()V
    .registers 5

    .line 395
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showBuddleGuide"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 399
    new-instance v1, Lcom/transsion/camera/app/common/MasterGuideUIBean;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/MasterGuideUIBean;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mMasterGuideUIBean:Lcom/transsion/camera/app/common/MasterGuideUIBean;

    .line 400
    const-string v2, " key_icon_bubble_guide_ui "

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->setType(Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mMasterGuideUIBean:Lcom/transsion/camera/app/common/MasterGuideUIBean;

    sget v2, Lcom/transsion/camera/feature/aigc/R$dimen;->aigc_bubble_guide_margin_left:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->setLeftMargin(I)V

    .line 402
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mMasterGuideUIBean:Lcom/transsion/camera/app/common/MasterGuideUIBean;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v2

    sget v3, Lcom/transsion/camera/feature/aigc/R$dimen;->aigc_bubble_guide_margin_bottom:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->setBottomMargin(I)V

    .line 403
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mMasterGuideUIBean:Lcom/transsion/camera/app/common/MasterGuideUIBean;

    sget v2, Lcom/transsion/camera/feature/aigc/R$array;->aigc_bubble_guide_description_array:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->setDescription([Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mMasterGuideUIBean:Lcom/transsion/camera/app/common/MasterGuideUIBean;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IMasterGuideControl;->showMasterGuide(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V

    return-void
.end method

.method private showDialog()V
    .registers 4

    .line 184
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showDialog"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setUserInteractionListener(Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;)V

    .line 188
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->hideDialog()V

    .line 190
    new-instance v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mScreenFormType:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 191
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->screenFormTypeExpandOrLRHover()Z

    move-result v1

    if-eqz v1, :cond_22

    iget v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mOrientation:I

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setOrientation(I)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 193
    sget v1, Lcom/transsion/camera/feature/aigc/R$string;->aigc_guide_title_capture_suggestion:I

    .line 194
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setTitle(I)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object v0

    .line 195
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->createGuideView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setView(Landroid/view/View;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/aigc/R$string;->aigc_guide_dialog_button:I

    new-instance v2, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;)V

    .line 196
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->create()Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    .line 201
    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 213
    :try_start_4d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "aigc_guide_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mGuideHelper:Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->increase()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_61} :catch_62

    return-void

    :catch_62
    move-exception p0

    .line 216
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showDialog exception"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private updateDialog()V
    .registers 3

    .line 242
    iget v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mOrientation:I

    .line 243
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->screenFormTypeExpandOrLRHover()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    .line 246
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz p0, :cond_10

    .line 247
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->setOrientation(I)V

    :cond_10
    return-void
.end method


# virtual methods
.method public init()V
    .registers 2

    .line 121
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->init()V

    .line 123
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsMasterGuideUISupport:Z

    if-nez v0, :cond_e

    .line 124
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->initGuide()V

    :cond_e
    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .registers 6

    .line 417
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraOperateAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0xb

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_ff

    const/16 v0, 0xc

    const/4 v3, 0x0

    if-eq p1, v0, :cond_f9

    const/16 v0, 0x11

    if-eq p1, v0, :cond_f1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_eb

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_d5

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_c7

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_b7

    const/16 v0, 0x17c

    if-eq p1, v0, :cond_af

    const/16 v0, 0x17d

    if-eq p1, v0, :cond_a9

    const/16 v0, 0x191

    if-eq p1, v0, :cond_f9

    const/16 v0, 0x19e

    if-eq p1, v0, :cond_a6

    const/16 v0, 0x19f

    if-eq p1, v0, :cond_a0

    const/16 v0, 0x4d

    if-eq p1, v0, :cond_f1

    const/16 v0, 0x4e

    if-eq p1, v0, :cond_eb

    const/16 v0, 0x66

    if-eq p1, v0, :cond_f1

    const/16 v0, 0x67

    if-eq p1, v0, :cond_eb

    const/16 v0, 0x89

    if-eq p1, v0, :cond_f1

    const/16 v0, 0x8a

    if-eq p1, v0, :cond_eb

    const/16 v0, 0xb0

    if-eq p1, v0, :cond_f1

    const/16 v0, 0xb1

    if-eq p1, v0, :cond_eb

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_98

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_8e

    const/16 v0, 0xf4

    if-eq p1, v0, :cond_f1

    const/16 v0, 0xf5

    if-eq p1, v0, :cond_eb

    const/16 v0, 0x103

    if-eq p1, v0, :cond_88

    const/16 v0, 0x104

    if-eq p1, v0, :cond_82

    goto :goto_d4

    .line 472
    :cond_82
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mSecondaryMenuShow:Z

    .line 473
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->checkToShowBuddleGuide()V

    return-void

    .line 467
    :cond_88
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mSecondaryMenuShow:Z

    .line 468
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->hideBuddleGuide()V

    return-void

    .line 425
    :cond_8e
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mPopSettingShow:Z

    if-eqz p1, :cond_d4

    .line 426
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mPopSettingShow:Z

    .line 427
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->checkToShowBuddleGuide()V

    return-void

    .line 420
    :cond_98
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mPopSettingShow:Z

    .line 421
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    .line 462
    :cond_a0
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mGuideBubbleShow:Z

    .line 463
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->checkToShowBuddleGuide()V

    return-void

    .line 458
    :cond_a6
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mGuideBubbleShow:Z

    return-void

    .line 453
    :cond_a9
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mPreviewCoverShow:Z

    .line 454
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->checkToShowBuddleGuide()V

    return-void

    .line 448
    :cond_af
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mPreviewCoverShow:Z

    .line 449
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mGuideHelper:Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->previewGuideShowed(Z)V

    return-void

    .line 439
    :cond_b7
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_d4

    .line 440
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mPopWindowShow:Z

    if-eqz p1, :cond_d4

    .line 441
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mPopWindowShow:Z

    .line 442
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->checkToShowBuddleGuide()V

    return-void

    .line 432
    :cond_c7
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_d4

    .line 433
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mPopWindowShow:Z

    .line 434
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_d4
    :goto_d4
    return-void

    .line 508
    :cond_d5
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mPaused:Z

    .line 509
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mSelfTiming:Z

    .line 510
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mFragmentShow:Z

    .line 511
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mPopWindowShow:Z

    .line 512
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mPopSettingShow:Z

    .line 513
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mPreviewCoverShow:Z

    .line 514
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mGuideBubbleShow:Z

    .line 515
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mSecondaryMenuShow:Z

    .line 516
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    .line 503
    :cond_eb
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mFragmentShow:Z

    .line 504
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->checkToShowBuddleGuide()V

    return-void

    .line 493
    :cond_f1
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mFragmentShow:Z

    .line 494
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    .line 483
    :cond_f9
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mSelfTiming:Z

    .line 484
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->checkToShowBuddleGuide()V

    return-void

    .line 477
    :cond_ff
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mSelfTiming:Z

    .line 478
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onAgreementDismiss()V
    .registers 3

    .line 154
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onAgreementDismiss"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mAgreementShow:Z

    .line 156
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->checkToShowBuddleGuide()V

    return-void
.end method

.method public onAgreementShow()V
    .registers 3

    .line 148
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onAgreementShow"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mAgreementShow:Z

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 228
    invoke-super {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->onOrientationChanged(I)V

    .line 229
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->updateDialog()V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 234
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->onScreenFormChanged(IZ)V

    .line 235
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz p1, :cond_c

    .line 236
    iget p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mScreenFormType:I

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->updateScreenFormType(I)V

    .line 238
    :cond_c
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->updateDialog()V

    return-void
.end method

.method public onUserInteraction()V
    .registers 3

    .line 141
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onUserInteraction"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setUserInteractionListener(Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;)V

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .registers 3

    .line 176
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->pause()V

    .line 177
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mPaused:Z

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 180
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->hideDialog()V

    return-void
.end method

.method public resume()V
    .registers 2

    .line 169
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->resume()V

    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mPaused:Z

    .line 171
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->checkToShowBuddleGuide()V

    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 161
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->unInit()V

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 163
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->hideDialog()V

    .line 164
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->hideBuddleGuide()V

    return-void
.end method
