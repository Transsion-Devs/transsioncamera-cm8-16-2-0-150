.class public Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry$z1OoOdo;
.super Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "z1OoOdo"
.end annotation


# instance fields
.field public final synthetic z1OoOtry:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;


# direct methods
.method public constructor <init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;)V
    .registers 2

    iput-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry$z1OoOdo;->z1OoOtry:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;

    invoke-direct {p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;-><init>()V

    return-void
.end method


# virtual methods
.method public z1OoOdo(Landroid/view/View;Landroid/view/MotionEvent;Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOif;)Z
    .registers 12

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    aget v3, v0, v1

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    const/4 v4, 0x1

    aget v0, v0, v4

    int-to-float v0, v0

    add-float/2addr p2, v0

    add-float/2addr p2, v3

    float-to-int p2, p2

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry$z1OoOdo;->z1OoOtry:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;

    iget v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOvoid:I

    const-string v5, "BounceEffect"

    const v6, 0x7fffffff

    if-eq v3, v6, :cond_cd

    iget v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoObreak:I

    if-ne v3, v6, :cond_2f

    goto/16 :goto_cd

    :cond_2f
    iget v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOcatch:I

    sub-int v3, v2, v3

    iget v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOclass:I

    sub-int v0, p2, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0x3e8

    if-gt v6, v7, :cond_b0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v7, :cond_47

    goto/16 :goto_b0

    :cond_47
    iget-object v5, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry$z1OoOdo;->z1OoOtry:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;

    iput v2, v5, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOcatch:I

    iput p2, v5, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOclass:I

    iget-object v2, v5, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;

    const/4 v6, 0x0

    if-eq v2, p3, :cond_5a

    iget-object v2, v5, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;

    if-ne v2, p3, :cond_57

    goto :goto_5a

    :cond_57
    iput-boolean v1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOfor:Z

    goto :goto_96

    :cond_5a
    :goto_5a
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le p3, v2, :cond_7d

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOdo:F

    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry$z1OoOdo;->z1OoOtry:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;

    iget p1, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoObreak:I

    sub-int/2addr p2, p1

    int-to-float p1, p2

    iput p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOnew:F

    int-to-float p1, v0

    iput p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOif:F

    cmpl-float p1, p1, v6

    if-lez p1, :cond_7a

    move v1, v4

    :cond_7a
    iput-boolean v1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOint:Z

    return v4

    :cond_7d
    iget-boolean p3, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOfor:Z

    if-nez p3, :cond_96

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget-object v2, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry$z1OoOdo;->z1OoOtry:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;

    iget v2, v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOconst:I

    if-le p3, v2, :cond_96

    if-eqz v0, :cond_96

    if-gez v0, :cond_91

    const/4 p3, -0x1

    goto :goto_92

    :cond_91
    move p3, v4

    :goto_92
    mul-int v0, v2, p3

    iput-boolean v4, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOfor:Z

    :cond_96
    :goto_96
    iget-object p3, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry$z1OoOdo;->z1OoOtry:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;

    iget p3, p3, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoObreak:I

    sub-int/2addr p2, p3

    int-to-float p2, p2

    iput p2, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOnew:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOdo:F

    int-to-float p1, v0

    iput p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOif:F

    cmpl-float p1, p1, v6

    if-lez p1, :cond_ac

    goto :goto_ad

    :cond_ac
    move v4, v1

    :goto_ad
    iput-boolean v4, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOint:Z

    return v1

    :cond_b0
    :goto_b0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "current move distance exception need abandon dx="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dy="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_c9
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_cd
    :goto_cd
    iput v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOcatch:I

    iput v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOvoid:I

    iput p2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOclass:I

    iput p2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoObreak:I

    iput-boolean v1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOfor:Z

    const-string p0, "touch move but not down yet"

    goto :goto_c9
.end method
