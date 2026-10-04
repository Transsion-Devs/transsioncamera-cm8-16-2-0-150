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

.field private mIconLowLightColor:I

.field private mIconOffColor:I

.field private mIconOnColor:I

.field private mIsItelSupportVss:Z

.field private mIsLiteFaceBeautyUIShow:Z

.field private mIsSuperNightLiteAnimShowing:Z

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

    .line 89
    invoke-direct/range {p0 .. p9}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;)V

    const/4 p2, 0x1

    .line 57
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStreetPhotoStyleOptionShowing:Z

    const/4 p2, 0x0

    .line 64
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIsLiteFaceBeautyUIShow:Z

    .line 68
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIsItelSupportVss:Z

    .line 74
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIsSuperNightLiteAnimShowing:Z

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mResources:Landroid/content/res/Resources;

    .line 92
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getIMasterGuideUICommon()Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIMasterGuideUICommon:Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;

    .line 93
    sget p2, Lcom/transsion/camera/R$color;->top_bar_animation_icon_on:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIconOnColor:I

    .line 94
    sget p2, Lcom/transsion/camera/R$color;->top_bar_animation_icon_off:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIconOffColor:I

    .line 95
    sget p2, Lcom/transsion/camera/R$color;->top_bar_animation_icon_low_light:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIconLowLightColor:I

    return-void
.end method

.method private loadOptionSettingUIs(Ljava/util/List;)V
    .registers 8

    if-nez p1, :cond_4

    goto/16 :goto_a2

    .line 143
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 144
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->setSettingUI(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V

    .line 145
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getOptionEntryView()Landroid/view/View;

    move-result-object v1

    .line 146
    iget v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIconOnColor:I

    iget v3, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIconOffColor:I

    iget v4, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIconLowLightColor:I

    invoke-interface {v0, v2, v3, v4}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->initIconColor(III)V

    if-nez v1, :cond_37

    .line 148
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    sget v3, Lcom/transsion/camera/R$layout;->option_setting_item:I

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->createOptionEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    const v2, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x0

    .line 150
    invoke-static {v1, v2, v3}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    :cond_37
    if-nez v1, :cond_54

    .line 153
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

    .line 156
    :cond_54
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setupEntryView()V

    .line 158
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_64

    goto :goto_65

    :cond_64
    const/4 v3, 0x0

    .line 160
    :goto_65
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

    if-nez v3, :cond_92

    .line 162
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getOptionEntryView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :cond_92
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 165
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPopSettingShow:Z

    if-eqz v1, :cond_8

    const/16 v1, 0xcf

    .line 166
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    goto/16 :goto_8

    :cond_a2
    :goto_a2
    return-void
.end method

.method private setOptionRootViewEnable(Z)V
    .registers 4

    const/4 v0, 0x0

    .line 256
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 257
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 258
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method private stopPressedAnimation(I)V
    .registers 2

    .line 293
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->needStopPressedAnimation(I)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 294
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mOptionSettingUIList:Ljava/util/List;

    if-eqz p0, :cond_22

    .line 295
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 296
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getOptionEntryView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;)V

    goto :goto_e

    :cond_22
    return-void
.end method

.method private updateIconBubbleGuidePosition(Ljava/util/List;II)V
    .registers 7

    .line 130
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

    .line 131
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_long_exposure_option"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 132
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

    .line 134
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

    .line 107
    sget p0, Lcom/transsion/camera/R$layout;->interactive_option_layout:I

    return p0
.end method

.method protected getOptionRootView()Landroid/widget/LinearLayout;
    .registers 1

    .line 499
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public hide()V
    .registers 2

    .line 313
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->hide()V

    .line 314
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public init(Landroid/view/ViewGroup;)V
    .registers 5

    .line 100
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->init(Landroid/view/ViewGroup;)V

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->getLayoutId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 102
    sget v0, Lcom/transsion/camera/R$id;->interactive_option_icon_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    .line 103
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsItelSupportVss:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIsItelSupportVss:Z

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 5

    .line 318
    sget-object v0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraOperateActionToUI action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 319
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->stopPressedAnimation(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_17a

    goto/16 :goto_162

    .line 350
    :sswitch_22
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAIArtMuseumUIShowing:Z

    .line 351
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    return-void

    .line 347
    :sswitch_28
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAIArtMuseumUIShowing:Z

    return-void

    .line 475
    :sswitch_2b
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIsLiteFaceBeautyUIShow:Z

    .line 476
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->show()V

    return-void

    .line 467
    :sswitch_31
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIsLiteFaceBeautyUIShow:Z

    .line 468
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->hide()V

    return-void

    .line 326
    :sswitch_37
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    return-void

    .line 343
    :sswitch_3a
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAIGCUIShowing:Z

    .line 344
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    return-void

    .line 340
    :sswitch_40
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAIGCUIShowing:Z

    return-void

    .line 329
    :sswitch_43
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    .line 330
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    return-void

    .line 323
    :sswitch_49
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    return-void

    .line 369
    :sswitch_4c
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPMasterBottomUIShowing:Z

    .line 370
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    return-void

    .line 458
    :sswitch_55
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPMasterBottomUIShowing:Z

    return-void

    .line 483
    :sswitch_58
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_162

    .line 484
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    .line 485
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStreetPhotoStyleOptionShowing:Z

    return-void

    .line 489
    :sswitch_69
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_162

    .line 490
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStreetPhotoStyleOptionShowing:Z

    return-void

    .line 479
    :sswitch_74
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIsSuperNightLiteAnimShowing:Z

    .line 480
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->show()V

    return-void

    .line 471
    :sswitch_7a
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIsSuperNightLiteAnimShowing:Z

    .line 472
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->hide()V

    return-void

    .line 437
    :sswitch_80
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mCurrentIsZooming:Z

    return-void

    .line 427
    :sswitch_83
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPopSettingShow:Z

    .line 428
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    if-nez p1, :cond_162

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartSelfTimeCapture:Z

    if-nez p1, :cond_162

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_162

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mFilterUIShow:Z

    if-nez p1, :cond_162

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIsSuperNightLiteAnimShowing:Z

    if-nez p1, :cond_162

    .line 429
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_a8

    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_a8

    .line 430
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 432
    :cond_a8
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 433
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 399
    :sswitch_b3
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    .line 400
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPopSettingShow:Z

    .line 401
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPMasterBottomUIShowing:Z

    .line 402
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAIGCUIShowing:Z

    .line 403
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAIArtMuseumUIShowing:Z

    .line 404
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mFilterUIShow:Z

    .line 405
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_162

    .line 406
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStreetPhotoStyleOptionShowing:Z

    return-void

    .line 461
    :sswitch_cb
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mRecordingUIRespondImmediately:Z

    if-eqz p1, :cond_162

    .line 462
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mNeedAnimation:Z

    .line 463
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    return-void

    .line 358
    :sswitch_d9
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mFilterUIShow:Z

    goto :goto_11a

    .line 354
    :sswitch_dc
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mFilterUIShow:Z

    return-void

    .line 422
    :sswitch_df
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_162

    .line 423
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPopWindowShow:Z

    return-void

    .line 410
    :sswitch_e8
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_f9

    .line 411
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    .line 412
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPopWindowShow:Z

    .line 413
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPMasterBottomUIShowing:Z

    .line 414
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAIGCUIShowing:Z

    .line 415
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAIArtMuseumUIShowing:Z

    .line 417
    :cond_f9
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_162

    .line 418
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStreetPhotoStyleOptionShowing:Z

    return-void

    .line 380
    :sswitch_104
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    if-eqz p1, :cond_10d

    .line 381
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    .line 382
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    .line 384
    :cond_10d
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIsLiteFaceBeautyUIShow:Z

    .line 385
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartSelfTimeCapture:Z

    .line 386
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPopWindowShow:Z

    .line 387
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mFilterUIShow:Z

    .line 388
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mCurrentIsZooming:Z

    .line 389
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIsSuperNightLiteAnimShowing:Z

    return-void

    .line 360
    :goto_11a
    :sswitch_11a
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mCurrentIsZooming:Z

    .line 366
    :sswitch_11c
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    return-void

    .line 441
    :sswitch_123
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mCurrentIsZooming:Z

    return-void

    .line 392
    :sswitch_126
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPopWindowShow:Z

    .line 393
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPopSettingShow:Z

    .line 395
    :sswitch_12a
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    .line 396
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    return-void

    .line 333
    :sswitch_130
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    .line 334
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIsItelSupportVss:Z

    if-eqz p1, :cond_138

    .line 335
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIsLiteFaceBeautyUIShow:Z

    .line 337
    :cond_138
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    return-void

    .line 447
    :sswitch_13c
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartSelfTimeCapture:Z

    .line 448
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    if-nez p1, :cond_162

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPMasterBottomUIShowing:Z

    if-nez p1, :cond_162

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAIArtMuseumUIShowing:Z

    if-nez p1, :cond_162

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAIGCUIShowing:Z

    if-nez p1, :cond_162

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStreetPhotoStyleOptionShowing:Z

    if-eqz p1, :cond_162

    .line 449
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPopWindowShow:Z

    .line 450
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPopSettingShow:Z

    .line 451
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_162

    .line 452
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 453
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_162
    :goto_162
    return-void

    .line 444
    :sswitch_163
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartSelfTimeCapture:Z

    return-void

    .line 373
    :sswitch_166
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    .line 374
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartSelfTimeCapture:Z

    .line 376
    :sswitch_16a
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mNeedAnimation:Z

    .line 377
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mStartRecord:Z

    if-nez p1, :cond_175

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIsLiteFaceBeautyUIShow:Z

    if-nez p1, :cond_175

    goto :goto_176

    :cond_175
    move v1, v2

    :goto_176
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    return-void

    :sswitch_data_17a
    .sparse-switch
        0x8 -> :sswitch_166
        0xb -> :sswitch_163
        0xc -> :sswitch_13c
        0xf -> :sswitch_130
        0x10 -> :sswitch_126
        0x19 -> :sswitch_123
        0x1a -> :sswitch_11a
        0x1c -> :sswitch_104
        0x1d -> :sswitch_e8
        0x1e -> :sswitch_df
        0x30 -> :sswitch_dc
        0x31 -> :sswitch_d9
        0x7e -> :sswitch_11c
        0x82 -> :sswitch_11c
        0x84 -> :sswitch_16a
        0xb5 -> :sswitch_11c
        0xb6 -> :sswitch_d9
        0xc9 -> :sswitch_cb
        0xcb -> :sswitch_12a
        0xcf -> :sswitch_b3
        0xd0 -> :sswitch_83
        0xde -> :sswitch_123
        0xdf -> :sswitch_80
        0xed -> :sswitch_7a
        0xee -> :sswitch_74
        0xf2 -> :sswitch_69
        0xf3 -> :sswitch_58
        0xf7 -> :sswitch_55
        0xf8 -> :sswitch_4c
        0x101 -> :sswitch_49
        0x102 -> :sswitch_43
        0x103 -> :sswitch_40
        0x104 -> :sswitch_3a
        0x114 -> :sswitch_11c
        0x133 -> :sswitch_11c
        0x14b -> :sswitch_49
        0x14c -> :sswitch_37
        0x155 -> :sswitch_31
        0x156 -> :sswitch_2b
        0x18e -> :sswitch_28
        0x18f -> :sswitch_22
    .end sparse-switch
.end method

.method public onOrientationChanged(IZ)V
    .registers 3

    .line 263
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->onOrientationChanged(IZ)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 264
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

    .line 112
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->setOptionSettingUIList(Ljava/util/List;)V

    .line 113
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mOptionSettingUIList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->loadOptionSettingUIs(Ljava/util/List;)V

    const/4 p1, 0x1

    .line 114
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    .line 115
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mOptionSettingUIList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateOptionRootViewLayout(Ljava/util/List;)V

    return-void
.end method

.method public show()V
    .registers 3

    .line 304
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->show()V

    .line 305
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_12

    const/high16 v1, 0x3f800000    # 1.0f

    .line 306
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    return-void
.end method

.method public unInit()V
    .registers 1

    .line 286
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->unInit()V

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_a

    .line 288
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

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 121
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mIsItelSupportVss:Z

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 122
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->itel_interactive_option_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_2b

    .line 123
    :cond_23
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->interactive_option_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 124
    :goto_2b
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getModePlusBottomBarHeight()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 125
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateIconBubbleGuidePosition(Ljava/util/List;II)V

    return-void
.end method

.method protected updateOrientation(ZZ)V
    .registers 8

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    goto :goto_29

    .line 272
    :cond_5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_29

    .line 274
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 275
    instance-of v4, v3, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v4, :cond_26

    if-eqz p2, :cond_1f

    .line 277
    check-cast v3, Lcom/transsion/camera/app/ui/widget/IRotatable;

    invoke-interface {v3, v1, v1}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    goto :goto_26

    .line 279
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

    .line 173
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->updateVisibility(Z)V

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_137

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPopSettingShow:Z

    if-nez v0, :cond_137

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mPopWindowShow:Z

    if-eqz v0, :cond_11

    goto/16 :goto_137

    :cond_11
    if-eqz p1, :cond_18

    .line 179
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mCurrentIsZooming:Z

    if-eqz v0, :cond_18

    return-void

    .line 183
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 186
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

    .line 189
    :cond_36
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    const/16 v2, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_82

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_48

    const/4 v0, 0x0

    goto :goto_4c

    :cond_48
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 191
    :goto_4c
    instance-of v4, v0, Landroid/animation/Animator;

    if-eqz v4, :cond_82

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_82

    if-eqz p1, :cond_75

    .line 192
    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_75

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mOptionVisibilityRespondent:Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;

    invoke-interface {v4}, Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;->shouldShowOption()Z

    move-result v4

    if-eqz v4, :cond_75

    .line 193
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 194
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7f

    :cond_75
    if-nez p1, :cond_7f

    .line 196
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 197
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :cond_7f
    :goto_7f
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mNeedAnimation:Z

    return-void

    .line 203
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

    .line 204
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v4, 0x3e800000    # 0.25f

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 205
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const v7, 0x3f28f5c3    # 0.66f

    invoke-direct {v4, v6, v5, v7, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v5, 0x2

    const-wide/16 v6, 0x12c

    .line 206
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

    .line 207
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mNeedAnimation:Z

    if-nez p1, :cond_dc

    .line 208
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_134

    .line 211
    :cond_dc
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    new-array v0, v5, [F

    fill-array-data v0, :array_166

    invoke-static {p1, v8, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 213
    invoke-virtual {p1, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 214
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 215
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/manager/option/OptionUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/option/OptionUI$1;-><init>(Lcom/transsion/camera/app/ui/manager/option/OptionUI;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 222
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_134

    .line 225
    :cond_106
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mNeedAnimation:Z

    if-nez p1, :cond_110

    .line 226
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_134

    .line 228
    :cond_110
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    new-array v2, v5, [F

    fill-array-data v2, :array_16e

    invoke-static {p1, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 229
    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 230
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 231
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/manager/option/OptionUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/option/OptionUI$2;-><init>(Lcom/transsion/camera/app/ui/manager/option/OptionUI;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 249
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 252
    :goto_134
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mNeedAnimation:Z

    return-void

    .line 175
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
