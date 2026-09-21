.class public Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;
.source "SourceFile"


# static fields
.field private static final DEFAULT_TIME:Ljava/lang/String; = "0"

.field private static final PORTRAIT_FLARE_OFF_ANIM:Ljava/lang/String; = "portrait_flare_off_anim.json"

.field private static final PORTRAIT_FLARE_OFF_SCREEN_SUPPLY:Ljava/lang/String; = "portrait_flare_off_screen_supply_anim.json"

.field private static final PORTRAIT_FLARE_ON_ANIM:Ljava/lang/String; = "portrait_flare_on_anim.json"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sActivityIdentity:I


# instance fields
.field private mAnimFrameLayout:Landroid/widget/FrameLayout;

.field private mCurrentOrientation:I

.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mIsNextOn:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLottieAnimView:Lcom/transsion/camera/ui/setting/portraitflare/widget/RotateLottieAnimationView;

.field private mResources:Landroid/content/res/Resources;

.field private mRootView:Landroid/view/ViewGroup;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAnimFrameLayout(Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;)Landroid/widget/FrameLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mAnimFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRootView(Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;)Landroid/view/ViewGroup;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PortraitFlareTopBarItemUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 5

    .line 57
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 44
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    const/16 v1, 0x67

    invoke-direct {p2, v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$002(Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;Z)Z
    .registers 2

    .line 36
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mNeedItemAnimation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;)Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;)Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;)Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;)Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    return-object p0
.end method

.method private activityChanged()Z
    .registers 4

    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    .line 227
    sget v0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->sActivityIdentity:I

    if-eq p0, v0, :cond_c

    .line 228
    sput p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->sActivityIdentity:I

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    .line 231
    :goto_d
    sget-object v0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activityChanged changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private inflateFlareLayout()V
    .registers 5

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/camera/R$layout;->portrait_flare_anim_layout:I

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mRootView:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/R$id;->portrait_flare_anim_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mAnimFrameLayout:Landroid/widget/FrameLayout;

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/R$id;->portrait_flare_anim:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/portraitflare/widget/RotateLottieAnimationView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mLottieAnimView:Lcom/transsion/camera/ui/setting/portraitflare/widget/RotateLottieAnimationView;

    .line 75
    iget p0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mCurrentOrientation:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/ui/setting/portraitflare/widget/RotateLottieAnimationView;->setOrientation(IZ)V

    return-void
.end method

.method private needShowHint()Z
    .registers 3

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v0, 0x1

    if-nez p0, :cond_6

    return v0

    .line 177
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 179
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_1c

    const-string v1, "on"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x0

    return p0

    :cond_1c
    return v0
.end method

.method private showAntiHint()V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_23

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$string;->portrait_flare_setting_on_tips:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_23
    return-void
.end method

.method private startLottieAnim()V
    .registers 7

    .line 186
    sget-object v0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[startLottieAnim]: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    .line 188
    const-string v1, "0"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_portrait_anim_time"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 189
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v1, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 190
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_flare_anim_enable"

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 193
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mScreenSupply:Z

    if-eqz v0, :cond_4d

    const-string v0, "portrait_flare_off_screen_supply_anim.json"

    goto :goto_52

    :cond_4d
    const-string v0, "portrait_flare_off_anim.json"

    goto :goto_52

    .line 195
    :cond_50
    const-string v0, "portrait_flare_on_anim.json"

    .line 197
    :goto_52
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mLottieAnimView:Lcom/transsion/camera/ui/setting/portraitflare/widget/RotateLottieAnimationView;

    if-eqz v1, :cond_85

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "images"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mLottieAnimView:Lcom/transsion/camera/ui/setting/portraitflare/widget/RotateLottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mLottieAnimView:Lcom/transsion/camera/ui/setting/portraitflare/widget/RotateLottieAnimationView;

    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mLottieAnimView:Lcom/transsion/camera/ui/setting/portraitflare/widget/RotateLottieAnimationView;

    new-instance v1, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI$1;-><init>(Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mLottieAnimView:Lcom/transsion/camera/ui/setting/portraitflare/widget/RotateLottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_85
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIII)Landroid/view/View;
    .registers 7

    .line 65
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mRootView:Landroid/view/ViewGroup;

    .line 66
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 67
    invoke-super/range {p0 .. p6}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIII)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public doOnStatusChanged(Ljava/lang/String;)V
    .registers 3

    .line 149
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->doOnStatusChanged(Ljava/lang/String;)V

    .line 150
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mIsNextOn:Z

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "off"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x0

    .line 151
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mIsNextOn:Z

    .line 153
    :cond_16
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->needShowHint()Z

    move-result p1

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_30

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mIsNextOn:Z

    if-eqz p1, :cond_30

    .line 154
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->showAntiHint()V

    return-void

    .line 156
    :cond_30
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_39

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_39
    return-void
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 3

    .line 95
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->notifyCameraOperateAction(I)V

    const/16 v0, 0x63

    if-eq p1, v0, :cond_8

    goto :goto_16

    .line 98
    :cond_8
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mNeedItemAnimation:Z

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mAnimFrameLayout:Landroid/widget/FrameLayout;

    if-nez p1, :cond_16

    .line 100
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->inflateFlareLayout()V

    .line 101
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->startLottieAnim()V

    :cond_16
    :goto_16
    return-void
.end method

.method public onEntryViewClick(Landroid/view/View;Z)Z
    .registers 6

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_31

    .line 110
    const-string v0, "on"

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "key_portrait_flare_switch"

    if-eqz v0, :cond_1c

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "value_portrait_flare_interaction_off"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_31

    .line 112
    :cond_1c
    const-string v0, "off"

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "value_portrait_flare_interaction_on"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    :cond_31
    :goto_31
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->onEntryViewClick(Landroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged(IZ)V
    .registers 3

    .line 121
    iput p1, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mCurrentOrientation:I

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mLottieAnimView:Lcom/transsion/camera/ui/setting/portraitflare/widget/RotateLottieAnimationView;

    if-eqz p0, :cond_9

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/portraitflare/widget/RotateLottieAnimationView;->setOrientation(IZ)V

    :cond_9
    return-void
.end method

.method public bridge synthetic setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 7

    .line 80
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 81
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    .line 82
    const-string v0, "0"

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_portrait_anim_time"

    invoke-virtual {p1, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    .line 84
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    .line 83
    const-string v4, "key_flare_anim_enable"

    invoke-virtual {p1, v4, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-ltz v0, :cond_38

    const/4 v2, 0x3

    if-ge v0, v2, :cond_38

    if-eqz p1, :cond_38

    .line 85
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->activityChanged()Z

    move-result p1

    if-eqz p1, :cond_38

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mNeedItemAnimation:Z

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method protected setToNextIndex()V
    .registers 6

    .line 164
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 165
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mIsNextOn:Z

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    .line 167
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mIsNextOn:Z

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    goto :goto_1c

    :cond_1a
    const-string v1, "closed_reason_user"

    .line 168
    :goto_1c
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 167
    const-string v4, "key_flare_closed_reason"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 169
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setToNextIndex()V

    .line 170
    sget-object v0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setToNextIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mIsNextOn:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setupEntryView()V
    .registers 1

    .line 90
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setupEntryView()V

    return-void
.end method

.method public unInit()V
    .registers 3

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mNeedItemAnimation:Z

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_c

    .line 140
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 142
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mAnimFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->mAnimFrameLayout:Landroid/widget/FrameLayout;

    .line 144
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->unInit()V

    return-void
.end method
