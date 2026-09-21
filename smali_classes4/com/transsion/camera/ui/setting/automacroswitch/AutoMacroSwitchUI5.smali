.class public Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI5;
.super Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mMacroToggleTranslationY:I

.field private final mPreviewRect:Landroid/graphics/Rect;

.field private final mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

.field private final mPreviewTranslationListener:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9pG3wa_Iy0dyxA_9wgwYjvigI_s(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI5;Ljava/lang/Integer;ZZ)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI5;->lambda$new$0(Ljava/lang/Integer;ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewRect(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI5;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI5;->mPreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ATMacroSwitchUI5"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;-><init>(Landroid/content/res/Resources;)V

    .line 21
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI5;->mPreviewRect:Landroid/graphics/Rect;

    .line 25
    new-instance p1, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI5$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI5$1;-><init>(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI5;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI5;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    .line 41
    new-instance p1, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI5$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI5$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI5;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI5;->mPreviewTranslationListener:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;ZZ)V
    .registers 4

    .line 42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI5;->mMacroToggleTranslationY:I

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p0, :cond_12

    .line 44
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_12
    return-void
.end method


# virtual methods
.method public getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;",
            ")",
            "Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;"
        }
    .end annotation

    .line 95
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    if-ne p1, v0, :cond_7

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI5;->mPreviewTranslationListener:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    return-object p0

    :cond_7
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

.method protected getMacroSwitchLayoutMargins(II)Landroid/graphics/Rect;
    .registers 6

    .line 79
    sget-object v0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMacroSwitchLayoutMargins: screenFormType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 80
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->getMacroSwitchLayoutMargins(II)Landroid/graphics/Rect;

    move-result-object p2

    if-nez p1, :cond_6d

    const/16 p1, 0x10

    .line 82
    invoke-static {p1}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result p1

    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 83
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI5;->mPreviewRect:Landroid/graphics/Rect;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(Landroid/graphics/Rect;D)Z

    move-result p1

    const/16 v0, 0xa

    if-eqz p1, :cond_5c

    .line 84
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getModePlusBottomBarHeight()I

    move-result p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI5;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    const v1, 0x3eaaaaac

    mul-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p1, p0

    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result p0

    add-int/2addr p1, p0

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    return-object p2

    .line 86
    :cond_5c
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getModePlusBottomBarHeight()I

    move-result p0

    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    :cond_6d
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

    .line 54
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 55
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_c

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI5;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

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

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_9

    .line 63
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI5;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 65
    :cond_9
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->unInit()V

    return-void
.end method

.method protected updateMacroSwitchLayout()V
    .registers 2

    .line 70
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->updateMacroSwitchLayout()V

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_d

    .line 72
    iget p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI5;->mMacroToggleTranslationY:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_d
    return-void
.end method
