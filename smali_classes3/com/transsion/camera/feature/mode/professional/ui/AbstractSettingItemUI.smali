.class public abstract Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$MySettingChangeListener;,
        Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SettingResultCallbackImpl;,
        Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SeekBarViewStateCallbackImpl;,
        Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$PopupOptionStateCallbackImpl;
    }
.end annotation


# static fields
.field private static final CLICK_INTERVAL:J = 0x190L

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static mLastSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAutoSwitchIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field protected mCurrentEntryValue:Ljava/lang/String;

.field protected mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected mEnable:Z

.field protected mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

.field private mGraduationView:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;

.field private mGraduationViewContainer:Landroid/widget/FrameLayout;

.field private mIsSeekBar:Z

.field protected mItemCallBack:Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;

.field private mLastClick:J

.field protected mPopupOptionsControl:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

.field private mProParamsHelper:Lcom/transsion/camera/feature/mode/professional/helper/ProParamsHelper;

.field private mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

.field protected mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field protected mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mValueChangeListener:Lcom/transsion/camera/app/ui/widget/IValueChangedListener;


# direct methods
.method public static synthetic $r8$lambda$-VxfG0EvUrJUhYlB0LX_iv91D-I(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->lambda$showScrollerIfNeed$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6wZdzHzoe0tfMFeDbueYtl7lk_g(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->lambda$showScrollerIfNeed$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c5ppD3pZP25MVServxCPiyYg3Yk(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->lambda$setupEntryView$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAutoSwitchIcon(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mAutoSwitchIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScrollerView(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;)Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 52
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbstractSettingItemUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 56
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mLastClick:J

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mIsSeekBar:Z

    .line 76
    new-instance v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$MySettingChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$MySettingChangeListener;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEnable:Z

    .line 132
    new-instance v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$1;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mValueChangeListener:Lcom/transsion/camera/app/ui/widget/IValueChangedListener;

    return-void
.end method

.method private createSupportEntries()Z
    .registers 6

    .line 225
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getSupport()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 227
    sget-object p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mDeviceSetting\'s support is null!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 231
    :cond_f
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    .line 232
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentStreamIds()[I

    move-result-object v3

    .line 234
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v4, v2, v3, v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->createSupportedEntries(Ljava/lang/String;[ILjava/util/List;)V

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 236
    array-length v0, v0

    if-nez v0, :cond_44

    .line 237
    sget-object v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "support value is null! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_44
    const/4 p0, 0x1

    return p0
.end method

.method private fastClick()Z
    .registers 5

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mLastClick:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 p0, 0x1

    return p0

    .line 316
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mLastClick:J

    const/4 p0, 0x0

    return p0
.end method

.method private getSettingValue()Ljava/lang/String;
    .registers 1

    .line 263
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getStartIndex()I
    .registers 3

    .line 477
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_exposure_time"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 478
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_iso"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 479
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_manual_white_balance"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_35

    .line 481
    :cond_25
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "key_manual_focus"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_33

    const/4 p0, 0x2

    return p0

    :cond_33
    const/4 p0, 0x0

    return p0

    :cond_35
    :goto_35
    const/4 p0, 0x1

    return p0
.end method

.method private getSupport()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 270
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private hideIcon()V
    .registers 2

    .line 540
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mAutoSwitchIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 541
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mAutoSwitchIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method private initScrollerDataList([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;",
            ">;"
        }
    .end annotation

    .line 488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 489
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getStartIndex()I

    move-result v1

    if-eqz p1, :cond_85

    if-eqz p2, :cond_85

    .line 490
    array-length v2, p1

    array-length v3, p2

    if-ne v2, v3, :cond_85

    move v2, v1

    .line 491
    :goto_12
    array-length v3, p1

    if-ge v2, v3, :cond_85

    .line 493
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_manual_focus"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "0"

    if-eqz v3, :cond_2d

    if-ne v2, v1, :cond_2d

    .line 494
    new-instance v3, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    aget-object v5, p2, v2

    invoke-direct {v3, v4, v5}, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f

    .line 495
    :cond_2d
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "key_exposure"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 496
    aget-object v3, p1, v2

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 497
    new-instance v3, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    const-string v4, "0.0"

    aget-object v5, p2, v2

    invoke-direct {v3, v4, v5}, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f

    .line 499
    :cond_4b
    new-instance v3, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aget-object v5, p2, v2

    invoke-direct {v3, v4, v5}, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f

    .line 501
    :cond_60
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_manual_white_balance"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 502
    new-instance v3, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    aget-object v4, p1, v2

    aget-object v5, p2, v2

    invoke-direct {v3, v4, v5}, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f

    .line 504
    :cond_76
    new-instance v3, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    aget-object v4, p1, v2

    aget-object v5, p2, v2

    invoke-direct {v3, v4, v5}, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :goto_7f
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_85
    return-object v0
.end method

.method private isShowing()Z
    .registers 2

    .line 383
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mGraduationViewContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    .line 384
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    return v0
.end method

.method private synthetic lambda$setupEntryView$0(Landroid/view/View;)V
    .registers 7

    .line 329
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_ba

    :cond_8
    if-nez p1, :cond_12

    .line 333
    sget-object p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mEntryView is null when clicked"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 336
    :cond_12
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->fastClick()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 337
    sget-object p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "ignore fast click!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 340
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mItemCallBack:Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;

    if-eqz v0, :cond_29

    .line 341
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;->onItemClickBefore(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 344
    :cond_29
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 345
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mIsSeekBar:Z

    if-eqz v1, :cond_59

    .line 346
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mPopupOptionsControl:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    if-eqz v1, :cond_38

    .line 347
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->dismissPopupWithoutAnimation()V

    .line 349
    :cond_38
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v1, :cond_47

    .line 350
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->showScrollerIfNeed(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)Z

    move-result v1

    goto :goto_80

    .line 352
    :cond_47
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mGraduationView:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getValue()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SeekBarViewStateCallbackImpl;

    invoke-direct {v4, p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SeekBarViewStateCallbackImpl;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->showIfNeed(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;)Z

    move-result v1

    goto :goto_80

    .line 356
    :cond_59
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mItemCallBack:Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;

    const/4 v2, 0x0

    if-eqz v1, :cond_61

    .line 357
    invoke-interface {v1, v2, v2, v2}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;->onSeekBarActionUp(ZZZ)V

    .line 359
    :cond_61
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v1

    .line 360
    array-length v1, v1

    const/4 v3, 0x5

    if-ge v1, v3, :cond_7f

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mPopupOptionsControl:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    if-eqz v1, :cond_7f

    .line 361
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getValue()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$PopupOptionStateCallbackImpl;

    invoke-direct {v4, p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$PopupOptionStateCallbackImpl;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->showPopupIfNeed(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;)Z

    move-result v1

    goto :goto_80

    :cond_7f
    move v1, v2

    :goto_80
    const/4 v2, 0x0

    if-eqz v1, :cond_9d

    .line 367
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getValue()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->updateEntryView(Ljava/lang/String;Z)V

    .line 368
    move-object v3, p1

    check-cast v3, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    sget v4, Lcom/transsion/camera/feature/mode/professional/R$color;->pro_wheel_view_text_color_highlight:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-interface {v3, v0}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->updateTitleColor(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 369
    invoke-interface {v3, v0}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->updateSubTitleAlpha(F)V

    goto :goto_af

    .line 371
    :cond_9d
    move-object v3, p1

    check-cast v3, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    sget v4, Lcom/transsion/camera/feature/mode/professional/R$color;->pro_wheel_view_text_color_normal:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-interface {v3, v0}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->updateTitleColor(I)V

    const v0, 0x3f19999a    # 0.6f

    .line 372
    invoke-interface {v3, v0}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->updateSubTitleAlpha(F)V

    .line 375
    :goto_af
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mItemCallBack:Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;

    if-eqz v0, :cond_ba

    .line 376
    check-cast p1, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mIsSeekBar:Z

    invoke-interface {v0, p1, p0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;->onItemClick(Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;ZZ)V

    :cond_ba
    :goto_ba
    return-void
.end method

.method private synthetic lambda$showScrollerIfNeed$1(Ljava/lang/String;)V
    .registers 3

    .line 420
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 421
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->calculateCenterPointX()V

    .line 422
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->scrollToPosition(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showScrollerIfNeed$2(Ljava/lang/String;)V
    .registers 3

    .line 465
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 466
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->calculateCenterPointX()V

    .line 467
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->scrollToPosition(Ljava/lang/String;)V

    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private shouldShowAutoIcon(Ljava/lang/String;)Z
    .registers 2

    .line 528
    const-string p0, "key_exposure_time"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1b

    const-string p0, "key_iso"

    .line 529
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1b

    const-string p0, "key_manual_white_balance"

    .line 530
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method private showIcon()V
    .registers 2

    .line 534
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mAutoSwitchIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    .line 535
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mAutoSwitchIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    return-void
.end method

.method private showScrollerIfNeed(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)Z
    .registers 18

    move-object/from16 v0, p0

    .line 391
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return v2

    .line 395
    :cond_8
    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->isShowing()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_21

    sget-object v1, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mLastSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    if-eqz v1, :cond_21

    .line 396
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v3

    goto :goto_22

    :cond_21
    move v1, v3

    :goto_22
    if-eqz v1, :cond_152

    .line 402
    sput-object p1, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mLastSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 403
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v4

    .line 404
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v5

    .line 405
    invoke-direct {v0, v4, v5}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->initScrollerDataList([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 406
    iget-object v6, v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mProParamsHelper:Lcom/transsion/camera/feature/mode/professional/helper/ProParamsHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/transsion/camera/feature/mode/professional/helper/ProParamsHelper;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 410
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "key_exposure"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_74

    .line 411
    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->hideIcon()V

    .line 413
    new-instance v4, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;

    invoke-direct {v4, v9, v3, v2, v7}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;-><init>(Ljava/lang/String;ZZI)V

    .line 414
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v3, v5, v4}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScope(Ljava/util/List;Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V

    .line 415
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setIsDurationAuto(Z)V

    .line 416
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 417
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCurrentItem(Ljava/lang/String;)V

    .line 419
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mAutoSwitchIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v4, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v2}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_14b

    .line 425
    :cond_74
    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->showIcon()V

    .line 426
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v8, "key_manual_focus"

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v15, 0x0

    if-eqz v6, :cond_b1

    .line 427
    new-instance v4, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;

    invoke-direct {v4, v9, v2, v2, v7}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;-><init>(Ljava/lang/String;ZZI)V

    .line 428
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v2, v5, v4}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScope(Ljava/util/List;Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V

    .line 430
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/camera/feature/mode/professional/R$drawable;->ic_manual_focus_infinity:I

    invoke-virtual {v2, v4, v15}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 432
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/transsion/camera/feature/mode/professional/R$drawable;->ic_manual_focus_infinity_highlight:I

    invoke-virtual {v4, v6, v15}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 434
    iget-object v6, v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    .line 435
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    .line 434
    invoke-virtual {v6, v8, v2, v4}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setDrawableScale(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_10b

    .line 436
    :cond_b1
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v8, "key_manual_white_balance"

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v8, -0x1

    if-eqz v6, :cond_fb

    move v6, v8

    .line 437
    new-instance v8, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;

    const/16 v13, 0x15e

    const/16 v14, 0x64

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x7

    invoke-direct/range {v8 .. v14}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;-><init>(Ljava/lang/String;ZZIII)V

    .line 438
    const-string v9, "K"

    invoke-virtual {v8, v9}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->setUnit(Ljava/lang/String;)V

    .line 439
    aget-object v9, v4, v3

    .line 440
    array-length v10, v4

    sub-int/2addr v10, v3

    aget-object v4, v4, v10

    .line 441
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-virtual {v9, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 442
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-virtual {v4, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 443
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v3, v2, v9, v8}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScope(IILcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V

    .line 444
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v2, v6, v15, v15}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setDrawableScale(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_10b

    :cond_fb
    move v6, v8

    .line 446
    new-instance v4, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;

    invoke-direct {v4, v9, v2, v3, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;-><init>(Ljava/lang/String;ZZI)V

    .line 447
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v2, v5, v4}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScope(Ljava/util/List;Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V

    .line 448
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v2, v6, v15, v15}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setDrawableScale(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 451
    :goto_10b
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mProParamsHelper:Lcom/transsion/camera/feature/mode/professional/helper/ProParamsHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/transsion/camera/feature/mode/professional/helper/ProParamsHelper;->isAutoSwitchOn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 452
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mAutoSwitchIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    .line 453
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setIsDurationAuto(Z)V

    if-nez v2, :cond_12f

    .line 456
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 457
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCurrentItem(Ljava/lang/String;)V

    goto :goto_141

    .line 460
    :cond_12f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v2, v7

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    .line 461
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCurrentItem(Ljava/lang/String;)V

    .line 464
    :goto_141
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mAutoSwitchIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v4, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, v2}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 470
    :goto_14b
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mValueChangeListener:Lcom/transsion/camera/app/ui/widget/IValueChangedListener;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setDurationChangedListener(Lcom/transsion/camera/app/ui/widget/IValueChangedListener;)V

    :cond_152
    return v1
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    .line 275
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 276
    instance-of p2, p1, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    if-eqz p2, :cond_12

    .line 277
    move-object p2, p1

    check-cast p2, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    .line 278
    invoke-interface {p2, v0}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->setEnabled(Z)V

    return-object p1

    .line 280
    :cond_12
    sget-object p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "SettingItem view must be implements IEntryViemw."

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method public doOnValueChanged(Ljava/lang/String;ZZ)V
    .registers 5

    .line 210
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    if-eqz p2, :cond_b

    .line 212
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p2, :cond_b

    .line 213
    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 217
    :cond_b
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mItemCallBack:Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;

    if-eqz p2, :cond_14

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-interface {p2, v0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;->onItemValueChange(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;)V

    .line 220
    :cond_14
    invoke-virtual {p0, p1, p3}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->updateEntryView(Ljava/lang/String;Z)V

    return-void
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

    .line 614
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKeys()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeys(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
    .registers 1

    .line 600
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 624
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    return-object p0
.end method

.method public abstract synthetic notifyCameraOperateAction(I)V
.end method

.method public setActionSound(Lcom/transsion/camera/utils/sound/IActionSound;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method public setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .registers 2

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 4

    .line 641
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_1f

    .line 643
    sget-object p1, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDeviceSetting is null! :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 647
    :cond_1f
    new-instance p1, Lcom/transsion/camera/feature/mode/professional/helper/ProParamsHelper;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/transsion/camera/feature/mode/professional/helper/ProParamsHelper;-><init>(Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mProParamsHelper:Lcom/transsion/camera/feature/mode/professional/helper/ProParamsHelper;

    .line 649
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 651
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->createSupportEntries()Z

    move-result p1

    if-nez p1, :cond_39

    return-void

    .line 656
    :cond_39
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5f

    .line 658
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_56

    .line 659
    array-length v0, p1

    if-lez v0, :cond_56

    .line 660
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 662
    :cond_56
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_5f

    .line 663
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 667
    :cond_5f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_78

    .line 668
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 669
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 670
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    new-instance v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SettingResultCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SettingResultCallbackImpl;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    return-void

    .line 672
    :cond_78
    sget-object p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null! maybe flow is wrong!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 553
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    if-eqz p0, :cond_7

    .line 554
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->setEnabled(Z)V

    :cond_7
    return-void
.end method

.method protected setEntryViewAnim(Landroid/view/View;I)V
    .registers 8

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 180
    :cond_14
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-float p2, p2

    const/4 v0, 0x1

    .line 181
    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const-string/jumbo p2, "translationY"

    invoke-static {p1, p2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v3, 0x96

    .line 182
    invoke-virtual {p2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 183
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v1, 0x2

    .line 184
    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 185
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p2, v0, v2

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 186
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$2;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$2;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setGraduationView(Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;)V
    .registers 2

    .line 514
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mGraduationView:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;

    const/4 p1, 0x1

    .line 515
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mIsSeekBar:Z

    return-void
.end method

.method public setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V
    .registers 2

    return-void
.end method

.method public setIsEnable(Z)V
    .registers 5

    .line 576
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    if-eqz v0, :cond_3e

    .line 577
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEnable:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    .line 579
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->setEnable(Z)V

    .line 580
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/professional/R$color;->pro_wheel_view_text_color_normal:I

    .line 581
    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 580
    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->updateTitleColor(I)V

    goto :goto_36

    :cond_20
    const/4 p1, 0x0

    .line 583
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->setEnable(Z)V

    .line 584
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/professional/R$color;->pro_wheel_view_text_color_disable:I

    .line 585
    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 584
    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->updateTitleColor(I)V

    .line 587
    :goto_36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    const p1, 0x3f19999a    # 0.6f

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->updateSubTitleAlpha(F)V

    :cond_3e
    return-void
.end method

.method public setItemClickCallBack(Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;)V
    .registers 2

    .line 309
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mItemCallBack:Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;

    return-void
.end method

.method public setPopupOptionsControl(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;)V
    .registers 2

    .line 547
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mPopupOptionsControl:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    const/4 p1, 0x0

    .line 548
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mIsSeekBar:Z

    return-void
.end method

.method public setScroller(Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;Lcom/transsion/camera/app/ui/widget/RotateImageView;Landroid/widget/FrameLayout;)V
    .registers 4

    .line 521
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    .line 522
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mAutoSwitchIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 523
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mGraduationViewContainer:Landroid/widget/FrameLayout;

    const/4 p1, 0x1

    .line 524
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mIsSeekBar:Z

    return-void
.end method

.method public setSelected(Z)V
    .registers 4

    .line 560
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    if-eqz v0, :cond_37

    .line 561
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEnable:Z

    if-eqz p0, :cond_37

    const/4 p0, 0x0

    if-eqz p1, :cond_21

    .line 563
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/camera/feature/mode/professional/R$color;->pro_wheel_view_text_color_highlight:I

    .line 564
    invoke-virtual {p1, v1, p0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    .line 563
    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->updateTitleColor(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 565
    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->updateSubTitleAlpha(F)V

    return-void

    .line 567
    :cond_21
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/camera/feature/mode/professional/R$color;->pro_wheel_view_text_color_normal:I

    .line 568
    invoke-virtual {p1, v1, p0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    .line 567
    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->updateTitleColor(I)V

    const p0, 0x3f19999a    # 0.6f

    .line 569
    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->updateSubTitleAlpha(F)V

    :cond_37
    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 678
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .registers 2

    return-void
.end method

.method public setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
    .registers 2

    return-void
.end method

.method public setupEntryView()V
    .registers 5

    .line 322
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    if-nez v0, :cond_c

    .line 323
    sget-object p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mEntryView is null in setupEntryView."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v1, 0x1

    .line 326
    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->setEnabled(Z)V

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    check-cast v0, Landroid/view/View;

    const v2, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    new-instance v2, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;)V

    invoke-interface {v0, v2}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->updateEntryView(Ljava/lang/String;Z)V

    return-void
.end method

.method protected shouldShown()Z
    .registers 2

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p0

    .line 82
    array-length p0, p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_b

    return v0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public unInit()V
    .registers 3

    .line 629
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_d

    .line 630
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 631
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 633
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 634
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 636
    :cond_15
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    return-void
.end method

.method public updateEntryView(Ljava/lang/String;Z)V
    .registers 5

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    if-eqz v0, :cond_9

    .line 288
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->updateValue(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;)V

    .line 290
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mGraduationView:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;

    if-eqz v0, :cond_12

    if-eqz p2, :cond_12

    .line 292
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->updateValue(Ljava/lang/String;)V

    .line 296
    :cond_12
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->shouldShown()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 297
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    if-eqz p0, :cond_2a

    const/4 p1, 0x0

    .line 298
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->setVisibility(I)V

    return-void

    .line 301
    :cond_21
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    if-eqz p0, :cond_2a

    const/16 p1, 0x8

    .line 302
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->setVisibility(I)V

    :cond_2a
    return-void
.end method

.method public updateValue(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;)V
    .registers 3

    .line 593
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    if-eqz p0, :cond_7

    .line 594
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->updateValue(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;)V

    :cond_7
    return-void
.end method
