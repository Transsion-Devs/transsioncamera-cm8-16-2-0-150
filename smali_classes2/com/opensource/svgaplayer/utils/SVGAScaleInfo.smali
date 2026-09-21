.class public final Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opensource/svgaplayer/utils/SVGAScaleInfo$WhenMappings;
    }
.end annotation


# instance fields
.field private ratio:F

.field private ratioX:Z

.field private scaleFx:F

.field private scaleFy:F

.field private tranFx:F

.field private tranFy:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    iput v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 13
    iput v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    .line 14
    iput v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    return-void
.end method

.method private final resetVar()V
    .registers 2

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFx:F

    .line 19
    iput v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFy:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    iput v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 21
    iput v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    .line 22
    iput v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    return-void
.end method


# virtual methods
.method public final getRatioX()Z
    .registers 1

    .line 15
    iget-boolean p0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    return p0
.end method

.method public final getScaleFx()F
    .registers 1

    .line 12
    iget p0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    return p0
.end method

.method public final getScaleFy()F
    .registers 1

    .line 13
    iget p0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    return p0
.end method

.method public final getTranFx()F
    .registers 1

    .line 10
    iget p0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFx:F

    return p0
.end method

.method public final getTranFy()F
    .registers 1

    .line 11
    iget p0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFy:F

    return p0
.end method

.method public final performScaleType(FFFFLandroid/widget/ImageView$ScaleType;)V
    .registers 15

    const-string v0, "scaleType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-nez v1, :cond_b

    return-void

    :cond_b
    cmpg-float v1, p2, v0

    if-nez v1, :cond_10

    return-void

    :cond_10
    cmpg-float v1, p3, v0

    if-nez v1, :cond_15

    return-void

    :cond_15
    cmpg-float v0, p4, v0

    if-nez v0, :cond_1a

    return-void

    .line 31
    :cond_1a
    invoke-direct {p0}, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->resetVar()V

    sub-float v0, p1, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v2, p2, p4

    div-float/2addr v2, v1

    div-float v3, p3, p4

    div-float v4, p1, p2

    div-float v5, p2, p4

    div-float v6, p1, p3

    .line 41
    sget-object v7, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    aget p5, v7, p5

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch p5, :pswitch_data_fc

    .line 138
    iput v6, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    .line 139
    iput-boolean v8, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    .line 140
    iput v6, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 141
    iput v6, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    return-void

    .line 132
    :pswitch_43
    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    cmpl-float p1, v6, v5

    if-lez p1, :cond_4e

    move v7, v8

    .line 133
    :cond_4e
    iput-boolean v7, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    .line 134
    iput v6, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 135
    iput v5, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    return-void

    :pswitch_55
    cmpl-float p5, v3, v4

    if-lez p5, :cond_66

    .line 117
    iput v6, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    .line 118
    iput-boolean v8, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    .line 119
    iput v6, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 120
    iput v6, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    mul-float/2addr p4, v6

    sub-float/2addr p2, p4

    .line 121
    iput p2, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFy:F

    return-void

    .line 124
    :cond_66
    iput v5, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    .line 125
    iput-boolean v7, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    .line 126
    iput v5, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 127
    iput v5, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    mul-float/2addr p3, v5

    sub-float/2addr p1, p3

    .line 128
    iput p1, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFx:F

    return-void

    :pswitch_73
    cmpl-float p1, v3, v4

    if-lez p1, :cond_80

    .line 103
    iput v6, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    .line 104
    iput-boolean v8, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    .line 105
    iput v6, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 106
    iput v6, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    return-void

    .line 109
    :cond_80
    iput v5, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    .line 110
    iput-boolean v7, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    .line 111
    iput v5, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 112
    iput v5, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    return-void

    :pswitch_89
    cmpl-float p5, v3, v4

    if-lez p5, :cond_9b

    .line 87
    iput v6, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    .line 88
    iput-boolean v8, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    .line 89
    iput v6, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 90
    iput v6, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    mul-float/2addr p4, v6

    sub-float/2addr p2, p4

    div-float/2addr p2, v1

    .line 91
    iput p2, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFy:F

    return-void

    .line 94
    :cond_9b
    iput v5, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    .line 95
    iput-boolean v7, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    .line 96
    iput v5, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 97
    iput v5, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    mul-float/2addr p3, v5

    sub-float/2addr p1, p3

    div-float/2addr p1, v1

    .line 98
    iput p1, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFx:F

    return-void

    :pswitch_a9
    cmpg-float p5, p3, p1

    if-gez p5, :cond_b6

    cmpg-float p5, p4, p2

    if-gez p5, :cond_b6

    .line 64
    iput v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFx:F

    .line 65
    iput v2, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFy:F

    return-void

    :cond_b6
    cmpl-float p5, v3, v4

    if-lez p5, :cond_c8

    .line 69
    iput v6, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    .line 70
    iput-boolean v8, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    .line 71
    iput v6, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 72
    iput v6, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    mul-float/2addr p4, v6

    sub-float/2addr p2, p4

    div-float/2addr p2, v1

    .line 73
    iput p2, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFy:F

    return-void

    .line 77
    :cond_c8
    iput v5, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    .line 78
    iput-boolean v7, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    .line 79
    iput v5, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 80
    iput v5, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    mul-float/2addr p3, v5

    sub-float/2addr p1, p3

    div-float/2addr p1, v1

    .line 81
    iput p1, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFx:F

    return-void

    :pswitch_d6
    cmpl-float p5, v3, v4

    if-lez p5, :cond_e8

    .line 48
    iput v5, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    .line 49
    iput-boolean v7, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    .line 50
    iput v5, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 51
    iput v5, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    mul-float/2addr p3, v5

    sub-float/2addr p1, p3

    div-float/2addr p1, v1

    .line 52
    iput p1, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFx:F

    return-void

    .line 55
    :cond_e8
    iput v6, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    .line 56
    iput-boolean v8, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    .line 57
    iput v6, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 58
    iput v6, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    mul-float/2addr p4, v6

    sub-float/2addr p2, p4

    div-float/2addr p2, v1

    .line 59
    iput p2, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFy:F

    return-void

    .line 43
    :pswitch_f6
    iput v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFx:F

    .line 44
    iput v2, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFy:F

    return-void

    nop

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_f6
        :pswitch_d6
        :pswitch_a9
        :pswitch_89
        :pswitch_73
        :pswitch_55
        :pswitch_43
    .end packed-switch
.end method
