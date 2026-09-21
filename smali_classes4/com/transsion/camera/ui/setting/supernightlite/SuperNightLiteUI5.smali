.class public Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;
.super Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$NightLiteShutterListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mIsNightLiteCaptureEnable:Z

.field private mNightLiteSwitchTranslationY:I

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
.method public static synthetic $r8$lambda$dC4Frz4czGPLVrH_umvQFpPktUw(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;Ljava/lang/Integer;ZZ)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->lambda$new$0(Ljava/lang/Integer;ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewRect(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->mPreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SuperNightLiteUI5"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;-><init>(Landroid/content/res/Resources;)V

    .line 24
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->mPreviewRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->mIsNightLiteCaptureEnable:Z

    .line 29
    new-instance p1, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$1;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    .line 47
    new-instance p1, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->mPreviewTranslationListener:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;ZZ)V
    .registers 7

    .line 49
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationUpdate: translation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", start = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", end = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->mNightLiteSwitchTranslationY:I

    .line 51
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p2, :cond_38

    .line 52
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_38
    if-eqz p3, :cond_41

    .line 55
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    :cond_41
    return-void
.end method


# virtual methods
.method protected createNightLiteShutterListener()Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;
    .registers 3

    .line 142
    new-instance v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$NightLiteShutterListener;

    invoke-super {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->createNightLiteShutterListener()Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$NightLiteShutterListener;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V

    return-object v0
.end method

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

    .line 133
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    if-ne p1, v0, :cond_7

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->mPreviewTranslationListener:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getDefaultTranslationY()F
    .registers 1

    .line 95
    iget p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->mNightLiteSwitchTranslationY:I

    int-to-float p0, p0

    return p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getNightLiteSwitchLayoutMargins(II)Landroid/graphics/Rect;
    .registers 6

    .line 117
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNightLiteSwitchLayoutMargins: screenFormType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getNightLiteSwitchLayoutMargins(II)Landroid/graphics/Rect;

    move-result-object p2

    if-nez p1, :cond_6d

    const/16 p1, 0x10

    .line 120
    invoke-static {p1}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result p1

    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 121
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->mPreviewRect:Landroid/graphics/Rect;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(Landroid/graphics/Rect;D)Z

    move-result p1

    const/16 v0, 0xa

    if-eqz p1, :cond_5c

    .line 122
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getModePlusBottomBarHeight()I

    move-result p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->mPreviewRect:Landroid/graphics/Rect;

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

    .line 124
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

.method protected isInitialPosition()Z
    .registers 3

    .line 108
    iget v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->mNightLiteSwitchTranslationY:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1c

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0

    .line 111
    :cond_1c
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->isInitialPosition()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method protected isNightLiteCaptureEnable()Z
    .registers 1

    .line 147
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->mIsNightLiteCaptureEnable:Z

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

    .line 65
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 66
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_c

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

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

.method public setNightLiteCaptureEnable(Z)V
    .registers 5

    .line 151
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNightLiteCaptureEnable: enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 152
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->mIsNightLiteCaptureEnable:Z

    return-void
.end method

.method protected translateSwitchIcon(Z)V
    .registers 4

    .line 100
    iget v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->mNightLiteSwitchTranslationY:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    return-void

    .line 103
    :cond_d
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->translateSwitchIcon(Z)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_9

    .line 74
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 76
    :cond_9
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->unInit()V

    return-void
.end method

.method protected updateNightLiteSwitchLayout()V
    .registers 3

    .line 87
    iget v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->mNightLiteSwitchTranslationY:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    return-void

    .line 90
    :cond_d
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateNightLiteSwitchLayout()V

    return-void
.end method

.method protected updateProgressCircleLayoutInNormal(I)V
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getShutterButtonMarginBottom()I

    move-result p1

    .line 81
    :cond_c
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressCircleLayoutInNormal(I)V

    return-void
.end method
