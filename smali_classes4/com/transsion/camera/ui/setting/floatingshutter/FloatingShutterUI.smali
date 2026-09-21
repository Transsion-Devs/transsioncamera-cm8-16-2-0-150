.class public Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/IFloatingShutterUI;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/transsion/camera/app/ui/view/FloatingShutterView$IFloatingShutterUICallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE:Ljava/lang/String; = "off"

.field private static final FLOATING_SHUTTER_HIDE_THRESHOLD:I = 0x32

.field private static final KEY:Ljava/lang/String; = "key_floating_shutter"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mContext:Landroid/content/Context;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mFloatingShutterView:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

.field private mIFloatingShutterListener:Lcom/transsion/camera/app/ui/IFloatingShutterUI$IFloatingShutterListener;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private final mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mOrientation:I

.field private mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private final mShutterButtonViewChecker:Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;


# direct methods
.method public static synthetic $r8$lambda$Ti1tQ_zcP5rcOr7bJWlKpwTLN6Q(Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$hWa0Sn3VOtBvzx3T0UYStR8Rmi8(Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->lambda$ringScreenLightUpdateUI$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIFloatingShutterListener(Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;)Lcom/transsion/camera/app/ui/IFloatingShutterUI$IFloatingShutterListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mIFloatingShutterListener:Lcom/transsion/camera/app/ui/IFloatingShutterUI$IFloatingShutterListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIModuleTransfer(Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;)Lcom/transsion/camera/app/common/IModuleTransfer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOldValue(Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mringScreenLightUpdateUI(Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->ringScreenLightUpdateUI()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FloatingShutterUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 71
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 143
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 162
    new-instance v0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 72
    new-instance v0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;

    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mShutterButtonViewChecker:Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;

    return-void
.end method

.method static synthetic access$002(Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mEntryRootLayout:Landroid/view/View;

    return-object p1
.end method

.method private getShutterButtonRect(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 6

    .line 356
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x2

    .line 357
    new-array v0, v0, [I

    .line 358
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 359
    aget v1, v0, v1

    iput v1, p0, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    .line 360
    aget v3, v0, v2

    iput v3, p0, Landroid/graphics/Rect;->top:I

    .line 361
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 362
    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    return-object p0
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p1, :cond_10

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 165
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->ringScreenLightUpdateUI()V

    :cond_10
    return-void
.end method

.method private synthetic lambda$ringScreenLightUpdateUI$1()V
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mFloatingShutterView:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->ringScreenLightUpdateUI(Z)V

    return-void
.end method

.method private ringScreenLightUpdateUI()V
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mFloatingShutterView:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    if-nez v0, :cond_c

    .line 171
    sget-object p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "ringScreenLightUpdateUI, mFloatingShutterView is null return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 174
    :cond_c
    new-instance v1, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startVibrator()V
    .registers 4

    .line 329
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const-wide/16 v0, 0x32

    const/4 v2, -0x1

    .line 330
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    if-eqz p0, :cond_16

    .line 332
    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_16
    return-void
.end method

.method private updateCenterButtonRect()V
    .registers 4

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_2d

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getShutterButtonLayout()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_2d

    .line 312
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getShutterButtonLayout()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->getShutterButtonRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 314
    iget v1, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mOrientation:I

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_26

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_23

    const/4 v2, 0x5

    if-ne v1, v2, :cond_26

    :cond_23
    const/16 v1, 0x64

    goto :goto_28

    :cond_26
    const/16 v1, 0x32

    .line 318
    :goto_28
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mShutterButtonViewChecker:Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;->updateCenterButtonRect(Landroid/graphics/Rect;I)V

    :cond_2d
    :goto_2d
    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 147
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getAsyncInflater()Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$layout;->floating_shutter_view:I

    new-instance v1, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$1;-><init>(Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;)V

    invoke-virtual {p1, v0, p2, v1}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public exitEditMode()Z
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mFloatingShutterView:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 85
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->exitEditMode()Z

    move-result p0

    return p0
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

    .line 186
    const-string p0, "key_floating_shutter"

    return-object p0
.end method

.method public getRootViewVisibility()I
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mFloatingShutterView:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    if-nez p0, :cond_7

    const/16 p0, 0x8

    return p0

    .line 128
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->getRootViewVisibility()I

    move-result p0

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 191
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_e

    .line 192
    sget-object p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "deviceSetting is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 193
    const-string p0, "off"

    return-object p0

    .line 195
    :cond_e
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideFloatingShutterView(Landroid/view/View;Z)V
    .registers 3

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mFloatingShutterView:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    if-eqz p0, :cond_7

    .line 235
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->hide(Landroid/view/View;Z)V

    :cond_7
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/ScreenManager;)V
    .registers 4

    .line 248
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mContext:Landroid/content/Context;

    .line 249
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 250
    iput-object p3, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 251
    new-instance p2, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onConfigurationChanged()V
    .registers 1

    .line 417
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onConfigurationChanged()V

    .line 418
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->updateCenterButtonRect()V

    .line 419
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mFloatingShutterView:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    if-eqz p0, :cond_d

    .line 420
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->onConfigurationChanged()V

    :cond_d
    return-void
.end method

.method public onFloatingCameraButtonTouchDown()V
    .registers 6

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "key_floating_shutter_ui_user_interaction"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 305
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->updateCenterButtonRect()V

    return-void
.end method

.method public onFloatingCameraButtonTouchMoving(Landroid/graphics/Rect;)V
    .registers 3

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mShutterButtonViewChecker:Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;->vibrator(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 324
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->startVibrator()V

    :cond_b
    return-void
.end method

.method public onFloatingShutterButtonMove()V
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mFloatingShutterView:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    if-eqz p0, :cond_7

    .line 105
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->triggerMoveAction()V

    :cond_7
    return-void
.end method

.method public onFloatingShutterUIRemoved()V
    .registers 6

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_floating_shutter_ui_user_interaction"

    const-string v3, "0"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "floating_shutter_ui_hide"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_floating_shutter_ui_state"

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 298
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->hideFloatingShutterUI()V

    return-void
.end method

.method public onFloatingShutterUITouchUp(Landroid/graphics/Rect;)Z
    .registers 2

    .line 291
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mShutterButtonViewChecker:Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;->isContains(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onGotoDetailPage()V
    .registers 1

    .line 350
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mIFloatingShutterListener:Lcom/transsion/camera/app/ui/IFloatingShutterUI$IFloatingShutterListener;

    if-eqz p0, :cond_7

    .line 351
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IFloatingShutterUI$IFloatingShutterListener;->onGotoDetailPage()V

    :cond_7
    return-void
.end method

.method public onLeaveAfterSwipeUp()V
    .registers 3

    .line 282
    sget-object v0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onLeaveAfterSwipeUp"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mFloatingShutterView:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    if-eqz v0, :cond_14

    .line 284
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->triggerUpAction()V

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mShutterButtonViewChecker:Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;->setFlag(Z)V

    :cond_14
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 426
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 427
    iput p1, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mOrientation:I

    .line 428
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->updateCenterButtonRect()V

    .line 429
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mFloatingShutterView:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    if-eqz p0, :cond_f

    .line 430
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->onOrientationChanged(I)V

    :cond_f
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 408
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    .line 409
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->updateCenterButtonRect()V

    .line 410
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mFloatingShutterView:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    if-eqz p0, :cond_d

    .line 411
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->onScreenFormChanged(I)V

    :cond_d
    return-void
.end method

.method public onTriggerShutterClick()V
    .registers 3

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->triggerShutterClick(I)V

    .line 345
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0xdb

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public pause()V
    .registers 1

    .line 275
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mFloatingShutterView:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    if-eqz p0, :cond_7

    .line 276
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->pause()V

    :cond_7
    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public restoreDefaultState()V
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mFloatingShutterView:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    if-eqz p0, :cond_7

    .line 91
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->restoreDefaultState()V

    :cond_7
    return-void
.end method

.method public restoreState()V
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mFloatingShutterView:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    if-eqz p0, :cond_7

    .line 98
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->restoreState()V

    :cond_7
    return-void
.end method

.method public resume()V
    .registers 1

    .line 268
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mFloatingShutterView:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    if-eqz p0, :cond_7

    .line 269
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->resume()V

    :cond_7
    return-void
.end method

.method public saveState()V
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mFloatingShutterView:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    if-eqz p0, :cond_7

    .line 112
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->saveState()V

    :cond_7
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mFloatingShutterView:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    if-eqz p0, :cond_7

    .line 139
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->setEnabled(Z)V

    :cond_7
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setFloatingShutterListener(Lcom/transsion/camera/app/ui/IFloatingShutterUI$IFloatingShutterListener;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mIFloatingShutterListener:Lcom/transsion/camera/app/ui/IFloatingShutterUI$IFloatingShutterListener;

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    return-void
.end method

.method public setupViews(Z)V
    .registers 4

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mEntryRootLayout:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 259
    :cond_5
    sget v1, Lcom/transsion/camera/R$id;->floating_shutter_ui:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mFloatingShutterView:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    .line 260
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->updateScreenFormType(I)V

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mFloatingShutterView:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    iget v1, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->updateOrientation(I)V

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mFloatingShutterView:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->setupViews(Z)V

    .line 263
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mFloatingShutterView:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->setFloatingShutterUICallback(Lcom/transsion/camera/app/ui/view/FloatingShutterView$IFloatingShutterUICallback;)V

    return-void
.end method

.method public showFloatingShutterView(ZZZ)V
    .registers 6

    if-eqz p2, :cond_19

    .line 220
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getShutterButtonLayout()Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->getShutterButtonRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p2

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mShutterButtonViewChecker:Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;

    const/16 v1, 0x32

    invoke-virtual {v0, p2, v1}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;->updateCenterButtonRect(Landroid/graphics/Rect;I)V

    .line 222
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mShutterButtonViewChecker:Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;->setFlag(Z)V

    :cond_19
    if-eqz p1, :cond_21

    .line 225
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mShutterButtonViewChecker:Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;->setFlag(Z)V

    .line 227
    :cond_21
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mFloatingShutterView:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    if-eqz p0, :cond_28

    .line 228
    invoke-virtual {p0, p1, p3}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->show(ZZ)V

    :cond_28
    return-void
.end method

.method public sinkAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mFloatingShutterView:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    if-eqz p0, :cond_7

    .line 119
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->sinkAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    :cond_7
    return-void
.end method

.method public unInit()V
    .registers 3

    .line 210
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 211
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mFloatingShutterView:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    if-eqz p0, :cond_13

    .line 213
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->unInit()V

    :cond_13
    return-void
.end method

.method public updateFloatingShutterUIPosition(II)V
    .registers 3

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mFloatingShutterView:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    if-eqz p0, :cond_7

    .line 242
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->updateFloatingShutterUIPosition(II)V

    :cond_7
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public userInteraction()Z
    .registers 4

    .line 338
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "0"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_floating_shutter_ui_user_interaction"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 339
    const-string v0, "1"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
