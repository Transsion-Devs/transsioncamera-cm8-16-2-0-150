.class public Lcom/ss/android/ttve/utils/EaseBounceOutInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 7

    float-to-double v0, p1

    const-wide v2, 0x3fd745d1745d1746L    # 0.36363636363636365

    cmpg-double p0, v0, v2

    const/high16 v2, 0x40f20000    # 7.5625f

    if-gez p0, :cond_f

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    return v2

    :cond_f
    const-wide v3, 0x3fe745d1745d1746L    # 0.7272727272727273

    cmpg-double p0, v0, v3

    if-gez p0, :cond_22

    const p0, 0x3f0ba2e9

    sub-float/2addr p1, p0

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    const/high16 p0, 0x3f400000    # 0.75f

    add-float/2addr v2, p0

    return v2

    :cond_22
    const-wide v3, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double p0, v0, v3

    if-gez p0, :cond_35

    const p0, 0x3f51745d

    sub-float/2addr p1, p0

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    const/high16 p0, 0x3f700000    # 0.9375f

    add-float/2addr v2, p0

    return v2

    :cond_35
    const p0, 0x3f745d17

    sub-float/2addr p1, p0

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    const/high16 p0, 0x3f7c0000    # 0.984375f

    add-float/2addr v2, p0

    return v2
.end method
