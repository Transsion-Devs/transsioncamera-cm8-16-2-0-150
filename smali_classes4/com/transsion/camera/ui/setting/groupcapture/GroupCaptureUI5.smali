.class public Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;
.super Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mGroupCaptureIconTranslationY:I

.field private mIsNeedShow:Z

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
.method public static synthetic $r8$lambda$IsWWvQ6qigm77pENAXLhfq-HHyU(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;Ljava/lang/Integer;ZZ)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;->lambda$new$0(Ljava/lang/Integer;ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewRect(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;->mPreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GroupCaptureUI5"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;->mPreviewRect:Landroid/graphics/Rect;

    .line 25
    new-instance v0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5$1;-><init>(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    .line 43
    new-instance v0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;->mPreviewTranslationListener:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;ZZ)V
    .registers 4

    .line 44
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;->mGroupCaptureIconTranslationY:I

    .line 45
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p2, :cond_12

    .line 46
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_12
    if-eqz p3, :cond_1d

    .line 48
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;->isNeedShow()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 49
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;->showIcon()V

    :cond_1d
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

    .line 111
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    if-ne p1, v0, :cond_7

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;->mPreviewTranslationListener:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

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

.method protected getGroupCaptureIconMargins(II)Landroid/graphics/Rect;
    .registers 6

    .line 95
    sget-object v0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGroupCaptureIconMargins: screenFormType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 96
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->getGroupCaptureIconMargins(II)Landroid/graphics/Rect;

    move-result-object p2

    if-nez p1, :cond_6d

    const/16 p1, 0x10

    .line 98
    invoke-static {p1}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result p1

    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;->mPreviewRect:Landroid/graphics/Rect;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(Landroid/graphics/Rect;D)Z

    move-result p1

    const/16 v0, 0xa

    if-eqz p1, :cond_5c

    .line 100
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getModePlusBottomBarHeight()I

    move-result p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;->mPreviewRect:Landroid/graphics/Rect;

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

    .line 102
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

.method protected hideIcon(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;->mIsNeedShow:Z

    .line 89
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->hideIcon(Z)V

    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public isNeedShow()Z
    .registers 1

    .line 119
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;->mIsNeedShow:Z

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

    .line 55
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 56
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_c

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

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

.method protected showIcon()V
    .registers 2

    .line 79
    iget v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;->mGroupCaptureIconTranslationY:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;->mIsNeedShow:Z

    return-void

    .line 83
    :cond_c
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->showIcon()V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_9

    .line 64
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 66
    :cond_9
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->unInit()V

    return-void
.end method

.method protected updateGroupCaptureIconLayout()V
    .registers 2

    .line 71
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->updateGroupCaptureIconLayout()V

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_d

    .line 73
    iget p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;->mGroupCaptureIconTranslationY:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_d
    return-void
.end method
