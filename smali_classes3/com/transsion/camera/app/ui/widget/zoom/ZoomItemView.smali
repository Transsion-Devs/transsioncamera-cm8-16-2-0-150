.class public Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;
.super Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$ZoomItemClickHandler;,
        Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$GestureListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBackGroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBaseFocalLength:F

.field private mBaseZoomRatio:F

.field private mEnabled:Z

.field private mFocalItems:Ljava/util/List;

.field private mFocalLength:Ljava/lang/String;

.field private mFocalSelecteRootView:Landroid/view/View;

.field private mFocalTextView:Landroid/widget/TextView;

.field private mFocalUnSelectView:Landroid/widget/TextView;

.field private mFocalZoomView:Landroid/widget/TextView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsLongPress:Z

.field private mIsRecording:Z

.field private mIsSatCamera:Z

.field private mIsSwitching:Z

.field private mItemSelectedTextSize:F

.field private mItemUnSelectedTextSize:F

.field private mLastScrollX:F

.field private mLastScrollY:F

.field private mMacroCustomValue:I

.field private mMaxZoomValue:I

.field private mMinZoomValue:I

.field private mRecordMaxValue:I

.field private mRecordMinValue:I

.field private mRootView:Landroid/view/View;

.field private mSelectSize:I

.field private mTextZoomView:Landroid/widget/TextView;

.field private mUnSelectSize:I

.field private mVideoRecordStopping:Z

.field private mZoomFocalViewRoot:Landroid/view/View;

.field private mZoomItemClickHandler:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$ZoomItemClickHandler;

.field private mZoomStateChangedListener:Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;

.field private mZoomStyle:I

.field private mZoomTextViewRoot:Landroid/view/View;

.field private mZoomValue:I


# direct methods
.method public static synthetic $r8$lambda$HTNRthzdwtshDxWrYWfDiz9cjlY(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRecording(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mIsRecording:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSatCamera(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mIsSatCamera:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSwitching(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mIsSwitching:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoRecordStopping(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mVideoRecordStopping:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomFocalViewRoot(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomFocalViewRoot:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomTextViewRoot(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomTextViewRoot:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomValue(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomValue:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mbackToTextZoomItemView(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->backToTextZoomItemView(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minRecordingRange(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->inRecordingRange()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monZoomFocalViewClick(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->onZoomFocalViewClick(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monZoomItemViewLongPress(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->onZoomItemViewLongPress()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monZoomTextViewClick(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->onZoomTextViewClick(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    new-instance p2, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$ZoomItemClickHandler;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$ZoomItemClickHandler;-><init>(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomItemClickHandler:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$ZoomItemClickHandler;

    const/4 p2, 0x1

    .line 73
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mEnabled:Z

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$layout;->zoom_item_layout:I

    invoke-virtual {v0, v1, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mRootView:Landroid/view/View;

    .line 78
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->zoom_focal_root:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomFocalViewRoot:Landroid/view/View;

    .line 79
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->zoom_focal_select_root:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalSelecteRootView:Landroid/view/View;

    .line 80
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->zoom_text_root:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomTextViewRoot:Landroid/view/View;

    .line 82
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->zoom_item_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mTextZoomView:Landroid/widget/TextView;

    .line 83
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->zoom_focal_item_value:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalZoomView:Landroid/widget/TextView;

    .line 84
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->zoom_focal_item_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalTextView:Landroid/widget/TextView;

    .line 85
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->zoom_focal_text_unselected:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalUnSelectView:Landroid/widget/TextView;

    .line 87
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_focal_item_unselect_bg:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mBackGroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalItems:Ljava/util/List;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->new_camera_zoom_item_unseleted_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mUnSelectSize:I

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->new_camera_zoom_item_seleted_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mSelectSize:I

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->new_camera_zoom_item_text_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mItemSelectedTextSize:F

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->new_camera_zoom_item_unselected_text_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mItemUnSelectedTextSize:F

    .line 93
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$GestureListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$GestureListenerImpl;-><init>(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView-IA;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 94
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mRootView:Landroid/view/View;

    new-instance p2, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private backToTextZoomItemView(I)V
    .registers 4

    .line 327
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    .line 328
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->showTextZoomValue(ZI)V

    :cond_9
    return-void
.end method

.method private convertFocalToZoomValue(I)I
    .registers 4

    mul-int/lit8 p1, p1, 0x64

    int-to-float p1, p1

    .line 496
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mBaseFocalLength:F

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    mul-int/lit8 p0, p0, 0x64

    .line 497
    sget-object p1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int v0, p0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_20

    .line 498
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :cond_20
    return p0
.end method

.method private convertZoomToFocal(I)I
    .registers 2

    int-to-float p1, p1

    .line 492
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mBaseFocalLength:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    div-int/lit8 p0, p0, 0x64

    return p0
.end method

.method private getMacroZoomRatio(Landroid/view/View;I)Ljava/lang/String;
    .registers 6

    .line 550
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "%dx"

    goto :goto_b

    :cond_9
    const-string p0, "%d"

    .line 551
    :goto_b
    rem-int/lit16 v0, p2, 0x2710

    if-nez v0, :cond_20

    .line 552
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p2, p2, 0x2710

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    const/16 v1, 0x1388

    if-ne v0, v1, :cond_3b

    add-int/lit16 p2, p2, -0x1388

    .line 556
    rem-int/lit16 v0, p2, 0x2710

    if-nez v0, :cond_3b

    .line 557
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p2, p2, 0x2710

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 560
    :cond_3b
    div-int/lit16 v0, p2, 0x2710

    if-nez v0, :cond_8d

    .line 561
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_69

    .line 562
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    div-int/lit16 p2, p2, 0x3e8

    rem-int/lit8 p2, p2, 0xa

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 564
    :cond_69
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    div-int/lit16 p2, p2, 0x3e8

    rem-int/lit8 p2, p2, 0xa

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 566
    :cond_8d
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%d."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    div-int/lit16 p2, p2, 0x3e8

    rem-int/lit8 p2, p2, 0xa

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNearestFocalLength()I
    .registers 7

    .line 532
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomValue:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->convertZoomToFocal(I)I

    move-result v0

    .line 533
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 534
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomValue:I

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->convertZoomToFocal(I)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v1, :cond_29

    .line 536
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalItems:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-gt v2, v5, :cond_26

    move v0, v5

    goto :goto_29

    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 542
    :cond_29
    :goto_29
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalItems:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_43

    .line 544
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalItems:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_43
    return v0
.end method

.method private getNextFocalLength()I
    .registers 8

    .line 508
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 509
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomValue:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->convertZoomToFocal(I)I

    move-result v1

    .line 511
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalItems:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_28

    .line 513
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalItems:Ljava/util/List;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_28
    const/4 v5, -0x1

    if-ne v2, v5, :cond_48

    .line 515
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->getNearestFocalLength()I

    move-result v2

    .line 516
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalItems:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, v3, :cond_49

    .line 518
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalItems:Ljava/util/List;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_48
    move v2, v1

    :cond_49
    :goto_49
    if-ge v4, v0, :cond_5d

    .line 522
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalItems:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v2, v3, :cond_5a

    return v3

    :cond_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    :cond_5d
    return v1
.end method

.method private getZoomRatio(Landroid/view/View;I)Ljava/lang/String;
    .registers 6

    .line 572
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p0

    const-string v0, "%dx"

    if-eqz p0, :cond_a

    move-object p0, v0

    goto :goto_c

    :cond_a
    const-string p0, "%d"

    .line 573
    :goto_c
    rem-int/lit16 v1, p2, 0x2710

    if-nez v1, :cond_21

    .line 574
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p2, p2, 0x2710

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 576
    :cond_21
    rem-int/lit16 v1, p2, 0x3e8

    const/16 v2, 0x1f4

    if-ne v1, v2, :cond_3e

    add-int/lit16 p2, p2, -0x1f4

    .line 578
    rem-int/lit16 v1, p2, 0x2710

    if-nez v1, :cond_3e

    .line 579
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p2, p2, 0x2710

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 582
    :cond_3e
    div-int/lit16 v1, p2, 0x2710

    if-nez v1, :cond_90

    .line 583
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 584
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    div-int/lit16 p2, p2, 0x3e8

    rem-int/lit8 p2, p2, 0xa

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 586
    :cond_6c
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    div-int/lit16 p2, p2, 0x3e8

    rem-int/lit8 p2, p2, 0xa

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 588
    :cond_90
    div-int/lit16 p2, p2, 0x3e8

    rem-int/lit16 p1, p2, 0x3e8

    if-nez p1, :cond_a5

    .line 589
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 591
    :cond_a5
    rem-int/lit8 p2, p2, 0xa

    if-lez p2, :cond_cd

    .line 593
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%d."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 595
    :cond_cd
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hideFocalView(Z)V
    .registers 2

    .line 410
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomFocalViewRoot:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private inRecordingRange()Z
    .registers 3

    .line 460
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mMinZoomValue:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mRecordMinValue:I

    if-lt v0, v1, :cond_c

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mRecordMaxValue:I

    if-ge v0, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private initZoomValue(Lcom/transsion/camera/app/common/ZoomInfo;)V
    .registers 3

    if-nez p1, :cond_3

    goto :goto_37

    .line 294
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomInfo;->getFocalLengths()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 295
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomInfo;->getFocalLengths()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalItems:Ljava/util/List;

    .line 297
    :cond_13
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomInfo;->getBaseZoomRatio()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mBaseZoomRatio:F

    .line 298
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomInfo;->getMaxZoomRatio()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mMaxZoomValue:I

    .line 299
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomInfo;->getMinZoomRatio()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mMinZoomValue:I

    .line 300
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomInfo;->getCustomZoomValue()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mMacroCustomValue:I

    .line 301
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomInfo;->getFocalLength()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 302
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomInfo;->getFocalLength()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalLength:Ljava/lang/String;

    :cond_37
    :goto_37
    return-void
.end method

.method private isCurrentSelected()Z
    .registers 2

    .line 504
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomTextViewRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomFocalViewRoot:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 4

    .line 273
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomStyle:I

    if-eqz v0, :cond_c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    goto :goto_c

    :cond_b
    return-void

    .line 276
    :cond_c
    :goto_c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomStateChangedListener:Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;->onMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11

    .line 109
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mEnabled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_6

    return v0

    .line 112
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    .line 113
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 114
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_61

    if-eq v2, v3, :cond_56

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1e

    const/4 p1, 0x3

    if-eq v2, p1, :cond_56

    goto :goto_73

    .line 124
    :cond_1e
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mLastScrollX:F

    sub-float v2, p1, v2

    .line 125
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mLastScrollY:F

    sub-float v4, v1, v4

    .line 126
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_33

    move v0, v3

    .line 127
    :cond_33
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mIsLongPress:Z

    if-nez v5, :cond_4a

    mul-float/2addr v2, v2

    mul-float/2addr v4, v4

    add-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    cmpl-double v2, v4, v6

    if-ltz v2, :cond_4a

    if-eqz v0, :cond_4a

    .line 128
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->onZoomItemViewLongPress()V

    .line 130
    :cond_4a
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mIsLongPress:Z

    if-eqz v0, :cond_51

    .line 131
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 133
    :cond_51
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mLastScrollX:F

    .line 134
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mLastScrollY:F

    goto :goto_73

    .line 138
    :cond_56
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mRootView:Landroid/view/View;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->stopTouching(Landroid/view/View;)V

    .line 139
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 140
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mIsLongPress:Z

    goto :goto_73

    .line 116
    :cond_61
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mRootView:Landroid/view/View;

    invoke-static {v2}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_6a

    return v0

    .line 119
    :cond_6a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mRootView:Landroid/view/View;

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->startTouching(Landroid/view/View;)V

    .line 120
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mLastScrollX:F

    .line 121
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mLastScrollY:F

    .line 145
    :goto_73
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v3
.end method

.method private onZoomFocalViewClick(Landroid/view/View;)V
    .registers 5

    .line 220
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomStyle:I

    const/4 v0, 0x1

    if-eqz p1, :cond_8c

    if-eq p1, v0, :cond_72

    const/4 v1, 0x2

    if-eq p1, v1, :cond_f

    const/4 v1, 0x5

    if-eq p1, v1, :cond_8c

    goto/16 :goto_99

    .line 229
    :cond_f
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->isCurrentSelected()Z

    move-result p1

    if-eqz p1, :cond_64

    .line 230
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalItems:Ljava/util/List;

    if-eqz p1, :cond_2a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v0, :cond_2a

    .line 231
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomItemClickHandler:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$ZoomItemClickHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomItemClickHandler:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$ZoomItemClickHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 234
    :cond_2a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomItemClickHandler:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$ZoomItemClickHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 235
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->getNextFocalLength()I

    move-result p1

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomStateChangedListener:Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mBaseZoomRatio:F

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;->onFocalLengthChanged(IFZ)V

    .line 237
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->showFocalViewByFocalClick(I)V

    .line 238
    sget-object v0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onZoomFocalViewClick] nextFocalLength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x32

    if-ne p1, v0, :cond_5d

    const/16 p1, 0x4e20

    .line 240
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomValue:I

    return-void

    .line 242
    :cond_5d
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->convertFocalToZoomValue(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomValue:I

    return-void

    .line 246
    :cond_64
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomValue:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mMinZoomValue:I

    if-eq p1, v1, :cond_99

    .line 247
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomStateChangedListener:Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mBaseZoomRatio:F

    invoke-interface {p1, v1, p0, v0}, Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;->onZoomChanged(IFZ)V

    return-void

    .line 222
    :cond_72
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->isCurrentSelected()Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 223
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomStateChangedListener:Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;->onAnimationClick()V

    return-void

    .line 225
    :cond_7e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomStateChangedListener:Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalLength:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mBaseZoomRatio:F

    invoke-interface {p1, v1, p0, v0}, Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;->onFocalLengthChanged(IFZ)V

    return-void

    .line 253
    :cond_8c
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomValue:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mMinZoomValue:I

    if-eq p1, v1, :cond_99

    .line 254
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomStateChangedListener:Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mBaseZoomRatio:F

    invoke-interface {p1, v1, p0, v0}, Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;->onZoomChanged(IFZ)V

    :cond_99
    :goto_99
    return-void
.end method

.method private onZoomItemViewLongPress()V
    .registers 3

    .line 264
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomStyle:I

    if-eqz v0, :cond_c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    goto :goto_c

    :cond_b
    return-void

    :cond_c
    :goto_c
    const/4 v0, 0x1

    .line 267
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mIsLongPress:Z

    .line 268
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomStateChangedListener:Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;->onZoomItemViewLongPress()V

    return-void
.end method

.method private onZoomTextViewClick(Landroid/view/View;)V
    .registers 5

    .line 178
    sget-object p1, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onZoomTextViewClick] mZoomStyle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 179
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomStyle:I

    const/4 v0, 0x1

    if-eqz p1, :cond_76

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3e

    const/4 v1, 0x3

    if-eq p1, v1, :cond_76

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2a

    const/4 v1, 0x5

    if-eq p1, v1, :cond_76

    goto :goto_75

    .line 181
    :cond_2a
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mMacroCustomValue:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomValue:I

    if-eq p1, v1, :cond_38

    .line 182
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomStateChangedListener:Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mBaseZoomRatio:F

    invoke-interface {v1, p1, p0, v0}, Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;->onMacroCustomZoomChanged(IFZ)V

    return-void

    .line 184
    :cond_38
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomStateChangedListener:Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;->onAnimationClick()V

    return-void

    .line 197
    :cond_3e
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->isCurrentSelected()Z

    move-result p1

    if-eqz p1, :cond_68

    .line 198
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomItemClickHandler:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$ZoomItemClickHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->getNextFocalLength()I

    move-result p1

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomStateChangedListener:Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mBaseZoomRatio:F

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;->onFocalLengthChanged(IFZ)V

    .line 201
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->showFocalViewByFocalClick(I)V

    const/16 v0, 0x32

    if-ne p1, v0, :cond_61

    const/16 p1, 0x4e20

    .line 203
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomValue:I

    return-void

    .line 205
    :cond_61
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->convertFocalToZoomValue(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomValue:I

    return-void

    .line 208
    :cond_68
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomValue:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mMinZoomValue:I

    if-eq p1, v1, :cond_75

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomStateChangedListener:Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mBaseZoomRatio:F

    invoke-interface {p1, v1, p0, v0}, Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;->onZoomChanged(IFZ)V

    :cond_75
    :goto_75
    return-void

    .line 190
    :cond_76
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomValue:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mMinZoomValue:I

    if-eq p1, v1, :cond_84

    .line 191
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomStateChangedListener:Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mBaseZoomRatio:F

    invoke-interface {p1, v1, p0, v0}, Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;->onZoomChanged(IFZ)V

    return-void

    .line 193
    :cond_84
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomStateChangedListener:Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;->onAnimationClick()V

    return-void
.end method

.method private showFocalView(ZI)V
    .registers 5

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomTextViewRoot:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomFocalViewRoot:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 416
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->updateFocalView(Z)V

    .line 417
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->updateFocalText(I)V

    .line 418
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomStyle:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_25

    .line 419
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomItemClickHandler:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$ZoomItemClickHandler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 420
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomItemClickHandler:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$ZoomItemClickHandler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_25
    return-void
.end method

.method private showFocalViewByFocalClick(I)V
    .registers 3

    const/4 v0, 0x1

    .line 323
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->showFocalView(ZI)V

    return-void
.end method

.method private showTexitViewWithFocal(Z)V
    .registers 4

    if-nez p1, :cond_6

    const/4 v0, 0x0

    .line 334
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->hideFocalView(Z)V

    .line 336
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mTextZoomView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 337
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->updateTextViewWitchFocal(Z)V

    return-void
.end method

.method private showTextViewNoZoom(Z)V
    .registers 4

    const/4 v0, 0x0

    .line 365
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->hideFocalView(Z)V

    .line 366
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomTextViewRoot:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setSelected(Z)V

    .line 367
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomTextViewRoot:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mTextZoomView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 369
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->updateTextNoZoomViewText()V

    return-void
.end method

.method private showTextZoomValue(ZI)V
    .registers 5

    const/4 v0, 0x0

    .line 307
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->hideFocalView(Z)V

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mTextZoomView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 309
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->updateTextZoomView(ZI)V

    return-void
.end method

.method private updateFocalText(I)V
    .registers 4

    .line 433
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalZoomView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_d

    :cond_b
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_d
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 434
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalZoomView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalUnSelectView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateFocalView(Z)V
    .registers 6

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalSelecteRootView:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    move v3, v2

    goto :goto_a

    :cond_9
    move v3, v1

    :goto_a
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalUnSelectView:Landroid/widget/TextView;

    if-eqz p1, :cond_12

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 428
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalZoomView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 429
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalUnSelectView:Landroid/widget/TextView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method private updateTextNoZoomViewText()V
    .registers 5

    .line 384
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mMinZoomValue:I

    .line 385
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mMacroCustomValue:I

    if-lez v1, :cond_7

    move v0, v1

    .line 388
    :cond_7
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mTextZoomView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    goto :goto_13

    :cond_11
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mBackGroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 389
    :goto_13
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mTextZoomView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 390
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mTextZoomView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 391
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mTextZoomView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 392
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mSelectSize:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 393
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_35

    .line 395
    :cond_2f
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mUnSelectSize:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 396
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 398
    :goto_35
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mTextZoomView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mTextZoomView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_45

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mItemSelectedTextSize:F

    goto :goto_47

    :cond_45
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mItemUnSelectedTextSize:F

    :goto_47
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 400
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mTextZoomView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomTextViewRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_58

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_5a

    :cond_58
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_5a
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 401
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mMacroCustomValue:I

    if-lez v1, :cond_6b

    .line 402
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mTextZoomView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->getMacroZoomRatio(Landroid/view/View;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 404
    :cond_6b
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mTextZoomView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->getZoomRatio(Landroid/view/View;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateTextViewWitchFocal(Z)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3f

    .line 342
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mIsSwitching:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomFocalViewRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_15

    .line 343
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->hideFocalView(Z)V

    .line 344
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mIsSwitching:Z

    .line 346
    :cond_15
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomFocalViewRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_65

    .line 347
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomTextViewRoot:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 348
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomTextViewRoot:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mTextZoomView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 350
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mTextZoomView:Landroid/widget/TextView;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mItemSelectedTextSize:F

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 351
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mTextZoomView:Landroid/widget/TextView;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomValue:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->getZoomRatio(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_65

    .line 354
    :cond_3f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomItemClickHandler:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$ZoomItemClickHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 355
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomTextViewRoot:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 356
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomTextViewRoot:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 357
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mTextZoomView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 358
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mTextZoomView:Landroid/widget/TextView;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mItemUnSelectedTextSize:F

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 359
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mTextZoomView:Landroid/widget/TextView;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mMinZoomValue:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->getZoomRatio(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    :cond_65
    :goto_65
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mTextZoomView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomTextViewRoot:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_72

    sget-object p0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_74

    :cond_72
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_74
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private updateTextZoomView(ZI)V
    .registers 5

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomTextViewRoot:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomTextViewRoot:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mTextZoomView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mTextZoomView:Landroid/widget/TextView;

    if-eqz p1, :cond_17

    iget p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mItemSelectedTextSize:F

    goto :goto_19

    :cond_17
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mItemUnSelectedTextSize:F

    :goto_19
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 317
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mTextZoomView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomTextViewRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mTextZoomView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->getZoomRatio(Landroid/view/View;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_35

    :cond_2d
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mTextZoomView:Landroid/widget/TextView;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mMinZoomValue:I

    invoke-direct {p0, p2, v0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->getZoomRatio(Landroid/view/View;I)Ljava/lang/String;

    move-result-object p2

    .line 317
    :goto_35
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mTextZoomView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomTextViewRoot:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_45

    sget-object p0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_47

    :cond_45
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_47
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private updateZoomStatus(Z)V
    .registers 4

    .line 471
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomStyle:I

    if-eqz v0, :cond_26

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    const/4 v1, 0x4

    if-eq v0, v1, :cond_14

    const/4 v1, 0x5

    if-eq v0, v1, :cond_26

    return-void

    .line 484
    :cond_14
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->showTextViewNoZoom(Z)V

    return-void

    .line 477
    :cond_18
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->showTexitViewWithFocal(Z)V

    return-void

    .line 480
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalLength:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->showFocalView(ZI)V

    return-void

    .line 474
    :cond_26
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomValue:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->showTextZoomValue(ZI)V

    return-void
.end method


# virtual methods
.method public getFocalLength()Ljava/lang/String;
    .registers 1

    .line 618
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalLength:Ljava/lang/String;

    return-object p0
.end method

.method public getMacroZoomCustomValue()I
    .registers 1

    .line 628
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mMacroCustomValue:I

    return p0
.end method

.method public getMaxZoomRatio()I
    .registers 1

    .line 608
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mMaxZoomValue:I

    return p0
.end method

.method public getMinZoomRatio()I
    .registers 1

    .line 603
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mMinZoomValue:I

    return p0
.end method

.method public inCurrentRange(I)Z
    .registers 3

    .line 463
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mMinZoomValue:I

    if-lt p1, v0, :cond_a

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mMaxZoomValue:I

    if-ge p1, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public resetFocalView()V
    .registers 2

    .line 380
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomFocalViewRoot:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setBaseFocalLength(F)V
    .registers 2

    .line 623
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mBaseFocalLength:F

    return-void
.end method

.method public setEnabled(Z)V
    .registers 4

    .line 103
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 104
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mEnabled:Z

    .line 105
    sget-object p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setEnabled] enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setZoomInfo(Lcom/transsion/camera/app/common/ZoomInfo;)V
    .registers 2

    .line 287
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->initZoomValue(Lcom/transsion/camera/app/common/ZoomInfo;)V

    return-void
.end method

.method public setZoomItemViewStyle(I)V
    .registers 2

    .line 613
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomStyle:I

    return-void
.end method

.method public setZoomStateChangedListener(Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;)V
    .registers 2

    .line 282
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomStateChangedListener:Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;

    return-void
.end method

.method public updateModeSwitching(Z)V
    .registers 2

    .line 633
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mIsSwitching:Z

    return-void
.end method

.method public updateRecordingStatus(ZZII)V
    .registers 5

    .line 643
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mIsRecording:Z

    .line 644
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mIsSatCamera:Z

    .line 645
    iput p3, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mRecordMinValue:I

    .line 646
    iput p4, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mRecordMaxValue:I

    return-void
.end method

.method public updateVideoRecordStopStatus(Z)V
    .registers 2

    .line 638
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mVideoRecordStopping:Z

    return-void
.end method

.method public updateZoomValue(I)V
    .registers 7

    .line 440
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomValue:I

    .line 441
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mZoomStyle:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_25

    .line 442
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->convertZoomToFocal(I)I

    move-result v0

    .line 443
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mFocalLength:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x4e20

    if-ne p1, v4, :cond_18

    const/16 v0, 0x32

    :cond_18
    sub-int/2addr v0, v3

    .line 447
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_21

    move v1, v2

    :cond_21
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->updateZoomStatus(Z)V

    return-void

    :cond_25
    const/4 v3, 0x3

    if-eq v0, v3, :cond_34

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2c

    goto :goto_34

    .line 455
    :cond_2c
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->inCurrentRange(I)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->updateZoomStatus(Z)V

    return-void

    .line 449
    :cond_34
    :goto_34
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mMacroCustomValue:I

    if-lez v0, :cond_48

    if-eq v0, p1, :cond_43

    sub-int/2addr v0, p1

    .line 450
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_44

    :cond_43
    move v1, v2

    :cond_44
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->updateZoomStatus(Z)V

    return-void

    .line 452
    :cond_48
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->mMinZoomValue:I

    if-ne p1, v0, :cond_4d

    move v1, v2

    :cond_4d
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->updateZoomStatus(Z)V

    return-void
.end method
