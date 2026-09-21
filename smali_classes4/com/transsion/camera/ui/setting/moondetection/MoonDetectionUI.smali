.class public Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI$MoonDetectionSettingCallbackImpl;
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "key_moon_detection"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentDate:I

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mIsAsdShowing:Z

.field private final mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field

.field private final mMoonAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mResources:Landroid/content/res/Resources;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method public static synthetic $r8$lambda$0m_akhkNr3yTTXb-8PcHF4XEDE0(Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentDate(Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->mCurrentDate:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentDate(Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->mCurrentDate:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideMoonAsd(Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->hideMoonAsd()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowMoonAsd(Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->showMoonAsd()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MoonDetectionUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 4

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 26
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->mMoonAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 28
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->mIsAsdShowing:Z

    .line 31
    new-instance v0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 37
    iput v1, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->mCurrentDate:I

    .line 62
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private hideMoonAsd()V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_c

    .line 137
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->mMoonAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->mIsAsdShowing:Z

    :cond_c
    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 32
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->mIsAsdShowing:Z

    if-nez p0, :cond_9

    const-string p0, "key_camera_zoom"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    :cond_9
    return-void
.end method

.method private showMoonAsd()V
    .registers 5

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->mIsAsdShowing:Z

    if-nez v0, :cond_2d

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->mMoonAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$string;->super_moon_mode_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->mMoonAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$drawable;->ic_asd_super_moon:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->mMoonAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->mIsAsdShowing:Z

    :cond_2d
    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

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

    .line 89
    const-string p0, "key_moon_detection"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 97
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 1

    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

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
    .registers 4

    .line 111
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_c

    .line 113
    sget-object p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 116
    :cond_c
    new-instance v0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI$MoonDetectionSettingCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI$MoonDetectionSettingCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 3

    .line 121
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 122
    const-string v0, "key_camera_zoom"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public setupEntryView()V
    .registers 1

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_camera_zoom"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 105
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->hideMoonAsd()V

    .line 106
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method
