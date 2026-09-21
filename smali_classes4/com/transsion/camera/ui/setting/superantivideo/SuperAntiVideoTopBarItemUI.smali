.class Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;
    }
.end annotation


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TELE_LENS_RATE:I


# instance fields
.field private final mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mLastSupportSize:I

.field private mLongClickTriggered:Z

.field private volatile mNeedAnimation:Z

.field private final mResources:Landroid/content/res/Resources;

.field private final mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private final mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSupportChanged:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmLongClickTriggered(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mLongClickTriggered:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmLongClickTriggered(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mLongClickTriggered:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misTeleCamera(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->isTeleCamera(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtranslateItem(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;F)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->translateItem(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEntryValue(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->updateEntryValue(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTELE_LENS_RATE()I
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->TELE_LENS_RATE:I

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 54
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SuperAntiVideoTopBarItemUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 55
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_14

    const/16 v0, 0x2af7

    goto :goto_16

    :cond_14
    const/16 v0, 0x6d

    :goto_16
    sput v0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->TELE_LENS_RATE:I

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 6

    .line 70
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 58
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    const/16 v2, 0x67

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 59
    new-instance v0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;

    .line 62
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mLongClickTriggered:Z

    .line 65
    iput v0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mLastSupportSize:I

    .line 71
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mResources:Landroid/content/res/Resources;

    .line 72
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 73
    sget-object p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[SuperAntiVideoTopBarItemUI]!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;)Landroid/view/View;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;)Landroid/view/View;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method private getZoomRatio(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 257
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 258
    sget-object p1, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getZoomValue] zoomValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 260
    rem-int/lit16 p1, p0, 0x2710

    const-string v0, "%d"

    if-nez p1, :cond_31

    .line 261
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p0, p0, 0x2710

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 263
    :cond_31
    rem-int/lit16 p1, p0, 0x3e8

    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_4e

    add-int/lit16 p0, p0, -0x1f4

    .line 265
    rem-int/lit16 p1, p0, 0x2710

    if-nez p1, :cond_4e

    .line 266
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p0, p0, 0x2710

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 269
    :cond_4e
    div-int/lit16 p1, p0, 0x3e8

    rem-int/lit16 v1, p1, 0x3e8

    if-nez v1, :cond_65

    .line 270
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p0, p0, 0x2710

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 272
    :cond_65
    rem-int/lit8 p1, p1, 0xa

    if-lez p1, :cond_80

    .line 274
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p0, p0, 0x2710

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%d.%d"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 276
    :cond_80
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p0, p0, 0x2710

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isTeleCamera(Ljava/lang/String;)Z
    .registers 4

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    .line 245
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    return v1

    .line 248
    :cond_12
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 249
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 250
    :cond_26
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sget p1, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->TELE_LENS_RATE:I

    if-le p0, p1, :cond_2f

    return v1

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method private needShowHint()Z
    .registers 2

    .line 282
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v0, 0x1

    if-nez p0, :cond_6

    return v0

    .line 285
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 287
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eq p0, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    return v0
.end method

.method private showAntiHint(Ljava/lang/String;)V
    .registers 6

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_5f

    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_60

    goto :goto_32

    :sswitch_12
    const-string v0, "super"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_32

    :cond_1b
    const/4 v3, 0x2

    goto :goto_32

    :sswitch_1d
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_32

    :cond_26
    move v3, v2

    goto :goto_32

    :sswitch_28
    const-string v0, "ai"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_32

    :cond_31
    move v3, v1

    :goto_32
    packed-switch v3, :pswitch_data_6e

    goto :goto_3e

    .line 81
    :pswitch_36
    sget v1, Lcom/transsion/camera/R$string;->super_anti_video_super_value_on_tips:I

    goto :goto_3e

    .line 87
    :pswitch_39
    sget v1, Lcom/transsion/camera/R$string;->super_anti_video_normal_value_on_tips:I

    goto :goto_3e

    .line 84
    :pswitch_3c
    sget v1, Lcom/transsion/camera/R$string;->ai_anti_video_value_on_tips:I

    .line 92
    :goto_3e
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v1, :cond_49

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    :cond_49
    const-string v0, ""

    :goto_4b
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 94
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 95
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_5f
    return-void

    :sswitch_data_60
    .sparse-switch
        0xc28 -> :sswitch_28
        0xddf -> :sswitch_1d
        0x68b6f7b -> :sswitch_12
    .end sparse-switch

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_39
        :pswitch_36
    .end packed-switch
.end method

.method private translateItem(F)V
    .registers 6

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 227
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    const-string p1, "translationX"

    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 228
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3f28f5c3    # 0.66f

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-wide/16 v0, 0x50

    .line 229
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 230
    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 231
    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_36

    .line 232
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_36
    return-void
.end method

.method private updateEntryValue(Z)V
    .registers 5

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getSupport()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    .line 154
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_12

    :cond_11
    move p1, v0

    .line 155
    :goto_12
    iget v1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mLastSupportSize:I

    if-eq v1, p1, :cond_17

    const/4 v0, 0x1

    :cond_17
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mSupportChanged:Z

    .line 156
    sget-object v0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEntryValueList lastSupportSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mLastSupportSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newSupportSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSupportChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mSupportChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 158
    iput p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mLastSupportSize:I

    .line 159
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mSupportChanged:Z

    if-eqz p1, :cond_51

    .line 160
    new-instance p1, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;)V

    invoke-static {p1}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_51
    return-void
.end method


# virtual methods
.method public doOnStatusChanged(Ljava/lang/String;)V
    .registers 4

    .line 324
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->doOnStatusChanged(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->isValueEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 326
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mNeedAnimation:Z

    if-eqz p1, :cond_14

    .line 327
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateEntryForStatusChanged()V

    :cond_14
    return-void
.end method

.method protected doOnValueChanged()V
    .registers 4

    .line 133
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "super"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v2, 0x7b

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_1b

    .line 136
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v2, 0xd6

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 139
    :goto_1b
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->needShowHint()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 140
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 141
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ai"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 142
    :cond_43
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->showAntiHint(Ljava/lang/String;)V

    return-void

    .line 144
    :cond_4b
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_54

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_54
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

    .line 292
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->notifyCameraOperateAction(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 294
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v0, "key_camera_zoom"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->isTeleCamera(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->updateEntryValue(Z)V

    return-void

    :cond_16
    const/16 v0, 0x149

    if-ne p1, v0, :cond_24

    .line 296
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_51

    .line 297
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    :cond_24
    const/16 v0, 0x15a

    if-ne p1, v0, :cond_3b

    .line 300
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    if-eqz p0, :cond_51

    .line 301
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/app/common/R$dimen;->top_bar_anti_video_1080_translate:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void

    :cond_3b
    const/16 v0, 0x15b

    if-ne p1, v0, :cond_51

    .line 304
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    if-eqz p0, :cond_51

    .line 305
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/app/common/R$dimen;->top_bar_anti_video_4K_translate:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_51
    return-void
.end method

.method protected onStatusChangedOnCalledThread(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 333
    sget-object v0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChangedOnCalledThread key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mCurrentEntryValue: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 335
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mNeedAnimation:Z

    return-void
.end method

.method public bridge synthetic setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 3

    .line 312
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 313
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p1, :cond_22

    .line 314
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "super"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 315
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p1, 0x7b

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 317
    :cond_1b
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p1, 0xd6

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_22
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

    .line 118
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 119
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 120
    const-string v0, "key_camera_zoom"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 121
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_super_anti_video"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 122
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_video_quality"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 123
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_flash"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 124
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_flash_facade"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 125
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_wide_camera_item_seleccted"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 126
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_real_zoom_value"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 127
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_wide_camera_touch_event"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 128
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "wide_camera"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_9

    .line 102
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 104
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_camera_zoom"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_anti_video"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_video_quality"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_flash"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_flash_facade"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_item_seleccted"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_real_zoom_value"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_touch_event"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "wide_camera"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 113
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->unInit()V

    return-void
.end method
