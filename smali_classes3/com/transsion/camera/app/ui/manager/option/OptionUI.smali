.class public Lcom/transsion/camera/app/ui/manager/option/OptionUI;
.super Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;
.source "SourceFile"


# static fields
.field private static final ALPHA_ANIMATION_DURATION:I = 0x12c

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAIArtMuseumUIShowing:Z

.field private mAIGCUIShowing:Z

.field private mAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mCurrentIsZooming:Z

.field private mFilterUIShow:Z

.field private mIMasterGuideUICommon:Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;

.field private mIsItelSupportVss:Z

.field private mIsLiteFaceBeautyUIShow:Z

.field protected mOptionRootView:Landroid/widget/LinearLayout;

.field private mPMasterBottomUIShowing:Z

.field private mPopSettingShow:Z

.field private mPopWindowShow:Z

.field protected final mResources:Landroid/content/res/Resources;

.field private mStartRecord:Z

.field private mStartSelfTimeCapture:Z

.field private mStreetPhotoStyleOptionShowing:Z


# direct methods
.method static bridge synthetic -$$Nest$msetOptionRootViewEnable(Lcom/transsion/camera/app/ui/manager/option/OptionUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->setOptionRootViewEnable(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;)V
    .registers 10

    .line 84
    invoke-direct/range {p0 .. p9}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;)V

    const/4 p2, 0x1

    .line 57
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStreetPhotoStyleOptionShowing:Z

    const/4 p2, 0x0

    .line 64
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIsLiteFaceBeautyUIShow:Z

    .line 68
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIsItelSupportVss:Z

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mResources:Landroid/content/res/Resources;

    .line 87
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getIMasterGuideUICommon()Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIMasterGuideUICommon:Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;

    return-void
.end method

.method private loadOptionSettingUIs(Ljava/util/List;)V
    .registers 8

    if-nez p1, :cond_4

    goto/16 :goto_90

    .line 135
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 136
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->setSettingUI(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V

    .line 137
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getOptionEntryView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2e

    .line 139
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    sget v3, Lcom/transsion/camera/R$layout;->option_setting_item:I

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->createOptionEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    const v2, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x0

    .line 141
    invoke-static {v1, v2, v3}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    :cond_2e
    if-nez v1, :cond_4b

    .line 144
    sget-object v1, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createEntryView null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_8

    .line 147
    :cond_4b
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setupEntryView()V

    .line 149
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5b

    goto :goto_5c

    :cond_5b
    const/4 v3, 0x0

    .line 151
    :goto_5c
    sget-object v2, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadOptionSettingUIs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v3, :cond_89

    .line 153
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getOptionEntryView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 155
    :cond_89
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_8

    :cond_90
    :goto_90
    return-void
.end method

.method private setOptionRootViewEnable(Z)V
    .registers 4

    const/4 v0, 0x0

    .line 244
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 245
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 246
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method private stopPressedAnimation(I)V
    .registers 2

    .line 281
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->needStopPressedAnimation(I)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 282
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mOptionSettingUIList:Ljava/util/List;

    if-eqz p0, :cond_22

    .line 283
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 284
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getOptionEntryView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;)V

    goto :goto_e

    :cond_22
    return-void
.end method

.method private updateIconBubbleGuidePosition(Ljava/util/List;II)V
    .registers 7

    .line 122
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 123
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_long_exposure_option"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 124
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_ai_art_museum_option"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_28
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIMasterGuideUICommon:Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    .line 126
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p2, p3, v2, v0}, Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;->setSettingIconParams(IIZLjava/lang/String;)V

    goto :goto_4

    :cond_35
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .registers 1

    .line 99
    sget p0, Lcom/transsion/camera/R$layout;->interactive_option_layout:I

    return p0
.end method

.method protected getOptionRootView()Landroid/widget/LinearLayout;
    .registers 1

    .line 479
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public hide()V
    .registers 2

    .line 301
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->hide()V

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public init(Landroid/view/ViewGroup;)V
    .registers 5

    .line 92
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->init(Landroid/view/ViewGroup;)V

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->getLayoutId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 94
    sget v0, Lcom/transsion/camera/R$id;->interactive_option_icon_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    .line 95
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsItelSupportVss:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIsItelSupportVss:Z

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 5

    .line 306
    sget-object v0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraOperateActionToUI action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 307
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->stopPressedAnimation(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_168

    goto/16 :goto_150

    .line 338
    :sswitch_22
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAIArtMuseumUIShowing:Z

    .line 339
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    return-void

    .line 335
    :sswitch_28
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAIArtMuseumUIShowing:Z

    return-void

    .line 458
    :sswitch_2b
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIsLiteFaceBeautyUIShow:Z

    goto :goto_6e

    .line 453
    :sswitch_2e
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIsLiteFaceBeautyUIShow:Z

    goto :goto_72

    .line 314
    :sswitch_31
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    return-void

    .line 331
    :sswitch_34
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAIGCUIShowing:Z

    .line 332
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    return-void

    .line 328
    :sswitch_3a
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAIGCUIShowing:Z

    return-void

    .line 317
    :sswitch_3d
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    .line 318
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    return-void

    .line 311
    :sswitch_43
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    return-void

    .line 357
    :sswitch_46
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPMasterBottomUIShowing:Z

    .line 358
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    return-void

    .line 444
    :sswitch_4f
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPMasterBottomUIShowing:Z

    return-void

    .line 463
    :sswitch_52
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_150

    .line 464
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    .line 465
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStreetPhotoStyleOptionShowing:Z

    return-void

    .line 469
    :sswitch_63
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_150

    .line 470
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStreetPhotoStyleOptionShowing:Z

    return-void

    .line 460
    :goto_6e
    :sswitch_6e
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->show()V

    return-void

    .line 455
    :goto_72
    :sswitch_72
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->hide()V

    return-void

    .line 423
    :sswitch_76
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mCurrentIsZooming:Z

    return-void

    .line 413
    :sswitch_79
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPopSettingShow:Z

    .line 414
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    if-nez p1, :cond_150

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartSelfTimeCapture:Z

    if-nez p1, :cond_150

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_150

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mFilterUIShow:Z

    if-nez p1, :cond_150

    .line 415
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_9a

    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 416
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 418
    :cond_9a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 419
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 385
    :sswitch_a5
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    .line 386
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPopSettingShow:Z

    .line 387
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPMasterBottomUIShowing:Z

    .line 388
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAIGCUIShowing:Z

    .line 389
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAIArtMuseumUIShowing:Z

    .line 390
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mFilterUIShow:Z

    .line 391
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_150

    .line 392
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStreetPhotoStyleOptionShowing:Z

    return-void

    .line 447
    :sswitch_bd
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mRecordingUIRespondImmediately:Z

    if-eqz p1, :cond_150

    .line 448
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mNeedAnimation:Z

    .line 449
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    return-void

    .line 346
    :sswitch_cb
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mFilterUIShow:Z

    goto :goto_108

    .line 342
    :sswitch_ce
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mFilterUIShow:Z

    return-void

    .line 408
    :sswitch_d1
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_150

    .line 409
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPopWindowShow:Z

    return-void

    .line 396
    :sswitch_da
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_eb

    .line 397
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    .line 398
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPopWindowShow:Z

    .line 399
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPMasterBottomUIShowing:Z

    .line 400
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAIGCUIShowing:Z

    .line 401
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAIArtMuseumUIShowing:Z

    .line 403
    :cond_eb
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_150

    .line 404
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStreetPhotoStyleOptionShowing:Z

    return-void

    .line 368
    :sswitch_f6
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    if-eqz p1, :cond_ff

    .line 369
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    .line 370
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    .line 372
    :cond_ff
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIsLiteFaceBeautyUIShow:Z

    .line 373
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartSelfTimeCapture:Z

    .line 374
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPopWindowShow:Z

    .line 375
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mFilterUIShow:Z

    return-void

    .line 348
    :goto_108
    :sswitch_108
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mCurrentIsZooming:Z

    .line 354
    :sswitch_10a
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    return-void

    .line 427
    :sswitch_111
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mCurrentIsZooming:Z

    return-void

    .line 378
    :sswitch_114
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPopWindowShow:Z

    .line 379
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPopSettingShow:Z

    .line 381
    :sswitch_118
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    .line 382
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    return-void

    .line 321
    :sswitch_11e
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    .line 322
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIsItelSupportVss:Z

    if-eqz p1, :cond_126

    .line 323
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIsLiteFaceBeautyUIShow:Z

    .line 325
    :cond_126
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    return-void

    .line 433
    :sswitch_12a
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartSelfTimeCapture:Z

    .line 434
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    if-nez p1, :cond_150

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPMasterBottomUIShowing:Z

    if-nez p1, :cond_150

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAIArtMuseumUIShowing:Z

    if-nez p1, :cond_150

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAIGCUIShowing:Z

    if-nez p1, :cond_150

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStreetPhotoStyleOptionShowing:Z

    if-eqz p1, :cond_150

    .line 435
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPopWindowShow:Z

    .line 436
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPopSettingShow:Z

    .line 437
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_150

    .line 438
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 439
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_150
    :goto_150
    return-void

    .line 430
    :sswitch_151
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartSelfTimeCapture:Z

    return-void

    .line 361
    :sswitch_154
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    .line 362
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartSelfTimeCapture:Z

    .line 364
    :sswitch_158
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mNeedAnimation:Z

    .line 365
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    if-nez p1, :cond_163

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIsLiteFaceBeautyUIShow:Z

    if-nez p1, :cond_163

    goto :goto_164

    :cond_163
    move v1, v2

    :goto_164
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    return-void

    :sswitch_data_168
    .sparse-switch
        0x8 -> :sswitch_154
        0xb -> :sswitch_151
        0xc -> :sswitch_12a
        0xf -> :sswitch_11e
        0x10 -> :sswitch_114
        0x19 -> :sswitch_111
        0x1a -> :sswitch_108
        0x1c -> :sswitch_f6
        0x1d -> :sswitch_da
        0x1e -> :sswitch_d1
        0x30 -> :sswitch_ce
        0x31 -> :sswitch_cb
        0x7e -> :sswitch_10a
        0x82 -> :sswitch_10a
        0x84 -> :sswitch_158
        0xb5 -> :sswitch_10a
        0xb6 -> :sswitch_cb
        0xc9 -> :sswitch_bd
        0xcb -> :sswitch_118
        0xcf -> :sswitch_a5
        0xd0 -> :sswitch_79
        0xde -> :sswitch_111
        0xdf -> :sswitch_76
        0xed -> :sswitch_72
        0xee -> :sswitch_6e
        0xf2 -> :sswitch_63
        0xf3 -> :sswitch_52
        0xf7 -> :sswitch_4f
        0xf8 -> :sswitch_46
        0x101 -> :sswitch_43
        0x102 -> :sswitch_3d
        0x103 -> :sswitch_3a
        0x104 -> :sswitch_34
        0x114 -> :sswitch_10a
        0x133 -> :sswitch_10a
        0x14b -> :sswitch_43
        0x14c -> :sswitch_31
        0x155 -> :sswitch_2e
        0x156 -> :sswitch_2b
        0x18e -> :sswitch_28
        0x18f -> :sswitch_22
    .end sparse-switch
.end method

.method public onOrientationChanged(IZ)V
    .registers 3

    .line 251
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->onOrientationChanged(IZ)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateOrientation(ZZ)V

    return-void
.end method

.method public setOptionSettingUIList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI;",
            ">;)V"
        }
    .end annotation

    .line 104
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->setOptionSettingUIList(Ljava/util/List;)V

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mOptionSettingUIList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->loadOptionSettingUIs(Ljava/util/List;)V

    const/4 p1, 0x1

    .line 106
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    .line 107
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mOptionSettingUIList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateOptionRootViewLayout(Ljava/util/List;)V

    return-void
.end method

.method public show()V
    .registers 3

    .line 292
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->show()V

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_12

    const/high16 v1, 0x3f800000    # 1.0f

    .line 294
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 295
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    return-void
.end method

.method public unInit()V
    .registers 1

    .line 274
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->unInit()V

    .line 275
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_a

    .line 276
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_a
    return-void
.end method

.method protected updateOptionRootViewLayout(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;)V"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 113
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIsItelSupportVss:Z

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 114
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->itel_interactive_option_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_2b

    .line 115
    :cond_23
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->interactive_option_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 116
    :goto_2b
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getModePlusBottomBarHeight()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 117
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateIconBubbleGuidePosition(Ljava/util/List;II)V

    return-void
.end method

.method protected updateOrientation(ZZ)V
    .registers 8

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    goto :goto_29

    .line 260
    :cond_5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_29

    .line 262
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 263
    instance-of v4, v3, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v4, :cond_26

    if-eqz p2, :cond_1f

    .line 265
    check-cast v3, Lcom/transsion/camera/app/ui/widget/IRotatable;

    invoke-interface {v3, v1, v1}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    goto :goto_26

    .line 267
    :cond_1f
    check-cast v3, Lcom/transsion/camera/app/ui/widget/IRotatable;

    iget v4, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mOrientation:I

    invoke-interface {v3, v4, p1}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_26
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_29
    :goto_29
    return-void
.end method

.method public updateVisibility(Z)V
    .registers 11

    .line 161
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->updateVisibility(Z)V

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_137

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPopSettingShow:Z

    if-nez v0, :cond_137

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPopWindowShow:Z

    if-eqz v0, :cond_11

    goto/16 :goto_137

    :cond_11
    if-eqz p1, :cond_18

    .line 167
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mCurrentIsZooming:Z

    if-eqz v0, :cond_18

    return-void

    .line 171
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 174
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    move v0, v1

    :goto_33
    if-ne v0, p1, :cond_36

    return-void

    .line 177
    :cond_36
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    const/16 v2, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_82

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_48

    const/4 v0, 0x0

    goto :goto_4c

    :cond_48
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 179
    :goto_4c
    instance-of v4, v0, Landroid/animation/Animator;

    if-eqz v4, :cond_82

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_82

    if-eqz p1, :cond_75

    .line 180
    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_75

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mOptionVisibilityRespondent:Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;

    invoke-interface {v4}, Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;->shouldShowOption()Z

    move-result v4

    if-eqz v4, :cond_75

    .line 181
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 182
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7f

    :cond_75
    if-nez p1, :cond_7f

    .line 184
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 185
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :cond_7f
    :goto_7f
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mNeedAnimation:Z

    return-void

    .line 191
    :cond_82
    sget-object v0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateOptionRootVisible visible = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , mIsNeedAnimation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mNeedAnimation:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 192
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v4, 0x3e800000    # 0.25f

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 193
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const v7, 0x3f28f5c3    # 0.66f

    invoke-direct {v4, v6, v5, v7, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v5, 0x2

    const-wide/16 v6, 0x12c

    .line 194
    const-string v8, "alpha"

    if-eqz p1, :cond_106

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_106

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mOptionVisibilityRespondent:Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;->shouldShowOption()Z

    move-result p1

    if-eqz p1, :cond_106

    .line 195
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mNeedAnimation:Z

    if-nez p1, :cond_dc

    .line 196
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 197
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_134

    .line 199
    :cond_dc
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    new-array v0, v5, [F

    fill-array-data v0, :array_166

    invoke-static {p1, v8, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 201
    invoke-virtual {p1, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 202
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 203
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/manager/option/OptionUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/option/OptionUI$1;-><init>(Lcom/transsion/camera/app/ui/manager/option/OptionUI;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 210
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_134

    .line 213
    :cond_106
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mNeedAnimation:Z

    if-nez p1, :cond_110

    .line 214
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_134

    .line 216
    :cond_110
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    new-array v2, v5, [F

    fill-array-data v2, :array_16e

    invoke-static {p1, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 217
    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 218
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 219
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/manager/option/OptionUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/option/OptionUI$2;-><init>(Lcom/transsion/camera/app/ui/manager/option/OptionUI;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 237
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 240
    :goto_134
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mNeedAnimation:Z

    return-void

    .line 163
    :cond_137
    :goto_137
    sget-object p1, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateVisibility mOptionRootView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mPopSettingShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPopSettingShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPopWindowShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPopWindowShow:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    nop

    :array_166
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_16e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
