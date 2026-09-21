.class Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;
.super Lcom/transsion/camera/feature/common/BaseUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI;
.implements Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;
.implements Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$ISpeedListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static final THUMBNAIL_HEIGHT_RATIO:I = 0x8


# instance fields
.field private mBridgeLayout:Landroid/view/View;

.field private mDirection:I

.field private mDirectionListener:Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;

.field private mNotifyText:Landroid/widget/TextView;

.field private mOffset:Landroid/graphics/Point;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private final mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

.field private mRotateRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mScreenFormType:I

.field private mSpeedWarn:Z

.field private mSwitchPreviewValue:Ljava/lang/String;

.field private final mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;


# direct methods
.method public static synthetic $r8$lambda$SZedppe-DRs-LoB92VCnK4Yj0GE(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->lambda$doCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VousuIzEHM3mHQQ0VPJXdMWJHcE(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->updateLayout()V

    return-void
.end method

.method public static synthetic $r8$lambda$zUQN0UIvQnNJaeEe0gV7pJJ0fdk(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->lambda$updateOrientation$1(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviewRect(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRect:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLayout(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->updateLayout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 49
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BurstPMKUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;)V
    .registers 4

    .line 89
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/common/BaseUI;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    const/4 v0, 0x1

    .line 51
    iput v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mDirection:I

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRect:Landroid/graphics/Rect;

    .line 69
    const-string v0, "off"

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mSwitchPreviewValue:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$1;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    .line 90
    iput-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    .line 91
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mScreenFormType:I

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V
    .registers 1

    .line 46
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    return-void
.end method

.method private changeDirection()V
    .registers 4

    .line 164
    sget-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "changeDirection"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 165
    iget v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mDirection:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v2, v0, :cond_10

    .line 166
    iput v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mDirection:I

    goto :goto_14

    :cond_10
    if-ne v1, v0, :cond_14

    .line 168
    iput v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mDirection:I

    .line 170
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mDirectionListener:Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;

    if-eqz v0, :cond_1d

    .line 171
    iget p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mDirection:I

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;->onDirectionChange(I)V

    :cond_1d
    return-void
.end method

.method private isLandscape(I)Z
    .registers 2

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mSupportLandscape:Z

    if-eqz p0, :cond_11

    const/4 p0, -0x1

    if-eq p1, p0, :cond_11

    if-eqz p1, :cond_11

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$doCreateView$0(Landroid/view/View;)V
    .registers 2

    .line 155
    iget-boolean p1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mCapturing:Z

    if-nez p1, :cond_7

    .line 156
    invoke-direct {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->changeDirection()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$updateOrientation$1(I)V
    .registers 5

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_10

    const/4 v1, 0x0

    goto :goto_12

    :cond_10
    iget v1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    :goto_12
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/common/utils/Utils;->setOrientation(Landroid/view/View;IZ)V

    .line 404
    invoke-direct {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->updateLayout()V

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_21

    .line 405
    iget v1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    if-ne v1, v0, :cond_27

    :cond_21
    if-eq p1, v0, :cond_2a

    iget p1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    if-ne p1, v0, :cond_2a

    .line 407
    :cond_27
    invoke-direct {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->changeDirection()V

    :cond_2a
    return-void
.end method

.method private updateChildLayout()V
    .registers 6

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mBridgeLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 284
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mNotifyText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 286
    iget v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->isLandscape(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 287
    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    int-to-float v3, v3

    iget v4, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 289
    iget v3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    int-to-float v3, v3

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 291
    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mContext:Landroid/content/Context;

    .line 292
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_notify_text_margin_top_land:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_5d

    .line 294
    :cond_3b
    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    int-to-float v3, v3

    iget v4, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 296
    iget v3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    int-to-float v3, v3

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 298
    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mContext:Landroid/content/Context;

    .line 299
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_notify_text_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 302
    :goto_5d
    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mBridgeLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mNotifyText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 306
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mNotifyText:Landroid/widget/TextView;

    iget p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    const/16 v1, 0xb4

    if-eq p0, v1, :cond_77

    const/4 p0, 0x0

    goto :goto_79

    :cond_77
    const/high16 p0, 0x43340000    # 180.0f

    :goto_79
    invoke-virtual {v0, p0}, Landroid/view/View;->setRotation(F)V

    :cond_7c
    return-void
.end method

.method private updateLayout()V
    .registers 4

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mRotateRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mBridgeLayout:Landroid/view/View;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mNotifyText:Landroid/widget/TextView;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRect:Landroid/graphics/Rect;

    if-nez v0, :cond_11

    goto :goto_18

    .line 207
    :cond_11
    invoke-direct {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->updateRootLayout()V

    .line 208
    invoke-direct {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->updateChildLayout()V

    return-void

    .line 203
    :cond_18
    :goto_18
    sget-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLayout mRotateRoot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mRotateRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mBridgeLayout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mBridgeLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mNotifyText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mNotifyText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPreviewRect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateRootLayout()V
    .registers 10

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mRotateRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 213
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 215
    iget v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->isLandscape(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 216
    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    int-to-float v3, v3

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_2b

    .line 219
    :cond_20
    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    int-to-float v3, v3

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 223
    :goto_2b
    iget v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_49

    const/16 v2, 0x35

    .line 224
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 225
    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v4, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    iget-object v5, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    iget v5, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    mul-float/2addr v4, v2

    float-to-int v2, v4

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_5a

    :cond_49
    const/16 v2, 0x33

    .line 228
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 229
    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-object v4, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    mul-float/2addr v4, v2

    float-to-int v2, v4

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 232
    :goto_5a
    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-object v4, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    mul-float/2addr v4, v2

    float-to-int v2, v4

    iget-object v4, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 235
    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/camera/utils/ScreenUtils;->getCurrentWindowSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v2

    .line 237
    iget-object v4, p0, Lcom/transsion/camera/feature/common/BaseUI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_115

    .line 238
    iget v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    const/16 v4, 0xa

    const v5, 0x3d14ee39    # 0.03636f

    const/high16 v6, 0x43de0000    # 444.0f

    const/16 v7, 0x5a

    const-string v8, "off"

    if-ne v2, v3, :cond_bd

    .line 239
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    sub-float/2addr v6, v1

    float-to-int v1, v6

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 240
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v8, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_139

    .line 241
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    .line 242
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v7}, Ljava/math/BigDecimal;-><init>(I)V

    .line 243
    sget-object v3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v1, v2, v4, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    add-int/lit16 v1, v1, 0x13e

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_139

    .line 245
    :cond_bd
    iget v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    if-ne v2, v7, :cond_f4

    .line 246
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    sub-float/2addr v6, v1

    float-to-int v1, v6

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 247
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v8, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_139

    .line 248
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    .line 249
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v7}, Ljava/math/BigDecimal;-><init>(I)V

    .line 250
    sget-object v3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v1, v2, v4, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    add-int/lit16 v1, v1, 0x13e

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_139

    .line 253
    :cond_f4
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 254
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/4 v1, -0x1

    .line 255
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 256
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v8, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_139

    .line 257
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ebb588e    # 0.36591f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40c00000    # 6.0f

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_139

    .line 261
    :cond_115
    iget v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mScreenFormType:I

    const/4 v4, 0x4

    if-eq v4, v1, :cond_11d

    const/4 v4, 0x5

    if-ne v4, v1, :cond_139

    .line 263
    :cond_11d
    iget v1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    if-ne v1, v3, :cond_130

    .line 264
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_139

    .line 266
    :cond_130
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 271
    :cond_139
    :goto_139
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mRotateRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    sget-object v1, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRootLayout mPreviewRect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", width: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", height: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", leftMargin: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", topMargin: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", rightMargin: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", bottomMargin: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doCreateView()Landroid/view/View;
    .registers 5

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$layout;->burstpmk_layout:I

    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mParentContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 142
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    .line 144
    iget v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mScreenFormType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mParentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    .line 146
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 147
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 148
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 149
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mParentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$id;->burstpmk_rotate_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mRotateRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$id;->id_burst_bridge_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mBridgeLayout:Landroid/view/View;

    .line 154
    new-instance v1, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$id;->burstpmk_notify:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mNotifyText:Landroid/widget/TextView;

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public initView()V
    .registers 3

    .line 131
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->initView()V

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x7b

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_1a
    return-void
.end method

.method public onCaptureEnd()V
    .registers 2

    .line 124
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->onCaptureEnd()V

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mOffset:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mSpeedWarn:Z

    return-void
.end method

.method public onCaptureFailed()V
    .registers 2

    .line 117
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->onCaptureFailed()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mOffset:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mSpeedWarn:Z

    return-void
.end method

.method public onMoveProgress(Landroid/graphics/Point;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mOffset:Landroid/graphics/Point;

    .line 102
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 312
    iput p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mScreenFormType:I

    return-void
.end method

.method public onSpeedUpdate(I)V
    .registers 4

    const/4 v0, 0x2

    if-ne v0, p1, :cond_5

    const/4 p1, 0x1

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    .line 108
    :goto_6
    iget-boolean v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mSpeedWarn:Z

    if-eq v0, p1, :cond_25

    .line 109
    iput-boolean p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mSpeedWarn:Z

    .line 110
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    .line 111
    sget-object p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSpeedUpdate speedWarn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method public readyUI()V
    .registers 2

    .line 186
    new-instance v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/common/BaseUI;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 187
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->readyUI()V

    return-void
.end method

.method public setDirectionListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mDirectionListener:Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;

    return-void
.end method

.method public unInitView()V
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->unregisterScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 181
    :cond_10
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->unInitView()V

    return-void
.end method

.method public updateOrientation(I)V
    .registers 5

    .line 395
    sget-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOrientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-boolean v0, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mSupportLandscape:Z

    if-eqz v0, :cond_35

    .line 397
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_28

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_28

    const/4 p1, 0x0

    .line 400
    :cond_28
    iget v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    .line 401
    iput p1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    .line 402
    new-instance p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;I)V

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/common/BaseUI;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 411
    :cond_35
    new-instance p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/common/BaseUI;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateSwitchPreviewValue(Ljava/lang/String;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mSwitchPreviewValue:Ljava/lang/String;

    return-void
.end method

.method protected updateUI()V
    .registers 9

    .line 319
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mCapturing:Z

    .line 320
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mOffset:Landroid/graphics/Point;

    .line 321
    iget v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    .line 322
    iget-boolean v3, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mSpeedWarn:Z

    .line 324
    sget-object v4, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateUI capturing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", orientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", speedWarn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_b9

    if-eqz v1, :cond_b1

    .line 329
    iget v0, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 330
    iget v1, v1, Landroid/graphics/Point;->y:I

    const/16 v4, 0xb4

    const/16 v5, 0x10e

    if-lez v1, :cond_75

    iget-object v6, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v7, v6, Lcom/transsion/camera/feature/common/BaseUISpec;->mWarningOffset:I

    if-lez v7, :cond_75

    if-le v0, v7, :cond_75

    .line 333
    iget-boolean v0, v6, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mSupportLandscape:Z

    if-eqz v0, :cond_6d

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->isLandscape(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 334
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_65

    if-ne v2, v5, :cond_61

    .line 336
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_down:I

    goto/16 :goto_bb

    .line 337
    :cond_61
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_up:I

    goto/16 :goto_bb

    :cond_65
    if-ne v2, v5, :cond_6a

    .line 340
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_up:I

    goto :goto_bb

    .line 341
    :cond_6a
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_down:I

    goto :goto_bb

    :cond_6d
    if-ne v2, v4, :cond_72

    .line 345
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_up:I

    goto :goto_bb

    .line 346
    :cond_72
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_down:I

    goto :goto_bb

    :cond_75
    if-gez v1, :cond_a9

    .line 348
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v6, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mWarningOffset:I

    if-lez v6, :cond_a9

    if-le v0, v6, :cond_a9

    .line 351
    iget-boolean v0, v1, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mSupportLandscape:Z

    if-eqz v0, :cond_a1

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->isLandscape(I)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_99

    if-ne v2, v5, :cond_96

    .line 354
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_up:I

    goto :goto_bb

    .line 355
    :cond_96
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_down:I

    goto :goto_bb

    :cond_99
    if-ne v2, v5, :cond_9e

    .line 358
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_down:I

    goto :goto_bb

    .line 359
    :cond_9e
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_up:I

    goto :goto_bb

    :cond_a1
    if-ne v2, v4, :cond_a6

    .line 364
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_down:I

    goto :goto_bb

    .line 365
    :cond_a6
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_up:I

    goto :goto_bb

    :cond_a9
    if-eqz v3, :cond_ae

    .line 369
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_warining_toast_pmk_trace_little_quick:I

    goto :goto_bb

    .line 371
    :cond_ae
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_ok:I

    goto :goto_bb

    :cond_b1
    if-eqz v3, :cond_b6

    .line 376
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_warining_toast_pmk_trace_little_quick:I

    goto :goto_bb

    .line 378
    :cond_b6
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_ok:I

    goto :goto_bb

    .line 382
    :cond_b9
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_tap_shutter:I

    .line 385
    :goto_bb
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mNotifyText:Landroid/widget/TextView;

    if-eqz v1, :cond_d1

    .line 386
    iget-boolean v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mIsSaving:Z

    if-eqz v2, :cond_c6

    const/16 v2, 0x8

    goto :goto_c7

    :cond_c6
    const/4 v2, 0x0

    :goto_c7
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-lez v0, :cond_d1

    .line 388
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mNotifyText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_d1
    return-void
.end method
