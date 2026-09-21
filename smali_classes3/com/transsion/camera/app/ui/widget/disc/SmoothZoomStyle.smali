.class public final enum Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

.field public static final enum NONE:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

.field public static final enum ZOOM_MIN_100_MAX_1000:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

.field public static final enum ZOOM_MIN_100_MAX_1500:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

.field public static final enum ZOOM_MIN_100_MAX_500:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

.field public static final enum ZOOM_MIN_60_MAX_1000:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

.field public static final enum ZOOM_MIN_60_MAX_10000:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

.field public static final enum ZOOM_MIN_60_MAX_12000:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

.field public static final enum ZOOM_MIN_60_MAX_1500:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

.field public static final enum ZOOM_MIN_60_MAX_2000:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

.field public static final enum ZOOM_MIN_60_MAX_2500:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

.field public static final enum ZOOM_MIN_60_MAX_3000:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

.field public static final enum ZOOM_MIN_60_MAX_500:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

.field public static final enum ZOOM_MIN_60_MAX_5000:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

.field public static final enum ZOOM_MIN_60_MAX_6000:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;


# instance fields
.field private mMaxValue:I

.field private mMinValue:I


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;
    .registers 14

    .line 17
    sget-object v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->NONE:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    sget-object v1, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->ZOOM_MIN_60_MAX_500:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    sget-object v2, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->ZOOM_MIN_60_MAX_1000:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    sget-object v3, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->ZOOM_MIN_60_MAX_1500:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    sget-object v4, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->ZOOM_MIN_60_MAX_2000:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    sget-object v5, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->ZOOM_MIN_60_MAX_2500:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    sget-object v6, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->ZOOM_MIN_60_MAX_3000:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    sget-object v7, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->ZOOM_MIN_60_MAX_5000:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    sget-object v8, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->ZOOM_MIN_60_MAX_6000:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    sget-object v9, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->ZOOM_MIN_60_MAX_12000:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    sget-object v10, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->ZOOM_MIN_100_MAX_500:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    sget-object v11, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->ZOOM_MIN_100_MAX_1000:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    sget-object v12, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->ZOOM_MIN_100_MAX_1500:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    sget-object v13, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->ZOOM_MIN_60_MAX_10000:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    filled-new-array/range {v0 .. v13}, [Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 8

    .line 19
    new-instance v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->NONE:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    .line 21
    new-instance v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    const-string v1, "ZOOM_MIN_60_MAX_500"

    const/4 v2, 0x1

    const/16 v3, 0x1770

    const v4, 0xc350

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->ZOOM_MIN_60_MAX_500:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    .line 23
    new-instance v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    const-string v1, "ZOOM_MIN_60_MAX_1000"

    const/4 v2, 0x2

    const v5, 0x186a0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->ZOOM_MIN_60_MAX_1000:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    .line 25
    new-instance v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    const-string v1, "ZOOM_MIN_60_MAX_1500"

    const/4 v2, 0x3

    const v6, 0x249f0

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->ZOOM_MIN_60_MAX_1500:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    .line 27
    new-instance v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    const/4 v1, 0x4

    const v2, 0x30d40

    const-string v7, "ZOOM_MIN_60_MAX_2000"

    invoke-direct {v0, v7, v1, v3, v2}, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->ZOOM_MIN_60_MAX_2000:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    .line 29
    new-instance v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    const/4 v1, 0x5

    const v2, 0x3d090

    const-string v7, "ZOOM_MIN_60_MAX_2500"

    invoke-direct {v0, v7, v1, v3, v2}, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->ZOOM_MIN_60_MAX_2500:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    .line 31
    new-instance v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    const/4 v1, 0x6

    const v2, 0x493e0

    const-string v7, "ZOOM_MIN_60_MAX_3000"

    invoke-direct {v0, v7, v1, v3, v2}, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->ZOOM_MIN_60_MAX_3000:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    .line 33
    new-instance v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    const/4 v1, 0x7

    const v2, 0x7a120

    const-string v7, "ZOOM_MIN_60_MAX_5000"

    invoke-direct {v0, v7, v1, v3, v2}, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->ZOOM_MIN_60_MAX_5000:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    .line 34
    new-instance v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    const/16 v1, 0x8

    const v2, 0x927c0

    const-string v7, "ZOOM_MIN_60_MAX_6000"

    invoke-direct {v0, v7, v1, v3, v2}, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->ZOOM_MIN_60_MAX_6000:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    .line 36
    new-instance v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    const/16 v1, 0x9

    const v2, 0x124f80

    const-string v7, "ZOOM_MIN_60_MAX_12000"

    invoke-direct {v0, v7, v1, v3, v2}, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->ZOOM_MIN_60_MAX_12000:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    .line 38
    new-instance v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    const-string v1, "ZOOM_MIN_100_MAX_500"

    const/16 v2, 0xa

    const/16 v7, 0x2710

    invoke-direct {v0, v1, v2, v7, v4}, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->ZOOM_MIN_100_MAX_500:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    .line 40
    new-instance v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    const-string v1, "ZOOM_MIN_100_MAX_1000"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v7, v5}, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->ZOOM_MIN_100_MAX_1000:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    .line 42
    new-instance v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    const-string v1, "ZOOM_MIN_100_MAX_1500"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v7, v6}, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->ZOOM_MIN_100_MAX_1500:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    .line 44
    new-instance v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    const/16 v1, 0xd

    const v2, 0xf4240

    const-string v4, "ZOOM_MIN_60_MAX_10000"

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->ZOOM_MIN_60_MAX_10000:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    .line 17
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->$values()[Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->$VALUES:[Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput p3, p0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->mMinValue:I

    .line 59
    iput p4, p0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->mMaxValue:I

    return-void
.end method

.method public static getSmoothZoomStyle(II)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;
    .registers 7

    .line 63
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->values()[Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 64
    iget v4, v3, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->mMinValue:I

    if-ne v4, p0, :cond_13

    iget v4, v3, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->mMaxValue:I

    if-ne v4, p1, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 68
    :cond_16
    sget-object p0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->NONE:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    return-object p0
.end method

.method public static getZoomFactory(Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;)Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;
    .registers 2

    .line 72
    new-instance v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;-><init>()V

    .line 73
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_56

    :pswitch_c
    return-object v0

    .line 105
    :pswitch_d
    new-instance p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max10000Factory;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max10000Factory;-><init>()V

    return-object p0

    .line 108
    :pswitch_13
    new-instance p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1500Factory;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1500Factory;-><init>()V

    return-object p0

    .line 96
    :pswitch_19
    new-instance p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;-><init>()V

    return-object p0

    .line 93
    :pswitch_1f
    new-instance p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max500Factory;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max500Factory;-><init>()V

    return-object p0

    .line 102
    :pswitch_25
    new-instance p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;-><init>()V

    return-object p0

    .line 87
    :pswitch_2b
    new-instance p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max6000Factory;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max6000Factory;-><init>()V

    return-object p0

    .line 84
    :pswitch_31
    new-instance p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max5000Factory;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max5000Factory;-><init>()V

    return-object p0

    .line 81
    :pswitch_37
    new-instance p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;-><init>()V

    return-object p0

    .line 99
    :pswitch_3d
    new-instance p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max2000Factory;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max2000Factory;-><init>()V

    return-object p0

    .line 78
    :pswitch_43
    new-instance p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1500Factory;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1500Factory;-><init>()V

    return-object p0

    .line 90
    :pswitch_49
    new-instance p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;-><init>()V

    return-object p0

    .line 75
    :pswitch_4f
    new-instance p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;-><init>()V

    return-object p0

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_49
        :pswitch_43
        :pswitch_3d
        :pswitch_c
        :pswitch_37
        :pswitch_31
        :pswitch_2b
        :pswitch_25
        :pswitch_1f
        :pswitch_19
        :pswitch_13
        :pswitch_d
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;
    .registers 2

    .line 17
    const-class v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;
    .registers 1

    .line 17
    sget-object v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->$VALUES:[Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    return-object v0
.end method


# virtual methods
.method public getMaxValue()I
    .registers 1

    .line 54
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->mMaxValue:I

    return p0
.end method

.method public getMinValue()I
    .registers 1

    .line 50
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->mMinValue:I

    return p0
.end method
