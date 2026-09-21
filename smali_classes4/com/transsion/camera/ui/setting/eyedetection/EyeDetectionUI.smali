.class public Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;,
        Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;,
        Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "key_eye_detection"

.field private static final MSG_HIDE_EYE:I = 0x66

.field private static final MSG_SHOW_EYE:I = 0x65

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mActiveEyeView:Z

.field private mCanShowEyeView:Z

.field private final mCurrentRect:Landroid/graphics/Rect;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mEyeResultCallbackImpl:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;

.field private mEyeView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

.field private mEyeView2:Lcom/transsion/camera/ui/setting/eyedetection/view/EyeView;

.field private mFaceCount:I

.field private mFaceId:I

.field private volatile mIsCapturing:Z

.field private mIsEyeViewShowing:Z

.field private final mPreviewViewRect:Landroid/graphics/Rect;

.field private final mStatusChangeListener:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;


# direct methods
.method public static synthetic $r8$lambda$XpWgKN49S__JexDYEDBy3nxFAbI(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->lambda$doUpdateEyeView$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActiveEyeView(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mActiveEyeView:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCapturing(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mIsCapturing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmActiveEyeView(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mActiveEyeView:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFaceId(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoUpdateEyeView(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;[I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->doUpdateEyeView([I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "EyeDetectionUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 70
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCurrentRect:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;

    .line 58
    new-instance v0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeResultCallbackImpl:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mIsEyeViewShowing:Z

    const/4 v2, 0x1

    .line 60
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mActiveEyeView:Z

    .line 61
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCanShowEyeView:Z

    .line 62
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mIsCapturing:Z

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceId:I

    .line 64
    iput v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceCount:I

    .line 71
    new-instance v0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    return-void
.end method

.method private changeRect(Landroid/graphics/Rect;)V
    .registers 13

    if-nez p1, :cond_3

    return-void

    .line 288
    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int v2, v0, v1

    .line 289
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int v4, v3, p1

    const-wide v5, 0x3fc999999999999aL    # 0.2

    if-le v2, v4, :cond_34

    .line 291
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCurrentRect:Landroid/graphics/Rect;

    int-to-double v7, v1

    int-to-double v9, v2

    mul-double/2addr v9, v5

    sub-double/2addr v7, v9

    double-to-int v1, v7

    iput v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    .line 292
    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    int-to-double v4, p1

    sub-double/2addr v4, v9

    double-to-int p1, v4

    iput p1, p0, Landroid/graphics/Rect;->top:I

    int-to-double v0, v0

    add-double/2addr v0, v9

    double-to-int p1, v0

    .line 293
    iput p1, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    int-to-double v0, v3

    add-double/2addr v0, v9

    double-to-int p1, v0

    .line 294
    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void

    .line 296
    :cond_34
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCurrentRect:Landroid/graphics/Rect;

    sub-int v2, v4, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-double v7, v1

    int-to-double v9, v4

    mul-double/2addr v9, v5

    sub-double/2addr v7, v9

    double-to-int v1, v7

    iput v1, p0, Landroid/graphics/Rect;->left:I

    int-to-double v4, p1

    sub-double/2addr v4, v9

    double-to-int p1, v4

    .line 297
    iput p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    int-to-double v0, v0

    add-double/2addr v0, v9

    double-to-int p1, v0

    .line 298
    iput p1, p0, Landroid/graphics/Rect;->right:I

    int-to-double v0, v3

    add-double/2addr v0, v9

    double-to-int p1, v0

    .line 299
    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private doUpdateEyeView([I)V
    .registers 8

    .line 241
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mActiveEyeView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_ac

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCanShowEyeView:Z

    if-eqz v0, :cond_ac

    if-eqz p1, :cond_ac

    array-length v0, p1

    if-nez v0, :cond_10

    goto/16 :goto_ac

    .line 247
    :cond_10
    sget-object v0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doUpdateEyeView mCurrentRect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , eyes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , mFaceId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mFaceCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 249
    new-instance v0, Landroid/graphics/Rect;

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget v3, p1, v3

    const/4 v4, 0x4

    aget v4, p1, v4

    const/4 v5, 0x5

    aget v5, p1, v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 250
    iget v2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceId:I

    const/4 v3, 0x1

    aget v4, p1, v3

    if-ne v2, v4, :cond_a5

    iget v2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceCount:I

    aget v5, p1, v1

    if-eq v2, v5, :cond_67

    goto :goto_a5

    .line 255
    :cond_67
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->notifyEyeViewState(Z)V

    .line 257
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, p1, v2}, Lcom/transsion/camera/utils/CoordinatesUtil;->referenceToViewSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object p1

    .line 258
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->changeRect(Landroid/graphics/Rect;)V

    .line 259
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    if-eqz p1, :cond_96

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCurrentRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 261
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->setEyeViewVisibility(I)V

    .line 262
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 264
    :cond_96
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeView2:Lcom/transsion/camera/ui/setting/eyedetection/view/EyeView;

    if-eqz p1, :cond_a4

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCurrentRect:Landroid/graphics/Rect;

    new-instance v1, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/ui/setting/eyedetection/view/EyeView;->updateEye(Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    :cond_a4
    return-void

    .line 251
    :cond_a5
    :goto_a5
    iput v4, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceId:I

    .line 252
    aget p1, p1, v1

    iput p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceCount:I

    return-void

    :cond_ac
    :goto_ac
    const/16 p1, 0x8

    .line 242
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->setEyeViewVisibility(I)V

    .line 243
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->notifyEyeViewState(Z)V

    const/4 p1, -0x1

    .line 244
    iput p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceId:I

    .line 245
    iput p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceCount:I

    return-void
.end method

.method private synthetic lambda$doUpdateEyeView$0()V
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_16

    :cond_11
    const/4 v0, 0x0

    .line 269
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->setEyeViewVisibility(I)V

    return-void

    :cond_16
    :goto_16
    const/16 v0, 0x8

    .line 267
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->setEyeViewVisibility(I)V

    return-void
.end method

.method private notifyEyeViewState(Z)V
    .registers 4

    .line 197
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mIsEyeViewShowing:Z

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 198
    :goto_7
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_1f

    if-eqz v0, :cond_1f

    .line 199
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mIsEyeViewShowing:Z

    if-eqz p1, :cond_14

    .line 200
    const-string p0, "show_eye_view"

    goto :goto_16

    :cond_14
    const-string p0, "hide_eye_view"

    .line 201
    :goto_16
    const-string p1, "key_eye_view_state"

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private setEyeViewVisibility(I)V
    .registers 3

    .line 373
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiFocusV2UiSupport:Z

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeView2:Lcom/transsion/camera/ui/setting/eyedetection/view/EyeView;

    goto :goto_d

    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    :goto_d
    if-eqz p0, :cond_12

    .line 375
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private updateRootLayoutRect()V
    .registers 6

    .line 231
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 233
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 234
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 236
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 104
    sget v0, Lcom/transsion/camera/R$layout;->eye_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 105
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiFocusV2UiSupport:Z

    if-eqz p2, :cond_1a

    .line 106
    sget p2, Lcom/transsion/camera/R$id;->eye_view_2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/eyedetection/view/EyeView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeView2:Lcom/transsion/camera/ui/setting/eyedetection/view/EyeView;

    return-object p1

    .line 108
    :cond_1a
    sget p2, Lcom/transsion/camera/R$id;->eye_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    .line 109
    new-instance p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeBackground;

    invoke-direct {p0, p2}, Lcom/transsion/camera/ui/setting/eyedetection/EyeBackground;-><init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    invoke-virtual {p2, p0}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;->setDrawBackground(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;)V

    return-object p1
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

    .line 150
    const-string p0, "key_eye_detection"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 158
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 3

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCanShowEyeView:Z

    const/16 v1, 0x8

    .line 125
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->setEyeViewVisibility(I)V

    .line 126
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->notifyEyeViewState(Z)V

    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public isSupportPrivacyMode()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 6

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_39

    const/4 v2, 0x3

    if-eq p1, v2, :cond_39

    const/4 v2, 0x5

    if-eq p1, v2, :cond_39

    const/4 v2, 0x7

    if-eq p1, v2, :cond_39

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eq p1, v2, :cond_31

    const/16 v2, 0x14

    if-eq p1, v2, :cond_39

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_2d

    const/16 v0, 0x63

    if-eq p1, v0, :cond_2a

    const/16 v0, 0xd

    if-eq p1, v0, :cond_27

    const/16 v0, 0xe

    if-eq p1, v0, :cond_2a

    return-void

    .line 318
    :cond_27
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mIsCapturing:Z

    return-void

    .line 327
    :cond_2a
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mIsCapturing:Z

    return-void

    .line 315
    :cond_2d
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->hideEntryView()V

    return-void

    .line 321
    :cond_31
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->updateRootLayoutRect()V

    .line 322
    iput v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceId:I

    .line 323
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mIsCapturing:Z

    return-void

    .line 311
    :cond_39
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->updateRootLayoutRect()V

    .line 312
    iput v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceId:I

    return-void
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 278
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 279
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    if-eqz p0, :cond_b

    int-to-float p1, p1

    .line 280
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_b
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
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_c

    .line 182
    sget-object p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 185
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeResultCallbackImpl:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

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
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_9

    .line 192
    const-string p1, "key_focus_state"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->registerKeyToMonitor(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public setupEntryView()V
    .registers 2

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCanShowEyeView:Z

    const/4 v0, 0x4

    .line 118
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->setEyeViewVisibility(I)V

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->notifyEyeViewState(Z)V

    return-void
.end method

.method public showEntryView()V
    .registers 2

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCanShowEyeView:Z

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 164
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 166
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 168
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/16 v0, 0x8

    .line 169
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->setEyeViewVisibility(I)V

    const/4 v0, 0x0

    .line 170
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->notifyEyeViewState(Z)V

    const/4 v0, -0x1

    .line 171
    iput v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceId:I

    .line 172
    iput v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceCount:I

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_27

    .line 174
    const-string v0, "key_focus_state"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_27
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 137
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->updateRootLayoutRect()V

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeView2:Lcom/transsion/camera/ui/setting/eyedetection/view/EyeView;

    if-eqz p0, :cond_f

    .line 139
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->setPreviewRect(Landroid/graphics/Rect;)V

    :cond_f
    return-void
.end method
