.class public Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final DEFAULT_VALUE:Ljava/lang/String; = "on"

.field private static final SETTING_KEY:Ljava/lang/String; = "key_google_lens"

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VALUE_OFF:Ljava/lang/String; = "off"

.field private static final VALUE_ON:Ljava/lang/String; = "on"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mGoogleLensApi:Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;

.field private mLensShowState:Z

.field private mLensStatus:I

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;)Landroid/app/Activity;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGoogleLensApi(Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;)Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mGoogleLensApi:Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckLensStatus(Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->checkLensStatus(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshGoogleLens(Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->refreshGoogleLens()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateValueAndSupport(Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->updateValueAndSupport()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GoogleLens"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x1

    .line 55
    iput v0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mLensStatus:I

    .line 61
    new-instance v0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens$1;-><init>(Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method private checkLensStatus(Landroid/content/Context;)V
    .registers 4

    .line 146
    sget-object v0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "checkLensStatus"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_f

    .line 148
    const-string p0, "checkLensStatus, context is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 152
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mGoogleLensApi:Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;

    if-nez v0, :cond_1a

    .line 153
    new-instance v0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mGoogleLensApi:Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;

    .line 155
    :cond_1a
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mGoogleLensApi:Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;

    invoke-interface {p1}, Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;->checkLensStatus()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mLensStatus:I

    return-void
.end method

.method private initActivityField(Landroid/content/Context;)V
    .registers 3

    .line 138
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_c

    .line 139
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "context is not instanceof Activity"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 142
    :cond_c
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private initGoogleLens(Landroid/content/Context;)V
    .registers 4

    if-nez p1, :cond_a

    .line 119
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "context is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 122
    :cond_a
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mGoogleLensSupport:Z

    if-nez v0, :cond_1a

    .line 123
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "GoogleLens is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 127
    :cond_1a
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->initActivityField(Landroid/content/Context;)V

    .line 129
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->checkLensStatus(Landroid/content/Context;)V

    .line 130
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->updateValueAndSupport()V

    .line 131
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->refreshGoogleLens()V

    .line 133
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_check_lens_status"

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 134
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_google_lens_click"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private refreshGoogleLens()V
    .registers 6

    .line 226
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-nez v0, :cond_e

    .line 228
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "refreshGoogleLens callback is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 232
    :cond_e
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 233
    sget-object v2, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshGoogleLens value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mLensStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mLensStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 235
    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_41

    iget v1, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mLensStatus:I

    if-nez v1, :cond_41

    const/4 v1, 0x1

    goto :goto_42

    :cond_41
    move v1, v2

    .line 238
    :goto_42
    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mLensShowState:Z

    if-eq v3, v1, :cond_4f

    .line 239
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mLensShowState:Z

    .line 240
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p0, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_4f
    return-void
.end method

.method private updateValueAndSupport()V
    .registers 4

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 160
    const-string v1, "on"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget v2, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mLensStatus:I

    if-nez v2, :cond_14

    .line 162
    const-string v2, "off"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_14
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic forceApplyValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic forceUpdateValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 194
    const-string p0, "key_google_lens"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic getSeekBarValue(I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSeekBarValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .registers 1

    .line 189
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTempSettingValue()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getTempSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 4

    .line 112
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 114
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->initGoogleLens(Landroid/content/Context;)V

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 178
    sget-object v0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue], platformSupportedValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " default value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 181
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 182
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 183
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 5

    .line 206
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 207
    sget-object v0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onGoogleLensValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->refreshGoogleLens()V

    :cond_26
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 199
    sget-object p3, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "overrideValues headerKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " currentValue: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 1

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 2

    .line 256
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->checkLensStatus(Landroid/content/Context;)V

    .line 257
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->updateValueAndSupport()V

    .line 258
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->refreshGoogleLens()V

    return-void
.end method

.method public bridge synthetic setRealZoomValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRealZoomValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V
    .registers 5

    .line 217
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 218
    sget-object v0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSettingDataCallback settingDataCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1e

    .line 221
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->refreshGoogleLens()V

    :cond_1e
    return-void
.end method

.method public unInit()V
    .registers 4

    .line 169
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mActivity:Landroid/app/Activity;

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_check_lens_status"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_google_lens_click"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
