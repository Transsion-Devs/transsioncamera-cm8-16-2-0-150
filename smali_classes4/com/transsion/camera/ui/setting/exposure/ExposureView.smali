.class public Lcom/transsion/camera/ui/setting/exposure/ExposureView;
.super Lcom/transsion/camera/app/ui/widget/RotateLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;,
        Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sMaxEv:I

.field private static sMinEv:I


# instance fields
.field private mEvChangeStartNotified:Z

.field private mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

.field private mEvSeekbarContainer:Landroid/view/View;

.field private mFocusViewX:I

.field private mFocusViewY:I

.field private mLastEv:F

.field private mLastProgress:I

.field private mListener:Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;

.field private mOrientation:I

.field private final mProgressChangeListener:Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar$OnProgressChangeListener;

.field private mShowAreaBottom:I

.field private mShowAreaLeft:I

.field private mShowAreaRight:I

.field private mShowAreaTop:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmEvChangeStartNotified(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvChangeStartNotified:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEvSeekbar(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastEv(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mLastEv:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mListener:Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmEvChangeStartNotified(Lcom/transsion/camera/ui/setting/exposure/ExposureView;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvChangeStartNotified:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastEv(Lcom/transsion/camera/ui/setting/exposure/ExposureView;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mLastEv:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastProgress(Lcom/transsion/camera/ui/setting/exposure/ExposureView;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mLastProgress:I

    return-void
.end method

.method static bridge synthetic -$$Nest$monEvChanged(Lcom/transsion/camera/ui/setting/exposure/ExposureView;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->onEvChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsMaxEv()I
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->sMaxEv:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetsMinEv()I
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->sMinEv:I

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ExposureView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mLastEv:F

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvChangeStartNotified:Z

    .line 197
    new-instance p1, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;-><init>(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mProgressChangeListener:Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar$OnProgressChangeListener;

    return-void
.end method

.method private computeLayoutDirect()Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;
    .registers 7

    .line 280
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;->RIGHT:Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;

    .line 281
    iget v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mFocusViewX:I

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbarContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 282
    iget v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mFocusViewY:I

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbarContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 283
    iget v3, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mFocusViewX:I

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbarContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 284
    iget v4, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mFocusViewY:I

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbarContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 285
    iget v5, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mOrientation:I

    if-eqz v5, :cond_54

    const/16 v3, 0x5a

    if-eq v5, v3, :cond_4d

    const/16 v2, 0xb4

    if-eq v5, v2, :cond_46

    const/16 v1, 0x10e

    if-eq v5, v1, :cond_3f

    goto :goto_5b

    .line 292
    :cond_3f
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mShowAreaBottom:I

    if-le v4, p0, :cond_5b

    .line 293
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;->LEFT:Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;

    return-object p0

    .line 298
    :cond_46
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mShowAreaLeft:I

    if-ge v1, p0, :cond_5b

    .line 299
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;->LEFT:Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;

    return-object p0

    .line 303
    :cond_4d
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mShowAreaTop:I

    if-ge v2, p0, :cond_5b

    .line 304
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;->LEFT:Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;

    return-object p0

    .line 287
    :cond_54
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mShowAreaRight:I

    if-le v3, p0, :cond_5b

    .line 288
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;->LEFT:Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;

    return-object p0

    :cond_5b
    :goto_5b
    return-object v0
.end method

.method private extractDeltaScale(FLcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;)I
    .registers 7

    .line 166
    invoke-virtual {p2}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->getProgress()I

    move-result v0

    .line 167
    invoke-virtual {p2}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->getMax()I

    move-result p2

    .line 170
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mOrientation:I

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p0, :cond_15

    const/16 v2, 0x5a

    if-ne p0, v2, :cond_13

    goto :goto_15

    :cond_13
    const/4 v2, 0x0

    goto :goto_17

    :cond_15
    :goto_15
    div-float v2, p1, v1

    :goto_17
    const/16 v3, 0xb4

    if-eq p0, v3, :cond_1f

    const/16 v3, 0x10e

    if-ne p0, v3, :cond_22

    :cond_1f
    neg-float p0, p1

    div-float v2, p0, v1

    .line 177
    :cond_22
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr v0, p0

    if-le v0, p2, :cond_2a

    return p2

    :cond_2a
    if-gez v0, :cond_2e

    const/4 p0, 0x0

    return p0

    :cond_2e
    return v0
.end method

.method private onEvChanged(Z)V
    .registers 5

    .line 188
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onEvChanged] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 189
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvChangeStartNotified:Z

    if-eqz p1, :cond_21

    .line 191
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mListener:Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;->onTrackingTouchStatusChanged(Z)V

    return-void

    .line 193
    :cond_21
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mListener:Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;->onTrackingTouchStatusChanged(Z)V

    return-void
.end method

.method private reLayout()V
    .registers 4

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    if-nez v0, :cond_5

    return-void

    .line 107
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 108
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->computeLayoutDirect()Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v2, 0x1

    if-eq v1, v2, :cond_19

    goto :goto_24

    :cond_19
    const v1, 0x800015

    .line 110
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_24

    :cond_1f
    const v1, 0x800013

    .line 113
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 116
    :goto_24
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateEvProgressbar(F)V
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->extractDeltaScale(FLcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;)I

    move-result p1

    .line 155
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mLastProgress:I

    if-ne v0, p1, :cond_b

    return-void

    .line 158
    :cond_b
    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mLastProgress:I

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->updateBackgroundVisibility(Z)V

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->setProgress(I)V

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mProgressChangeListener:Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar$OnProgressChangeListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar$OnProgressChangeListener;->onProgressChanged(I)V

    return-void
.end method


# virtual methods
.method public getEvSeekbarVisibility()I
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    return p0
.end method

.method public getFocusViewX()I
    .registers 1

    .line 250
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mFocusViewX:I

    return p0
.end method

.method public getFocusViewY()I
    .registers 1

    .line 254
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mFocusViewY:I

    return p0
.end method

.method protected initExposureView(II)V
    .registers 4

    .line 87
    sput p1, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->sMaxEv:I

    .line 88
    sput p2, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->sMinEv:I

    sub-int/2addr p1, p2

    mul-int/lit16 p1, p1, 0xfa

    .line 90
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->setMax(I)V

    .line 91
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->resetExposureView()V

    .line 92
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mProgressChangeListener:Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar$OnProgressChangeListener;

    invoke-virtual {p2, p0}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->setOnProgressChangeListener(Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar$OnProgressChangeListener;)V

    .line 93
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[initExposureView] ev range: ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->sMaxEv:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->sMinEv:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] , seekBarMax = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isEvSeekBarVisible()Z
    .registers 2

    .line 269
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 272
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    return v0
.end method

.method public onFinishInflate()V
    .registers 2

    .line 58
    invoke-super {p0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->onFinishInflate()V

    .line 59
    sget v0, Lcom/transsion/camera/R$id;->ev_seekbar_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbarContainer:Landroid/view/View;

    .line 60
    sget v0, Lcom/transsion/camera/R$id;->ev_seekbar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    return-void
.end method

.method protected onTrackingTouch(ZZ)V
    .registers 4

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mProgressChangeListener:Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar$OnProgressChangeListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_b

    .line 134
    invoke-interface {v0}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar$OnProgressChangeListener;->onStartTracking()V

    return-void

    :cond_b
    if-eqz p2, :cond_1c

    .line 137
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mLastEv:F

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xd

    invoke-virtual {p1, v0, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 139
    :cond_1c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mProgressChangeListener:Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar$OnProgressChangeListener;

    invoke-interface {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar$OnProgressChangeListener;->onStopTracking()V

    return-void
.end method

.method protected onVerticalScroll(Landroid/view/MotionEvent;F)V
    .registers 4

    if-eqz p1, :cond_c

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    .line 145
    invoke-direct {p0, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->updateEvProgressbar(F)V

    :cond_c
    return-void
.end method

.method protected resetExposureView()V
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->getMax()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 99
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->setProgress(I)V

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->updateBackgroundVisibility(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 5

    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 66
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mEvChangeStartNotified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvChangeStartNotified:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    if-eqz v0, :cond_2a

    .line 69
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 71
    :cond_2a
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvChangeStartNotified:Z

    if-eqz p1, :cond_32

    const/4 p1, 0x0

    .line 72
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->onEvChanged(Z)V

    :cond_32
    return-void
.end method

.method public setFocusLocation(FF)V
    .registers 3

    float-to-int p1, p1

    .line 245
    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mFocusViewX:I

    float-to-int p1, p2

    .line 246
    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mFocusViewY:I

    return-void
.end method

.method protected setListener(Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mListener:Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 3

    .line 121
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 122
    iget p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mOrientation:I

    if-ne p2, p1, :cond_8

    return-void

    .line 125
    :cond_8
    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mOrientation:I

    .line 126
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->reLayout()V

    return-void
.end method

.method public setShowArea(IIII)V
    .registers 5

    .line 45
    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mShowAreaTop:I

    .line 46
    iput p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mShowAreaLeft:I

    .line 47
    iput p3, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mShowAreaRight:I

    .line 48
    iput p4, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mShowAreaBottom:I

    .line 49
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->reLayout()V

    return-void
.end method

.method public updateSeekBarVisibility(Z)V
    .registers 2

    .line 258
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    if-nez p0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_d

    const/16 p1, 0x8

    .line 262
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_d
    const/4 p1, 0x0

    .line 264
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
