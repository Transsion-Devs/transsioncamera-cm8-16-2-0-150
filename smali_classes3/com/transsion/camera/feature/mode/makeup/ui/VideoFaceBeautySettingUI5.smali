.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;
.super Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI$ITopUICallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5$UIHandler;
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

.field private final mUIHandler:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5$UIHandler;


# direct methods
.method public static synthetic $r8$lambda$fhxjWRw2Mr4grqKJpf3YUSbZ3YM(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->lambda$updateSettingUILayout$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPopSettingTitleContainer(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;)Landroid/view/ViewGroup;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoFaceBeautySettingUI5"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;-><init>(Landroid/content/res/Resources;)V

    .line 40
    new-instance p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5$UIHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5$UIHandler;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->mUIHandler:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5$UIHandler;

    return-void
.end method

.method private synthetic lambda$updateSettingUILayout$0()V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    if-eqz v0, :cond_b

    .line 85
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->updateLayout(II)V

    :cond_b
    return-void
.end method

.method private showPopSettingTitleIfNeed()V
    .registers 4

    .line 138
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->mShouldShowSettingTitle:Z

    if-eqz v0, :cond_2b

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_2c

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 141
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 148
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->mUIHandler:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5$UIHandler;

    const/16 v0, 0x64

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2b
    return-void

    :array_2c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updatePopSettingTitleLayout()V
    .registers 5

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 125
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    .line 126
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->common_pop_setting_title_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 127
    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    .line 128
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->common_menu_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0x51

    .line 130
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 131
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 133
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 4

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;

    .line 47
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->pop_menu_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    .line 48
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->pop_setting_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    .line 49
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mLowLight:Z

    if-eqz p2, :cond_20

    const/high16 p2, -0x1000000

    goto :goto_21

    :cond_20
    const/4 p2, -0x1

    :goto_21
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$string;->face_beauty_mode_title:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 51
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->setIPMasterTopUICallBack(Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI$ITopUICallBack;)V

    .line 53
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->updatePopSettingTitleLayout()V

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

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

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->mUIHandler:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5$UIHandler;

    if-eqz v0, :cond_9

    const/16 v1, 0x64

    .line 166
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_e

    goto :goto_1b

    .line 171
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public hideSettingTitle()V
    .registers 2

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->mShouldShowSettingTitle:Z

    .line 161
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->hidePopSettingTitle()V

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

    .line 155
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->mShouldShowSettingTitle:Z

    return-void
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 97
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->onOrientationChanged(I)V

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_b

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_c

    :cond_b
    const/4 p1, 0x0

    .line 101
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .registers 3

    .line 117
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->onSettingOptionToggle(Ljava/lang/String;)V

    .line 118
    const-string v0, "key_video_facebeauty"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_16

    .line 119
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->showPopSettingTitleIfNeed()V

    :cond_16
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

    .line 106
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->ringScreenLightUpdateUI()V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_12

    .line 108
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mLowLight:Z

    if-eqz v1, :cond_e

    const/high16 v1, -0x1000000

    goto :goto_f

    :cond_e
    const/4 v1, -0x1

    :goto_f
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    if-eqz v0, :cond_1b

    .line 111
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mLowLight:Z

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->updateLowLight(Z)V

    :cond_1b
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .registers 8

    .line 59
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->getEntryView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 64
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 66
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 67
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    iget v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v5, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v3, v4, v5}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->updateLayout(II)V

    const/4 v3, 0x0

    .line 68
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v4, 0x53

    .line 70
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 76
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v4

    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->common_menu_bottom_margin:I

    .line 77
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 78
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v4, v3, v3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 80
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    iget v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-virtual {v3, v4}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->updateScreenFormType(I)V

    .line 81
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI5;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 90
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->vf_mu_feature_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->video_face_beauty_top_ui_margin_bottom:I

    .line 91
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
