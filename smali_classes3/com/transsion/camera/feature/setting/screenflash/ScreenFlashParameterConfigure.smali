.class public Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
.implements Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;


# static fields
.field private static final IGNORE_FRAME_COUNT:I = 0x6

.field private static final MAX_FRAME_COUNT:I = 0x2710

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private volatile mCachedFlashRequired:Z

.field private mCaptureState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mCountNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mFlashFireCallback:Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;

.field private mFlashRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFlashStateCallback:Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;

.field public mIsInitialize:Z

.field private mIsPreviewStart:Z

.field private mLedFlashSupported:Z

.field private mOnCameraChangeListener:Lcom/transsion/camera/app/common/ModuleTransferManager$OnCameraChangeListener;

.field private mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

.field private mScreenFlashFireSupported:Z

.field private mScreenFlashSupported:Z

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFlashFireCallback(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashFireCallback:Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenFlash(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenFlashFireSupported(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlashFireSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingDeviceRequester(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCachedFlashRequired(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCachedFlashRequired:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ScreenFlashParameterConfigure"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .registers 7

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCaptureState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mIsInitialize:Z

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCountNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 64
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mIsPreviewStart:Z

    .line 66
    new-instance v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;-><init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashStateCallback:Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;

    .line 239
    new-instance v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$2;-><init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mOnCameraChangeListener:Lcom/transsion/camera/app/common/ModuleTransferManager$OnCameraChangeListener;

    .line 98
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    .line 99
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashFireCallback:Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;

    .line 100
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 101
    iput-object p4, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private configParametersImpl(Lcom/transsion/camera/adapter/CameraParameters;)V
    .registers 8

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_flash"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mLedFlashSupported:Z

    const-string v3, "auto"

    const-string v4, "off"

    const-string v5, "on"

    if-nez v2, :cond_54

    .line 170
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    move-object v0, v4

    goto :goto_3a

    .line 172
    :cond_20
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_31

    move-object v0, v5

    :goto_2f
    move-object v1, v0

    goto :goto_3a

    :cond_31
    move-object v0, v4

    goto :goto_2f

    .line 180
    :cond_33
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3a

    move-object v0, v5

    .line 183
    :cond_3a
    :goto_3a
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configParameters ledFlashValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_70

    .line 186
    :cond_54
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_6b

    move-object v0, v5

    :goto_69
    move-object v1, v0

    goto :goto_6d

    :cond_6b
    move-object v0, v4

    goto :goto_69

    .line 195
    :cond_6d
    :goto_6d
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFlashMode(Ljava/lang/String;)V

    .line 198
    :goto_70
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters screenFlashValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setScreenFlashMode(Ljava/lang/String;)V

    return-void
.end method

.method private handleFlashRequiredState(Z)V
    .registers 5

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCaptureState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 261
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "drop the flash state when it is capturing"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 265
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 266
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "do nothing if it isn\'t auto mode"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 270
    :cond_28
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p1, :cond_56

    .line 271
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flash state is changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 274
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_56
    return-void
.end method

.method private isScreenFlashOn()Z
    .registers 2

    .line 256
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_screen_flash"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private resetCountNum()V
    .registers 2

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCountNum:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private setConfigParameters(Lcom/transsion/camera/adapter/CameraParameters;)V
    .registers 5

    if-eqz p1, :cond_23

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    const-string v0, "key_screen_flash"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 161
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters screenFlashValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setScreenFlashMode(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method private setScreenFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy;Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 231
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraProxy;->setFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isScreenFlashSupported()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 209
    :cond_9
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getCameraStateManager()Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mOnCameraChangeListener:Lcom/transsion/camera/app/common/ModuleTransferManager$OnCameraChangeListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;->addCameraChangeListener(Lcom/transsion/camera/app/common/ModuleTransferManager$OnCameraChangeListener;)V

    .line 211
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->processStateChange(Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 4

    .line 144
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlashSupported:Z

    const/4 v1, -0x1

    if-nez v0, :cond_d

    .line 145
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "screen flash is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 148
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCaptureState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 149
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "don\'t config parameters when it is capturing"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 154
    :cond_1d
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->setConfigParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    const/4 p0, 0x0

    return p0
.end method

.method public isFlashOpen()Z
    .registers 2

    .line 315
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "torch"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method isFlashRequired()Z
    .registers 1

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method isLedFlashSupport()Z
    .registers 1

    .line 283
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mLedFlashSupported:Z

    return p0
.end method

.method isScreenFlashFireSupport()Z
    .registers 1

    .line 305
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlashFireSupported:Z

    return p0
.end method

.method isScreenFlashSupport()Z
    .registers 1

    .line 279
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlashSupported:Z

    return p0
.end method

.method public isSupportFrontFlash()Z
    .registers 1

    .line 319
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mLedFlashSupported:Z

    return p0
.end method

.method public processStateChange(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 6

    .line 215
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getCameraStateManager()Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;

    move-result-object v0

    .line 216
    sget-object v1, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ModuleTransferManager:isScreenFlashOn --->>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->isScreenFlashOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ModuleTransferManager:isCurrentModeSupport --->>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;->isCurrentModeSupport()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ModuleTransferManager:isFrontCamera --->>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isFrontCamera()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 219
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->isScreenFlashOn()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;->isCurrentModeSupport()Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mIsPreviewStart:Z

    if-eqz v0, :cond_7c

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashStateCallback:Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->setScreenFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy;Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V

    .line 221
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->resetCountNum()V

    .line 222
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->restart()V

    return-void

    :cond_7c
    const/4 v0, 0x0

    .line 224
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->setScreenFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy;Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V

    .line 225
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->onRingScreenLightChange(ZZ)V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 3

    .line 106
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sendSettingChangeRequest"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 4

    .line 120
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFlashModes()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_f

    .line 121
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v0, :cond_f

    move p1, v0

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mLedFlashSupported:Z

    .line 122
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlashSupported:Z

    .line 123
    sget-object p1, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenFlashSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlashSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenFlashFireSupported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlashFireSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLedFlashSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mLedFlashSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 128
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isFrontCamera()Z

    move-result v0

    const-string v1, "on"

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isScreenFlashSupported()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 132
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_5f
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method updateCaptureState(Z)V
    .registers 2

    .line 295
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCaptureState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method updateFlashRequiredState(Z)V
    .registers 2

    .line 291
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method updateFlashState()V
    .registers 4

    .line 299
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFlashState mCachedFlashRequired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCachedFlashRequired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 301
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCachedFlashRequired:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->handleFlashRequiredState(Z)V

    return-void
.end method

.method public updatePreviewState(Z)V
    .registers 2

    .line 323
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mIsPreviewStart:Z

    return-void
.end method

.method public updateSpecifiedMode(Ljava/lang/String;Z)V
    .registers 4

    .line 310
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateSpecifiedMode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
