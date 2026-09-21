.class public Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;,
        Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$StatusChangeListener;,
        Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;
    }
.end annotation


# static fields
.field private static final FACE_EYE_UI_SWITCH_THRESHOLD:F = 0.05f

.field private static final KEY:Ljava/lang/String; = "key_animal_eye_detection"

.field private static final MSG_HIDE_EYE:I = 0x66

.field private static final MSG_SHOW_EYE:I = 0x65

.field private static final MSG_UPDATE_EYE:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mActiveEyeView:Z

.field private mAnimalView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

.field private mCanShowEyeView:Z

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mEyeResultCallbackImpl:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;

.field private mFaceCount:I

.field private mFaceEyeView:Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;

.field private mFaceEyeViewState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

.field private mFaceId:I

.field private mIsCapturing:Z

.field private mIsEyeViewShowing:Z

.field private final mPreviewViewRect:Landroid/graphics/Rect;

.field private final mResources:Landroid/content/res/Resources;

.field private final mStatusChangeListener:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsCapturing(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mIsCapturing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;)Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmActiveEyeView(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mActiveEyeView:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFaceId(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoUpdateEyeView(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;[I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->doUpdateEyeView([I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AnimalEyeDetUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 4

    .line 78
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mActiveEyeView:Z

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceId:I

    .line 66
    iput v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceCount:I

    .line 68
    new-instance v0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mEyeResultCallbackImpl:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 71
    new-instance v0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$StatusChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$StatusChangeListener;

    .line 79
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mResources:Landroid/content/res/Resources;

    .line 80
    new-instance p1, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;

    invoke-direct {p1, p0, v1}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;

    return-void
.end method

.method private changeRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 10

    .line 348
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-nez p1, :cond_8

    goto :goto_74

    .line 352
    :cond_8
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int v3, v1, v2

    .line 353
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int v5, v4, p1

    const v6, 0x3ecccccd    # 0.4f

    if-le v3, v5, :cond_35

    int-to-float v2, v2

    int-to-float v7, v3

    mul-float/2addr v7, v6

    sub-float/2addr v2, v7

    float-to-int v2, v2

    .line 356
    iput v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    .line 357
    div-int/lit8 v3, v3, 0x2

    sub-int/2addr p1, v3

    int-to-float p1, p1

    sub-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    int-to-float p1, v1

    add-float/2addr p1, v7

    float-to-int p1, p1

    .line 358
    iput p1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    int-to-float p1, v4

    add-float/2addr p1, v7

    float-to-int p1, p1

    .line 359
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_51

    :cond_35
    sub-int v3, v5, v3

    .line 361
    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v5, v5

    mul-float/2addr v5, v6

    sub-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    sub-float/2addr p1, v5

    float-to-int p1, p1

    .line 362
    iput p1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    int-to-float p1, v1

    add-float/2addr p1, v5

    float-to-int p1, p1

    .line 363
    iput p1, v0, Landroid/graphics/Rect;->right:I

    int-to-float p1, v4

    add-float/2addr p1, v5

    float-to-int p1, p1

    .line 364
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 366
    :goto_51
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/transsion/camera/R$dimen;->animal_eye_detection_animation_min_width:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 367
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int v2, p1, v1

    if-ge v2, p0, :cond_74

    sub-int/2addr p0, v2

    .line 370
    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 371
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p0

    .line 372
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 373
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_74
    :goto_74
    return-object v0
.end method

.method private doUpdateEyeView([I)V
    .registers 12

    .line 277
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mActiveEyeView:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_fb

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mCanShowEyeView:Z

    if-eqz v0, :cond_fb

    if-eqz p1, :cond_fb

    array-length v0, p1

    if-nez v0, :cond_12

    goto/16 :goto_fb

    .line 290
    :cond_12
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiFocusV2UiSupport:Z

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x5

    const/4 v7, 0x1

    if-eqz v0, :cond_a0

    .line 291
    iget v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceId:I

    aget v8, p1, v7

    if-ne v0, v8, :cond_99

    iget v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceCount:I

    aget v9, p1, v2

    if-eq v0, v9, :cond_2c

    goto :goto_99

    .line 296
    :cond_2c
    invoke-direct {p0, v7}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->notifyEyeViewState(Z)V

    .line 298
    new-instance v0, Landroid/graphics/Rect;

    aget v5, p1, v5

    aget v4, p1, v4

    aget v3, p1, v3

    aget v6, p1, v6

    invoke-direct {v0, v5, v4, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 299
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x6

    aget v4, p1, v4

    const/4 v5, 0x7

    aget v5, p1, v5

    aget v1, p1, v1

    const/16 v6, 0x9

    aget p1, p1, v6

    invoke-direct {v3, v4, v5, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 301
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v3, p1, v1}, Lcom/transsion/camera/utils/CoordinatesUtil;->referenceToViewSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object p1

    .line 302
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v1, v3

    .line 303
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    .line 304
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v4

    iget-boolean v4, v4, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsHumanDetectNew:Z

    if-nez v4, :cond_97

    int-to-float v1, v1

    int-to-float v3, v3

    div-float/2addr v1, v3

    const v3, 0x3d4ccccd    # 0.05f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_86

    goto :goto_97

    .line 308
    :cond_86
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/transsion/camera/utils/CoordinatesUtil;->referenceToViewSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_cd

    :cond_97
    :goto_97
    move v7, v2

    goto :goto_cd

    .line 292
    :cond_99
    :goto_99
    iput v8, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceId:I

    .line 293
    aget p1, p1, v2

    iput p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceCount:I

    return-void

    .line 315
    :cond_a0
    iget v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceId:I

    aget v1, p1, v3

    if-ne v0, v1, :cond_f4

    iget v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceCount:I

    aget v3, p1, v6

    if-eq v0, v3, :cond_ad

    goto :goto_f4

    .line 320
    :cond_ad
    invoke-direct {p0, v7}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->notifyEyeViewState(Z)V

    .line 322
    new-instance v0, Landroid/graphics/Rect;

    aget v1, p1, v2

    aget v3, p1, v7

    aget v5, p1, v5

    aget p1, p1, v4

    invoke-direct {v0, v1, v3, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 323
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/transsion/camera/utils/CoordinatesUtil;->referenceToViewSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object p1

    :goto_cd
    if-eqz v7, :cond_d3

    .line 327
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->changeRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 328
    :cond_d3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mAnimalView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    if-eqz v0, :cond_ec

    .line 329
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mAnimalView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mAnimalView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 333
    :cond_ec
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceEyeView:Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;

    if-eqz p0, :cond_f3

    .line 334
    invoke-virtual {p0, p1, v7}, Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;->updateFaceEye(Landroid/graphics/Rect;Z)V

    :cond_f3
    return-void

    .line 316
    :cond_f4
    :goto_f4
    iput v1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceId:I

    .line 317
    aget p1, p1, v6

    iput p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceCount:I

    return-void

    .line 278
    :cond_fb
    :goto_fb
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mAnimalView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    if-eqz p1, :cond_102

    .line 279
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    :cond_102
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceEyeView:Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;

    if-eqz p1, :cond_109

    .line 282
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->setFaceEyeViewVisibility(I)V

    .line 284
    :cond_109
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->notifyEyeViewState(Z)V

    const/4 p1, -0x1

    .line 285
    iput p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceId:I

    .line 286
    iput p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceCount:I

    return-void
.end method

.method private notifyEyeViewState(Z)V
    .registers 4

    .line 229
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mIsEyeViewShowing:Z

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 230
    :goto_7
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_1f

    if-eqz v0, :cond_1f

    .line 231
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mIsEyeViewShowing:Z

    if-eqz p1, :cond_14

    .line 232
    const-string p0, "show_animal_eye_view"

    goto :goto_16

    :cond_14
    const-string p0, "hide_animal_eye_view"

    .line 233
    :goto_16
    const-string p1, "key_animal_eye_view_state"

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    .line 234
    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 433
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private setFaceEyeViewVisibility(I)V
    .registers 4

    .line 474
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceEyeViewState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    if-eqz v0, :cond_17

    .line 475
    new-instance v1, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;-><init>(Lcom/transsion/camera/app/common/ui/helper/ViewState;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Runnable;

    .line 476
    invoke-virtual {v1, p1, v0}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->setVisibility(I[Ljava/lang/Runnable;)Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;

    move-result-object p1

    .line 477
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->build()Lcom/transsion/camera/app/common/ui/helper/ViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceEyeViewState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    return-void

    .line 480
    :cond_17
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceEyeView:Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;

    if-eqz p0, :cond_1e

    .line 481
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private updateRootLayoutRect()V
    .registers 6

    .line 265
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 267
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 268
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 269
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 270
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 117
    sget v0, Lcom/transsion/camera/R$layout;->animal_eye_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 118
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiFocusV2UiSupport:Z

    if-eqz p2, :cond_1a

    .line 119
    sget p2, Lcom/transsion/camera/R$id;->animal_eye_view_2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceEyeView:Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;

    return-object p1

    .line 121
    :cond_1a
    sget p2, Lcom/transsion/camera/R$id;->animal_eye_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mAnimalView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    .line 122
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

.method public getFaceEyeView()Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;
    .registers 1

    .line 441
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceEyeView:Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 176
    const-string p0, "key_animal_eye_detection"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 184
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 4

    .line 143
    sget-object v0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[hideEntryView]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mCanShowEyeView:Z

    .line 145
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mAnimalView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    const/16 v2, 0x8

    if-eqz v1, :cond_16

    .line 146
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->notifyEyeViewState(Z)V

    .line 149
    :cond_16
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceEyeView:Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;

    if-eqz v1, :cond_20

    .line 150
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->setFaceEyeViewVisibility(I)V

    .line 151
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->notifyEyeViewState(Z)V

    :cond_20
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

    .line 398
    :cond_27
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mIsCapturing:Z

    return-void

    .line 402
    :cond_2a
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mIsCapturing:Z

    return-void

    .line 395
    :cond_2d
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->hideEntryView()V

    return-void

    .line 390
    :cond_31
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->updateRootLayoutRect()V

    .line 391
    iput v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceId:I

    .line 392
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mIsCapturing:Z

    return-void

    .line 386
    :cond_39
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->updateRootLayoutRect()V

    .line 387
    iput v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceId:I

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

    .line 341
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 342
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mAnimalView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    if-eqz p0, :cond_b

    int-to-float p1, p1

    .line 343
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_b
    return-void
.end method

.method public onPrivacyModeChange(ZF)V
    .registers 5

    .line 451
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->isSupportPrivacyMode()Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_4e

    .line 454
    :cond_7
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceEyeView:Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;

    if-eqz p2, :cond_4e

    .line 455
    sget-object p2, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrivacyModeChange: enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_41

    .line 457
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceEyeViewState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    if-nez p1, :cond_34

    .line 458
    new-instance p1, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceEyeView:Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->build()Lcom/transsion/camera/app/common/ui/helper/ViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceEyeViewState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    :cond_34
    const/4 p1, 0x0

    .line 460
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mCanShowEyeView:Z

    .line 461
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceEyeView:Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 462
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->notifyEyeViewState(Z)V

    return-void

    .line 464
    :cond_41
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceEyeViewState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    if-nez p1, :cond_46

    goto :goto_4e

    .line 467
    :cond_46
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceEyeView:Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/helper/ViewState;->restore(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 468
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceEyeViewState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    :cond_4e
    :goto_4e
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

    .line 212
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_c

    .line 214
    sget-object p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 217
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mEyeResultCallbackImpl:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;

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

    .line 222
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_9

    .line 224
    const-string p1, "key_focus_state"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->registerKeyToMonitor(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public setupEntryView()V
    .registers 4

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mCanShowEyeView:Z

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mAnimalView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_f

    .line 132
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 133
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->notifyEyeViewState(Z)V

    .line 135
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceEyeView:Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;

    if-eqz v0, :cond_19

    .line 136
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->setFaceEyeViewVisibility(I)V

    .line 137
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->notifyEyeViewState(Z)V

    :cond_19
    return-void
.end method

.method public showEntryView()V
    .registers 2

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mCanShowEyeView:Z

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 190
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 192
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 194
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mAnimalView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1d

    .line 196
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->notifyEyeViewState(Z)V

    .line 199
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceEyeView:Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;

    if-eqz v0, :cond_27

    .line 200
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->setFaceEyeViewVisibility(I)V

    .line 201
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->notifyEyeViewState(Z)V

    :cond_27
    const/4 v0, -0x1

    .line 203
    iput v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceId:I

    .line 204
    iput v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceCount:I

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_35

    .line 206
    const-string v0, "key_focus_state"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_35
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 163
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->updateRootLayoutRect()V

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceEyeView:Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;

    if-eqz p0, :cond_f

    .line 165
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->setPreviewRect(Landroid/graphics/Rect;)V

    :cond_f
    return-void
.end method
