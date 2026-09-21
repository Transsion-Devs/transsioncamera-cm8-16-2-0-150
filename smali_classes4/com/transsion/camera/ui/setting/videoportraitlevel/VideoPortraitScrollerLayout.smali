.class public Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;


# static fields
.field private static KEY_VIDE_PORTRAIT_LAST_VALUE:Ljava/lang/String;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mCurrentValue:Ljava/lang/String;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private final mDurationChangedListener:Lcom/transsion/camera/app/ui/widget/IValueChangedListener;

.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mIsPortraitOn:Z

.field private mOrientation:I

.field private mPortraitIcon:Landroid/widget/ImageView;

.field private mPortraitLevelMap:Ljava/util/HashMap;

.field private mScrollerDurationRoot:Landroid/widget/RelativeLayout;

.field private mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mVideoPortraitSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mVideoPortraitSwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;


# direct methods
.method public static synthetic $r8$lambda$7B5IDSMxctl-6lJQ4ucZt3FS3qg(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->lambda$updateSettingUILayout$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$9GNAIDgxPjWG5Sqp7KoO8SSNogo(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->lambda$updateSettingUILayout$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$JgK49jOZ_dyb3L7YcSk3lwOCAgU(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->lambda$updateSettingUILayout$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$gQW5bWXZ2ADreHirFRe0yJ4sw1A(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->lambda$updateSettingUILayout$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIsPortraitOn(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mIsPortraitOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPortraitIcon(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;)Landroid/widget/ImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mPortraitIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScrollerRulerView(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;)Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoPortraitSetting(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mVideoPortraitSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentValue(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mCurrentValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$monPortraitButtonSwitch(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->onPortraitButtonSwitch(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenPortraitBySeekBar(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->openPortraitBySeekBar(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VPScrollerLayout"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 53
    const-string v0, "last_video_portrait_value"

    sput-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->KEY_VIDE_PORTRAIT_LAST_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 60
    iput p2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mOrientation:I

    .line 62
    new-instance p1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout$1;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mPortraitLevelMap:Ljava/util/HashMap;

    .line 344
    new-instance p1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout$3;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout$3;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mDurationChangedListener:Lcom/transsion/camera/app/ui/widget/IValueChangedListener;

    return-void
.end method

.method private getLastFeatureValue()Ljava/lang/String;
    .registers 5

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    sget-object v2, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->KEY_VIDE_PORTRAIT_LAST_VALUE:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mVideoPortraitSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_12
    move-object v0, v1

    :goto_13
    if-nez v0, :cond_16

    goto :goto_17

    :cond_16
    move-object v1, v0

    :goto_17
    if-eqz v1, :cond_21

    .line 286
    const-string v2, "null"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    :cond_21
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mPortraitLevelMap:Ljava/util/HashMap;

    const-string v1, "f4.0"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 287
    :cond_2c
    sget-object p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastFeatureValue,value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1
.end method

.method private initDurationData(Ljava/util/List;)V
    .registers 6

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    if-eqz v0, :cond_25

    .line 130
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_1f

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mVideoPortraitSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 132
    new-instance v1, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;-><init>(Ljava/lang/String;ZZI)V

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScope(Ljava/util/List;Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V

    return-void

    .line 135
    :cond_1f
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScope(Ljava/util/List;I)V

    :cond_25
    return-void
.end method

.method private initPortraitUI()V
    .registers 5

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mVideoPortraitSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mVideoPortraitSwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v1

    .line 295
    const-string v2, "on"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "0"

    if-eqz v2, :cond_27

    .line 296
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mVideoPortraitSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 298
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mVideoPortraitSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 302
    :cond_27
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mIsPortraitOn:Z

    .line 303
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mPortraitIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_36

    .line 304
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 307
    :cond_36
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mIsPortraitOn:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setIsDurationAuto(Z)V

    .line 309
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mIsPortraitOn:Z

    if-eqz v3, :cond_47

    move-object v3, v0

    goto :goto_4b

    :cond_47
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->getLastFeatureValue()Ljava/lang/String;

    move-result-object v3

    :goto_4b
    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCurrentItem(Ljava/lang/String;)V

    .line 310
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 311
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mCurrentValue:Ljava/lang/String;

    .line 312
    sget-object p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initPortraitUI,blurValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateSettingUILayout$0()V
    .registers 3

    .line 149
    iget v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_a

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_c

    :cond_a
    add-int/lit16 v0, v0, -0xb4

    .line 153
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->rotateIndicator(I)V

    return-void
.end method

.method private synthetic lambda$updateSettingUILayout$1()V
    .registers 2

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/16 v0, -0x5a

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->rotateIndicator(I)V

    return-void
.end method

.method private synthetic lambda$updateSettingUILayout$2()V
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mOrientation:I

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_a

    :cond_8
    rsub-int p0, p0, 0xb4

    :goto_a
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->rotateIndicatorForVideoFlip(IZ)V

    return-void
.end method

.method private synthetic lambda$updateSettingUILayout$3(I)V
    .registers 4

    .line 219
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_17

    if-nez p1, :cond_17

    .line 220
    iget p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mOrientation:I

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_11

    const/16 p1, -0x5a

    goto :goto_18

    :cond_11
    const/16 v1, 0x10e

    if-ne p1, v1, :cond_18

    move p1, v0

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    .line 227
    :cond_18
    :goto_18
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->rotateIndicator(I)V

    return-void
.end method

.method private onPortraitButtonSwitch(Z)V
    .registers 8

    .line 252
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPortraitButtonSwitch, cameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mVideoPortraitSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", turnOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mIsPortraitOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 253
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mIsPortraitOn:Z

    if-ne v0, p1, :cond_33

    return-void

    .line 256
    :cond_33
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mIsPortraitOn:Z

    .line 258
    const-string v0, "key_video_portrait_ui"

    if-eqz p1, :cond_49

    .line 259
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->getLastFeatureValue()Ljava/lang/String;

    move-result-object v1

    .line 260
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v2, v0, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_68

    .line 262
    :cond_49
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz v1, :cond_5b

    .line 263
    sget-object v2, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->KEY_VIDE_PORTRAIT_LAST_VALUE:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mCurrentValue:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mVideoPortraitSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 266
    :cond_5b
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "0"

    .line 268
    :goto_68
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mPortraitIcon:Landroid/widget/ImageView;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setIsDurationAuto(Z)V

    .line 270
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCurrentItem(Ljava/lang/String;)V

    .line 271
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 272
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mCurrentValue:Ljava/lang/String;

    .line 273
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mVideoPortraitSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method private openPortraitBySeekBar(Ljava/lang/String;)V
    .registers 6

    .line 240
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openPortraitBySeekBar, mIsBlurOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mIsPortraitOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 241
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mIsPortraitOn:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    return-void

    .line 244
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_video_portrait_ui"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v3, "on"

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mIsPortraitOn:Z

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mPortraitIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mIsPortraitOn:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setIsDurationAuto(Z)V

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCurrentItem(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public enableUIStatus(Z)V
    .registers 5

    .line 316
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUIStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 317
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mPortraitIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_1d

    .line 318
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1d
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 80
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 81
    sget v0, Lcom/transsion/camera/R$id;->video_portrait_blur_icon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mPortraitIcon:Landroid/widget/ImageView;

    .line 82
    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout$2;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    sget v0, Lcom/transsion/camera/R$id;->scroller_duration_root:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerDurationRoot:Landroid/widget/RelativeLayout;

    .line 97
    sget v0, Lcom/transsion/camera/R$id;->video_portrait_scroller_duration_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    .line 98
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_38

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setEdgeFadeEnable(Z)V

    goto :goto_4c

    .line 101
    :cond_38
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_fading_edge_length:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFadingEdgeLength(I)V

    .line 106
    :goto_4c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setOnTouchMoveListener(Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;)V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mPortraitIcon:Landroid/widget/ImageView;

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mDurationChangedListener:Lcom/transsion/camera/app/ui/widget/IValueChangedListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setDurationChangedListener(Lcom/transsion/camera/app/ui/widget/IValueChangedListener;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public onTouchMoveStart()V
    .registers 2

    .line 363
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0xbe

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onTouchMoveStop()V
    .registers 2

    .line 369
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0xbf

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public registerSettingDevice()V
    .registers 8

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->BLUR_LEVEL_DATA:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_20

    aget-object v4, v1, v3

    .line 123
    new-instance v5, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iget-object v6, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mPortraitLevelMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v4, v6}, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 125
    :cond_20
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->initDurationData(Ljava/util/List;)V

    return-void
.end method

.method public setCameraOperate(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 236
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 3

    .line 278
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mVideoPortraitSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 279
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mVideoPortraitSwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 280
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 373
    iput p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mOrientation:I

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 324
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public unregisterSettingDevice()V
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->destroy()V

    return-void
.end method

.method public updateFeatureUI(Z)V
    .registers 2

    if-eqz p1, :cond_a

    .line 329
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->initPortraitUI()V

    const/4 p1, 0x0

    .line 330
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_a
    const/16 p1, 0x8

    .line 332
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 4

    .line 337
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mPortraitIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_9

    .line 338
    sget v1, Lcom/transsion/camera/R$drawable;->btn_video_portrait_scroller_switch_lowlight:I

    goto :goto_b

    :cond_9
    sget v1, Lcom/transsion/camera/R$drawable;->btn_video_portrait_scroller_switch:I

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 341
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->updateLowLight(Z)V

    return-void
.end method

.method public updateSettingUILayout(I)V
    .registers 8

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerDurationRoot:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_250

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    if-nez v0, :cond_a

    goto/16 :goto_250

    .line 144
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerDurationRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 146
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mPortraitIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 147
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v3, :cond_32

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerDurationRoot:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_24b

    :cond_32
    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x4

    if-eq p1, v3, :cond_195

    if-eq p1, v5, :cond_195

    if-ne p1, v4, :cond_3d

    goto/16 :goto_195

    :cond_3d
    const/4 v3, 0x7

    if-ne v3, p1, :cond_11c

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->flip_video_portrait_feature_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 182
    iget v3, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mOrientation:I

    if-nez v3, :cond_69

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->flip_video_portrait_scroller_margin_top_0_degree:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_scroller_icon_margin_top_0_degree:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_bb

    :cond_69
    const/16 v4, 0x5a

    if-ne v3, v4, :cond_86

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->flip_video_portrait_scroller_margin_top_90_degree:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_scroller_icon_margin_top_90_degree:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_bb

    :cond_86
    const/16 v4, 0x10e

    if-ne v3, v4, :cond_a3

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->flip_video_portrait_scroller_margin_top_270_degree:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 190
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_scroller_icon_margin_top_270_degree:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_bb

    .line 192
    :cond_a3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->flip_video_portrait_scroller_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_scroller_icon_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 195
    :goto_bb
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_scroller_margin_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->flip_video_portrait_scroller_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_scroller_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_scroller_icon_margin_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 199
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->flip_video_portrait_blur_icon_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 200
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->flip_video_portrait_blur_icon_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 201
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mPortraitIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerDurationRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerDurationRoot:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_24b

    .line 206
    :cond_11c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_feature_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_level_bar_padding_start:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_scroller_margin_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_scroller_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_scroller_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_scroller_icon_margin_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_blur_icon_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_blur_icon_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 214
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mPortraitIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerDurationRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerDurationRoot:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_24b

    :cond_195
    :goto_195
    const/4 v3, 0x0

    .line 159
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-eq p1, v5, :cond_1d1

    if-ne p1, v4, :cond_19d

    goto :goto_1d1

    .line 167
    :cond_19d
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_scroller_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_scroller_margin_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_scroller_icon_margin_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 170
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/R$dimen;->video_portrait_scroller_view_expand_margin_left:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setAdjustLeftMargin(I)V

    goto :goto_204

    .line 162
    :cond_1d1
    :goto_1d1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_scroller_width_hover:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_scroller_view_margin_left_hover:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_scroller_icon_margin_left_hover:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 165
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/R$dimen;->video_portrait_scroller_view_lr_hover_margin_left:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setAdjustLeftMargin(I)V

    .line 172
    :goto_204
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_feature_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_scroller_height_expand:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_blur_icon_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_blur_icon_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 176
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mPortraitIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerDurationRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerDurationRoot:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 232
    :goto_24b
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->update(I)V

    :cond_250
    :goto_250
    return-void
.end method
