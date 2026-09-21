.class public Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sNun:Lcom/transsion/camera/app/ui/scroll/ScrollMode;


# instance fields
.field private mBottomTop:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

.field private mBottomUp:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

.field private mLeftRight:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

.field private mRightLeft:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

.field private mTopBottom:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

.field private mTopDown:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

.field private final mTriggerXModeThreshold:I

.field private final mTriggerYModeThreshold:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    new-instance v0, Lcom/transsion/camera/app/ui/scroll/NullMode;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/scroll/NullMode;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->sNun:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->sNun:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mTopDown:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    .line 10
    iput-object v0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mBottomUp:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    .line 11
    iput-object v0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mBottomTop:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    .line 12
    iput-object v0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mLeftRight:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    .line 13
    iput-object v0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mTopBottom:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    .line 14
    iput-object v0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mRightLeft:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    const/4 v0, 0x2

    .line 18
    iput v0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mTriggerXModeThreshold:I

    const/16 v0, 0x18

    .line 19
    iput v0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mTriggerYModeThreshold:I

    return-void
.end method

.method private enterHorizontalScroll(II)Z
    .registers 4

    .line 114
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget p0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mTriggerXModeThreshold:I

    if-le v0, p0, :cond_14

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lt p0, p1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private enterVerticalScroll(II)Z
    .registers 4

    .line 110
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget p0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mTriggerYModeThreshold:I

    if-le v0, p0, :cond_14

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lt p0, p1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getBottomUpMode()Lcom/transsion/camera/app/ui/scroll/ScrollMode;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mBottomUp:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-object p0
.end method

.method public getLeftRightMode()Lcom/transsion/camera/app/ui/scroll/ScrollMode;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mLeftRight:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-object p0
.end method

.method public getRightLeftMode()Lcom/transsion/camera/app/ui/scroll/ScrollMode;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mRightLeft:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-object p0
.end method

.method public getTopDown()Lcom/transsion/camera/app/ui/scroll/ScrollMode;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mTopDown:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-object p0
.end method

.method public getTopDownMode()Lcom/transsion/camera/app/ui/scroll/ScrollMode;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mTopBottom:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-object p0
.end method

.method public registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V
    .registers 4

    .line 23
    sget-object v0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider$1;->$SwitchMap$com$transsion$camera$app$ui$scroll$IScrollModeProvider$ScrollType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_3c

    return-void

    .line 40
    :pswitch_c
    new-instance p1, Lcom/transsion/camera/app/ui/scroll/LeftRight;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/scroll/LeftRight;-><init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mRightLeft:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-void

    .line 37
    :pswitch_14
    new-instance p1, Lcom/transsion/camera/app/ui/scroll/LeftRight;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/scroll/LeftRight;-><init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mLeftRight:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-void

    .line 34
    :pswitch_1c
    new-instance p1, Lcom/transsion/camera/app/ui/scroll/DownUp;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/scroll/DownUp;-><init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mBottomUp:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-void

    .line 31
    :pswitch_24
    new-instance p1, Lcom/transsion/camera/app/ui/scroll/TopBottom;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/scroll/TopBottom;-><init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mBottomTop:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-void

    .line 28
    :pswitch_2c
    new-instance p1, Lcom/transsion/camera/app/ui/scroll/DownUp;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/scroll/DownUp;-><init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mTopDown:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-void

    .line 25
    :pswitch_34
    new-instance p1, Lcom/transsion/camera/app/ui/scroll/TopBottom;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/scroll/TopBottom;-><init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mTopBottom:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-void

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_34
        :pswitch_2c
        :pswitch_24
        :pswitch_1c
        :pswitch_14
        :pswitch_c
    .end packed-switch
.end method

.method public suitableMode()Lcom/transsion/camera/app/ui/scroll/ScrollMode;
    .registers 1

    .line 73
    sget-object p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->sNun:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-object p0
.end method

.method public suitableMode(IIZ)Lcom/transsion/camera/app/ui/scroll/ScrollMode;
    .registers 5

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->enterHorizontalScroll(II)Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p3, :cond_10

    if-lez p1, :cond_d

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mRightLeft:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-object p0

    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mLeftRight:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-object p0

    .line 99
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mLeftRight:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-object p0

    .line 100
    :cond_13
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->enterVerticalScroll(II)Z

    move-result p1

    if-eqz p1, :cond_2b

    if-eqz p3, :cond_23

    if-lez p2, :cond_20

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mBottomTop:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-object p0

    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mTopBottom:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-object p0

    :cond_23
    if-lez p2, :cond_28

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mBottomUp:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-object p0

    :cond_28
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mTopDown:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-object p0

    .line 106
    :cond_2b
    sget-object p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->sNun:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-object p0
.end method

.method public unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V
    .registers 3

    .line 48
    sget-object v0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider$1;->$SwitchMap$com$transsion$camera$app$ui$scroll$IScrollModeProvider$ScrollType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_2a

    return-void

    .line 65
    :pswitch_c
    sget-object p1, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->sNun:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mRightLeft:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-void

    .line 62
    :pswitch_11
    sget-object p1, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->sNun:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mLeftRight:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-void

    .line 59
    :pswitch_16
    sget-object p1, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->sNun:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mBottomUp:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-void

    .line 56
    :pswitch_1b
    sget-object p1, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->sNun:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mBottomTop:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-void

    .line 53
    :pswitch_20
    sget-object p1, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->sNun:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mTopDown:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-void

    .line 50
    :pswitch_25
    sget-object p1, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->sNun:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mTopBottom:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-void

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
        :pswitch_c
    .end packed-switch
.end method
