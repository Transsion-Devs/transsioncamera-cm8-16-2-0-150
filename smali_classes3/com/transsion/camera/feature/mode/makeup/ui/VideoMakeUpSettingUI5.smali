.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;
.super Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI$ITopUICallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5$UIHandler;
    }
.end annotation


# static fields
.field private static final HIDE_SETTING_NAME_DELAY_TIME:I = 0xbb8

.field private static final MSG_HIDE_SETTING_NAME:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mPopSettingTitleContainer:Landroid/view/ViewGroup;

.field private mPopSettingTitleTextView:Landroid/widget/TextView;

.field private mShouldShowSettingTitle:Z

.field private final mUIHandler:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5$UIHandler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPopSettingTitleContainer(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;)Landroid/view/ViewGroup;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoMakeUpSettingUI5"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;-><init>(Landroid/content/res/Resources;)V

    .line 37
    new-instance p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5$UIHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5$UIHandler;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;->mUIHandler:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5$UIHandler;

    return-void
.end method

.method private updatePopSettingTitleLayout()V
    .registers 5

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 98
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    .line 99
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->common_pop_setting_title_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 100
    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    .line 101
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->common_menu_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0x51

    .line 103
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 104
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 106
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 4

    .line 42
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;

    .line 44
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->pop_menu_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    .line 45
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->pop_setting_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    .line 46
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$string;->makeup_mode_title:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 47
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mLowLight:Z

    if-eqz p2, :cond_27

    const/high16 p2, -0x1000000

    goto :goto_28

    :cond_27
    const/4 p2, -0x1

    :goto_28
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->setIPMasterTopUICallBack(Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI$ITopUICallBack;)V

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected hidePopSettingTitle()V
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;->mUIHandler:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5$UIHandler;

    if-eqz v0, :cond_9

    const/16 v1, 0x64

    .line 140
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 142
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_e

    goto :goto_1b

    .line 145
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public hideSettingTitle()V
    .registers 2

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;->mShouldShowSettingTitle:Z

    .line 118
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;->hidePopSettingTitle()V

    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public needShowSettingTitle(Z)V
    .registers 2

    .line 112
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;->mShouldShowSettingTitle:Z

    return-void
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 4

    .line 55
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->onOrientationChanged(I)V

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->updateLayout(II)V

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_12

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_13

    :cond_12
    const/4 p1, 0x0

    .line 60
    :cond_13
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method protected ringScreenLightUpdateUI()V
    .registers 3

    .line 65
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->ringScreenLightUpdateUI()V

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    if-eqz v0, :cond_c

    .line 67
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mLowLight:Z

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->updateLowLight(Z)V

    .line 69
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    .line 70
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mLowLight:Z

    if-eqz p0, :cond_17

    const/high16 p0, -0x1000000

    goto :goto_18

    :cond_17
    const/4 p0, -0x1

    :goto_18
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1b
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method protected showPopSettingTitleIfNeed()V
    .registers 4

    .line 122
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;->mShouldShowSettingTitle:Z

    if-nez v0, :cond_5

    return-void

    .line 125
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_2e

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 127
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 134
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;->mUIHandler:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5$UIHandler;

    const/16 v0, 0x64

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    nop

    :array_2e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected updateSettingUILayout(Z)V
    .registers 6

    .line 76
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->getEntryView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 81
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->updateLayout(II)V

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 84
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->common_menu_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_big_item_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->video_makeup_top_ui_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI5;->updatePopSettingTitleLayout()V

    return-void
.end method
