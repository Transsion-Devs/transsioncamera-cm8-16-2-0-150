.class public Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# static fields
.field private static final FLAG_CELEBRITY_SCENE_FLAG:I = 0x400

.field private static final FLAG_CONTINUOUS_SHOT:I = 0x8

.field private static final FLAG_FILTER_UI:I = 0x4

.field private static final FLAG_NIGHT_SHOT_LOADING:I = 0x20

.field private static final FLAG_POP_SETTING_VIEW:I = 0x2

.field private static final FLAG_QUICK_VIDEO_RECORDING:I = 0x80

.field private static final FLAG_SELF_TIMER_CAPTURE:I = 0x40

.field private static final FLAG_SHUTTER_GUIDE_LAYOUT:I = 0x100

.field private static final FLAG_ZOOM_SCALE:I = 0x200

.field private static final FLAG_ZOOM_WHEEL:I = 0x10

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mAIZoomSRIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mConflictUIShowingFlags:I

.field private mDeviceSetting:Lcom/transsion/camera/feature/setting/aizoomsr/AIZoomSR;

.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mLastState:Ljava/lang/String;

.field private mNeedShowIcon:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mUIHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$5eNxem2FBc6B8mPX69Aqd7IciO4(Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->lambda$new$3(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DaGEEtQEgbzztGuT_3P61oVKqn8(Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->lambda$doCreateEntryView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ol3wFT3MNVbP0l9aPWsylvH5-2k(Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->lambda$hideIcon$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$UZ2xB4PDaSEfAJRGli4KH7oiqOU(Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->lambda$showIcon$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIZoomSRUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 185
    new-instance v0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mResources:Landroid/content/res/Resources;

    .line 56
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method private addConflictUIFlag(I)V
    .registers 3

    .line 241
    iget v0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mConflictUIShowingFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mConflictUIShowingFlags:I

    .line 242
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->updateIconVisibility()V

    return-void
.end method

.method private clearAllConflictUIFlag()V
    .registers 2

    const/4 v0, 0x0

    .line 255
    iput v0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mConflictUIShowingFlags:I

    .line 256
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->updateIconVisibility()V

    return-void
.end method

.method private clearConflictUIFlag(I)V
    .registers 3

    .line 246
    iget v0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mConflictUIShowingFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mConflictUIShowingFlags:I

    .line 247
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->updateIconVisibility()V

    return-void
.end method

.method private doShowIcon()V
    .registers 4

    .line 142
    sget-object v0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "doShowIcon"

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mAIZoomSRIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mDeviceSetting:Lcom/transsion/camera/feature/setting/aizoomsr/AIZoomSR;

    .line 144
    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/aizoomsr/AIZoomSR;->getSettingValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mAIZoomSRIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 6

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->full_zoom_item_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 85
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->ai_zoom_icon_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 86
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->ai_zoom_icon_margin_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 88
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v3

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcom/transsion/camera/R$dimen;->full_zoom_root_margin_bottom:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v3, p0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    .line 92
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x53

    .line 93
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, v2, v0, v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-object p0
.end method

.method private hideHint()V
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_9

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_9
    return-void
.end method

.method private hideIcon()V
    .registers 5

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mAIZoomSRIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    return-void

    .line 152
    :cond_b
    sget-object v0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "hideIcon"

    invoke-static {v0, v3, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_27

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mAIZoomSRIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 156
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private isConflictUIShowing()Z
    .registers 1

    .line 251
    iget p0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mConflictUIShowingFlags:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$doCreateEntryView$0(Landroid/view/View;)V
    .registers 5

    .line 67
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mAIZoomSRIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 70
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mAIZoomSRIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    .line 72
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mAIZoomSRIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    if-nez p1, :cond_1b

    .line 73
    const-string p1, "on"

    goto :goto_1d

    :cond_1b
    const-string p1, "off"

    .line 74
    :goto_1d
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mDeviceSetting:Lcom/transsion/camera/feature/setting/aizoomsr/AIZoomSR;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/setting/aizoomsr/AIZoomSR;->onValueChanged(Ljava/lang/String;)V

    .line 75
    sget-object p1, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCreateEntryView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->updateHintVisibility(Z)V

    return-void
.end method

.method private synthetic lambda$hideIcon$2()V
    .registers 2

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mAIZoomSRIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$new$3(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "key_camera_zoom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "on"

    if-nez v0, :cond_24

    const-string v0, "key_ai_zoom_sr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_23

    .line 196
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mAIZoomSRIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_23

    .line 197
    check-cast p2, Ljava/lang/CharSequence;

    .line 198
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 197
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_23
    :goto_23
    return-void

    .line 188
    :cond_24
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sget p2, Lcom/transsion/camera/utils/SettingInfo;->AI_FRAME_MAX_ZOOM:I

    if-lt p1, p2, :cond_30

    const/4 p1, 0x1

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    :goto_31
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mNeedShowIcon:Z

    .line 189
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mLastState:Ljava/lang/String;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mDeviceSetting:Lcom/transsion/camera/feature/setting/aizoomsr/AIZoomSR;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/aizoomsr/AIZoomSR;->getSettingValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_56

    .line 190
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mDeviceSetting:Lcom/transsion/camera/feature/setting/aizoomsr/AIZoomSR;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/aizoomsr/AIZoomSR;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mLastState:Ljava/lang/String;

    .line 191
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mDeviceSetting:Lcom/transsion/camera/feature/setting/aizoomsr/AIZoomSR;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/aizoomsr/AIZoomSR;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->updateHintVisibility(Z)V

    .line 193
    :cond_56
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->updateIconVisibility()V

    return-void
.end method

.method private synthetic lambda$showIcon$1()V
    .registers 1

    .line 137
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->doShowIcon()V

    return-void
.end method

.method private showHint()V
    .registers 5

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-nez v0, :cond_23

    .line 100
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/16 v1, 0x67

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 101
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$string;->ai_zoom_on_hint:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 106
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_2c

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_2c
    return-void
.end method

.method private showIcon()V
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mAIZoomSRIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 134
    :cond_9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_17

    .line 135
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->doShowIcon()V

    return-void

    .line 137
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateHintVisibility(Z)V
    .registers 2

    if-eqz p1, :cond_6

    .line 217
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->showHint()V

    return-void

    .line 219
    :cond_6
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->hideHint()V

    return-void
.end method

.method private updateIconVisibility()V
    .registers 4

    .line 207
    sget-object v0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIconVisibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mNeedShowIcon:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 208
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mNeedShowIcon:Z

    if-eqz v0, :cond_26

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->isConflictUIShowing()Z

    move-result v0

    if-nez v0, :cond_26

    .line 209
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->showIcon()V

    return-void

    .line 212
    :cond_26
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->hideIcon()V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    .line 61
    new-instance p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mAIZoomSRIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 62
    sget p2, Lcom/transsion/camera/R$id;->ai_zoom_sr_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mAIZoomSRIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget p2, Lcom/transsion/camera/R$drawable;->ic_ai_zoom_sr_selector:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mAIZoomSRIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mAIZoomSRIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mAIZoomSRIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance p2, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mAIZoomSRIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 162
    const-string p0, "key_ai_zoom_sr"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mDeviceSetting:Lcom/transsion/camera/feature/setting/aizoomsr/AIZoomSR;

    if-nez p0, :cond_7

    .line 168
    const-string p0, "off"

    return-object p0

    .line 170
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/aizoomsr/AIZoomSR;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 6

    .line 261
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->notifyCameraOperateAction(I)V

    .line 262
    sget-object v0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraOperateAction action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d7

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_d0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_cc

    const/16 v1, 0xff

    const/16 v2, 0x80

    if-eq p1, v1, :cond_c8

    const/16 v1, 0xb

    const/16 v3, 0x40

    if-eq p1, v1, :cond_c4

    const/16 v1, 0xc

    if-eq p1, v1, :cond_c0

    const/16 v1, 0x24

    const/16 v3, 0x8

    if-eq p1, v1, :cond_bc

    const/16 v1, 0x25

    if-eq p1, v1, :cond_b8

    const/16 v1, 0x30

    const/4 v3, 0x4

    if-eq p1, v1, :cond_b4

    const/16 v1, 0x31

    if-eq p1, v1, :cond_b0

    const/16 v1, 0xcf

    const/4 v3, 0x2

    if-eq p1, v1, :cond_ac

    const/16 v1, 0xd0

    if-eq p1, v1, :cond_a8

    const/16 v1, 0xd2

    const/16 v3, 0x100

    if-eq p1, v1, :cond_a4

    const/16 v1, 0xd3

    if-eq p1, v1, :cond_a0

    const/16 v1, 0xe9

    if-eq p1, v1, :cond_9c

    const/16 v1, 0xea

    if-eq p1, v1, :cond_c8

    const/16 v1, 0xed

    if-eq p1, v1, :cond_98

    const/16 v1, 0xee

    if-eq p1, v1, :cond_94

    const/16 v0, 0x183

    const/16 v1, 0x400

    if-eq p1, v0, :cond_90

    const/16 v0, 0x184

    if-eq p1, v0, :cond_8c

    const/16 v0, 0x200

    const/16 v1, 0x10

    packed-switch p1, :pswitch_data_e6

    return-void

    .line 318
    :pswitch_7c
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->clearConflictUIFlag(I)V

    return-void

    .line 315
    :pswitch_80
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->addConflictUIFlag(I)V

    return-void

    .line 324
    :pswitch_84
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->clearConflictUIFlag(I)V

    return-void

    .line 321
    :pswitch_88
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->addConflictUIFlag(I)V

    return-void

    .line 336
    :cond_8c
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->clearConflictUIFlag(I)V

    return-void

    .line 333
    :cond_90
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->addConflictUIFlag(I)V

    return-void

    .line 306
    :cond_94
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->clearConflictUIFlag(I)V

    return-void

    .line 303
    :cond_98
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->addConflictUIFlag(I)V

    return-void

    .line 290
    :cond_9c
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->addConflictUIFlag(I)V

    return-void

    .line 300
    :cond_a0
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->clearConflictUIFlag(I)V

    return-void

    .line 297
    :cond_a4
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->addConflictUIFlag(I)V

    return-void

    .line 312
    :cond_a8
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->clearConflictUIFlag(I)V

    return-void

    .line 309
    :cond_ac
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->addConflictUIFlag(I)V

    return-void

    .line 281
    :cond_b0
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->clearConflictUIFlag(I)V

    return-void

    .line 278
    :cond_b4
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->addConflictUIFlag(I)V

    return-void

    .line 330
    :cond_b8
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->clearConflictUIFlag(I)V

    return-void

    .line 327
    :cond_bc
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->addConflictUIFlag(I)V

    return-void

    .line 287
    :cond_c0
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->clearConflictUIFlag(I)V

    return-void

    .line 284
    :cond_c4
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->addConflictUIFlag(I)V

    return-void

    .line 294
    :cond_c8
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->clearConflictUIFlag(I)V

    return-void

    .line 275
    :cond_cc
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->updateIconVisibility()V

    return-void

    .line 271
    :cond_d0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->hideIcon()V

    .line 272
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->clearAllConflictUIFlag()V

    return-void

    .line 265
    :cond_d7
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mDeviceSetting:Lcom/transsion/camera/feature/setting/aizoomsr/AIZoomSR;

    if-eqz p1, :cond_e2

    .line 266
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/aizoomsr/AIZoomSR;->isDisabled()Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mNeedShowIcon:Z

    .line 268
    :cond_e2
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->updateIconVisibility()V

    return-void

    :pswitch_data_e6
    .packed-switch 0x17
        :pswitch_88
        :pswitch_84
        :pswitch_80
        :pswitch_7c
    .end packed-switch
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mAIZoomSRIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    .line 236
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_8
    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 175
    check-cast p1, Lcom/transsion/camera/feature/setting/aizoomsr/AIZoomSR;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mDeviceSetting:Lcom/transsion/camera/feature/setting/aizoomsr/AIZoomSR;

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mAIZoomSRIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_7

    .line 125
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_7
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 4

    .line 180
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 181
    const-string v0, "key_camera_zoom"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 182
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 225
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_19

    .line 227
    const-string v1, "key_camera_zoom"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 230
    :cond_19
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;->mUIHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method
