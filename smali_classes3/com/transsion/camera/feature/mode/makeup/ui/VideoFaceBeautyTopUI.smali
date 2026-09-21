.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$ContrastListener;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$BarClickListener;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarChangeListener;
    }
.end annotation


# static fields
.field public static final CLICK_FB_BAR:I = 0x1

.field private static final NONE_SUPPORT:[I

.field private static final SUPPORT_PROGRESS_LIST:[I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected mContext:Landroid/content/Context;

.field private mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$ContrastListener;

.field protected mFaceBeautyTopUIRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

.field protected mITopUICallBack:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI$ITopUICallBack;

.field private mListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$BarClickListener;

.field private mScreenFormType:I

.field private mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

.field protected mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarChangeListener;

.field private mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field protected mState:I

.field private mSwitchContainer:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$z0RhbpurpOrHr9LfIZlTUKgg9t4(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;IZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->lambda$onFinishInflate$0(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoFaceBeautyTopUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x32

    const/16 v1, 0x64

    const/4 v2, 0x0

    .line 34
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->SUPPORT_PROGRESS_LIST:[I

    .line 35
    new-array v0, v2, [I

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->NONE_SUPPORT:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 306
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 46
    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mScreenFormType:I

    .line 307
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(IZ)V
    .registers 3

    .line 328
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarChangeListener;

    if-eqz p0, :cond_7

    .line 329
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarChangeListener;->onProgressChanged(IZ)V

    :cond_7
    return-void
.end method


# virtual methods
.method public currentState()I
    .registers 1

    .line 293
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mState:I

    return p0
.end method

.method public notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V
    .registers 7

    .line 104
    iget-object p6, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz p6, :cond_20

    .line 105
    const-string p6, "muscle_care"

    invoke-virtual {p6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 106
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    sget-object p6, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->SUPPORT_PROGRESS_LIST:[I

    invoke-virtual {p1, p6}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setSupportProgressList([I)V

    goto :goto_1b

    .line 108
    :cond_14
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    sget-object p6, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->NONE_SUPPORT:[I

    invoke-virtual {p1, p6}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setSupportProgressList([I)V

    .line 110
    :goto_1b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->updateSeekBarData(IIII)V

    :cond_20
    return-void
.end method

.method public notifySelect(IZ)V
    .registers 3

    return-void
.end method

.method public notifyState(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public notifyState(IZ)V
    .registers 6

    .line 258
    sget-object p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyState mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 259
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mState:I

    const/4 p2, 0x0

    if-eqz p1, :cond_50

    const/16 v0, 0x83

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-eq p1, v2, :cond_40

    const/4 p2, 0x2

    if-eq p1, p2, :cond_30

    return-void

    .line 276
    :cond_30
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->updateSeekBarVisibility(Z)V

    .line 277
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSwitchContainer:Landroid/view/View;

    if-eqz p1, :cond_3a

    .line 278
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    :cond_3a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 269
    :cond_40
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->updateSeekBarVisibility(Z)V

    .line 270
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSwitchContainer:Landroid/view/View;

    if-eqz p1, :cond_4a

    .line 271
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 273
    :cond_4a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 262
    :cond_50
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->updateSeekBarVisibility(Z)V

    .line 263
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSwitchContainer:Landroid/view/View;

    if-eqz p1, :cond_5a

    .line 264
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 266
    :cond_5a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x84

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public notifyState(IZZZ)V
    .registers 5

    .line 289
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->notifyState(IZ)V

    return-void
.end method

.method public onBackPressed()Z
    .registers 4

    const/4 v0, 0x1

    .line 248
    sput-boolean v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    .line 249
    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mState:I

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 250
    invoke-virtual {p0, v2, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->notifyState(IZ)V

    return v0

    :cond_c
    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$BarClickListener;

    if-eqz p0, :cond_8

    const/4 p1, 0x1

    .line 84
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$BarClickListener;->barOnClick(I)V

    :cond_8
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 312
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 313
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v0, :cond_4d

    .line 314
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->switch_bar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSwitchContainer:Landroid/view/View;

    .line 319
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->contrast:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 321
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 324
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 325
    sget v1, Lcom/transsion/camera/feature/makeup/R$layout;->video_face_beauty_top_seekbar_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mFaceBeautyTopUIRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    .line 326
    sget v1, Lcom/transsion/camera/feature/makeup/R$id;->video_face_beauty_seek_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    .line 327
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setOnSeekBarChangeListener(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$OnSeekBarChangeListener;)V

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mFaceBeautyTopUIRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    sget v1, Lcom/transsion/camera/feature/makeup/R$id;->video_face_beauty_top_seekbar_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    :cond_4d
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 63
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_21

    if-eq p2, v1, :cond_11

    const/4 v2, 0x3

    if-eq p2, v2, :cond_11

    goto :goto_2f

    .line 72
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$ContrastListener;

    if-eqz p0, :cond_2f

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->contrast:I

    if-ne v0, p2, :cond_2f

    const/4 p2, 0x0

    .line 73
    invoke-interface {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$ContrastListener;->closeContrast(Z)V

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_2f

    .line 65
    :cond_21
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$ContrastListener;

    if-eqz p0, :cond_2f

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->contrast:I

    if-ne v0, p2, :cond_2f

    .line 66
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$ContrastListener;->openContrast()V

    .line 67
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_2f
    :goto_2f
    return v1
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 238
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setEnabled(Z)V
    .registers 5

    .line 337
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 338
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 342
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz p0, :cond_20

    .line 343
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_20
    return-void
.end method

.method public setIPMasterTopUICallBack(Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI$ITopUICallBack;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mITopUICallBack:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI$ITopUICallBack;

    return-void
.end method

.method public setListener(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$BarClickListener;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarChangeListener;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$ContrastListener;)V
    .registers 4

    .line 242
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$BarClickListener;

    .line 243
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarChangeListener;

    .line 244
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$ContrastListener;

    return-void
.end method

.method public updateLayout(II)V
    .registers 16

    .line 120
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mScreenFormType:I

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 122
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x0

    .line 123
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0xb

    .line 125
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 126
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 127
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 128
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setRotationY(F)V

    .line 129
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 130
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v5, p2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setOrientation(I)V

    :cond_34
    const/4 v5, 0x1

    const/16 v7, 0xb4

    const/16 v8, 0x5a

    const/16 v9, 0x53

    const/16 v10, 0x10e

    if-ne p1, v5, :cond_c5

    .line 133
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_expand_seekbar_layout_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-eq p2, v8, :cond_a0

    const/16 v4, 0x35

    if-eq p2, v7, :cond_85

    if-eq p2, v10, :cond_6a

    .line 156
    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 157
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_seek_bar_expand_top_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 158
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_seek_bar_expand_bottom_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 159
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_seek_bar_expand_left_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_ba

    .line 148
    :cond_6a
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 149
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_seek_bar_expand_top_margin_90:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 150
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_seek_bar_expand_bottom_margin_90:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 151
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_seek_bar_expand_left_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_ba

    .line 142
    :cond_85
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 143
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_seek_bar_expand_bottom_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 144
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_seek_bar_expand_top_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 145
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_seek_bar_expand_left_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_ba

    .line 136
    :cond_a0
    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 137
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_seek_bar_expand_bottom_margin_90:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 138
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_seek_bar_expand_top_margin_90:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 139
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_seek_bar_expand_left_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 162
    :goto_ba
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    add-int/lit16 v4, p2, 0x10e

    rem-int/lit16 v4, v4, 0x168

    invoke-virtual {v3, v4, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto/16 :goto_1f3

    :cond_c5
    if-eqz p1, :cond_1be

    const/4 v5, 0x2

    if-eq p1, v5, :cond_1be

    const/4 v5, 0x3

    if-ne p1, v5, :cond_cf

    goto/16 :goto_1be

    .line 182
    :cond_cf
    iget v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mScreenFormType:I

    const/4 v11, 0x4

    const/high16 v12, 0x43340000    # 180.0f

    if-ne v5, v11, :cond_fe

    .line 183
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_seekbar_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v4, 0x55

    .line 184
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 185
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v4, v12}, Landroid/view/View;->setRotationY(F)V

    .line 186
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->make_up_top_ui_hover_margin_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 187
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->make_up_top_ui_hover_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 188
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v8, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto/16 :goto_1f3

    :cond_fe
    const/4 v11, 0x5

    if-ne v5, v11, :cond_129

    .line 190
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_seekbar_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v4, 0x33

    .line 191
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 192
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v4, v12}, Landroid/view/View;->setRotationY(F)V

    .line 193
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->make_up_top_ui_hover_margin_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 194
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->make_up_top_ui_hover_margin_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 195
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v10, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto/16 :goto_1f3

    :cond_129
    const/4 v11, 0x7

    if-ne v5, v11, :cond_1f3

    .line 197
    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_lr_seekbar_width_flip:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-eq p2, v8, :cond_193

    if-eq p2, v7, :cond_176

    if-eq p2, v10, :cond_157

    .line 222
    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 223
    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_lr_seekbar_margin_bottom_flip:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 224
    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_lr_seekbar_margin_left_flip:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 225
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5, v2, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 226
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v2, v6}, Landroid/view/View;->setRotation(F)V

    goto :goto_1b1

    .line 214
    :cond_157
    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 215
    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_lr_seekbar_margin_top_flip:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 216
    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_lr_seekbar_margin_left_flip:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 217
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5, v7, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 218
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {v2, v5}, Landroid/view/View;->setRotation(F)V

    goto :goto_1b1

    .line 207
    :cond_176
    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 208
    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_lr_seekbar_margin_top_flip:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 209
    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_lr_seekbar_margin_left_flip:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 210
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5, v7, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 211
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v2, v6}, Landroid/view/View;->setRotation(F)V

    goto :goto_1b1

    .line 200
    :cond_193
    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 201
    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_lr_seekbar_margin_top_flip:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 202
    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_lr_seekbar_margin_left_flip:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 203
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5, v7, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 204
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v2, v5}, Landroid/view/View;->setRotation(F)V

    .line 229
    :goto_1b1
    sget v2, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_lr_seekbar_setting_margin_bottom_flip:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    neg-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 230
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1f3

    .line 166
    :cond_1be
    :goto_1be
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_column_seekbar_layout_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v4, 0x51

    .line 167
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 168
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v4

    if-eqz v4, :cond_1e6

    .line 169
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->vf_top_bar_margin_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    if-ne p2, v8, :cond_1dc

    move v8, v10

    goto :goto_1e0

    :cond_1dc
    if-ne p2, v10, :cond_1df

    goto :goto_1e0

    :cond_1df
    move v8, p2

    .line 177
    :goto_1e0
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v3, v8}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setOrientation(I)V

    goto :goto_1ee

    .line 179
    :cond_1e6
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_big_item_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 181
    :goto_1ee
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v2, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 232
    :cond_1f3
    :goto_1f3
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->updateProgressText(II)V

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 2

    return-void
.end method

.method protected updateSeekBarVisibility(Z)V
    .registers 2

    .line 348
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz p0, :cond_d

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_a

    :cond_8
    const/16 p1, 0x8

    .line 349
    :goto_a
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method
