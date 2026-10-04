.class public Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI5;
.super Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mPreviewRect:Landroid/graphics/Rect;

.field private final mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreviewRect(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI5;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI5;->mPreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "QRcodeUI5"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;-><init>(Landroid/content/res/Resources;)V

    .line 19
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI5;->mPreviewRect:Landroid/graphics/Rect;

    .line 21
    new-instance p1, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI5$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI5$1;-><init>(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI5;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI5;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    return-void
.end method


# virtual methods
.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getMoreIconMargins(II)Landroid/graphics/Rect;
    .registers 6

    .line 58
    sget-object v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMoreIconMargins: screenFormType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 59
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->getMoreIconMargins(II)Landroid/graphics/Rect;

    move-result-object p2

    if-nez p1, :cond_3f

    const/16 p1, 0x10

    .line 61
    invoke-static {p1}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result p1

    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getModePlusBottomBarHeight()I

    move-result p0

    const/16 p1, 0xa

    invoke-static {p1}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    :cond_3f
    return-object p2
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

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 41
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 42
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_c

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI5;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    :cond_c
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_9

    .line 50
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI5;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 52
    :cond_9
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->unInit()V

    return-void
.end method
