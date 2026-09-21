.class public Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif$z1OoOdo;
.super Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "z1OoOdo"
.end annotation


# instance fields
.field public final synthetic z1OoOtry:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;


# direct methods
.method public constructor <init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;)V
    .registers 2

    iput-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif$z1OoOdo;->z1OoOtry:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;

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

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif$z1OoOdo;->z1OoOtry:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;

    iget v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOvoid:I

    const-string v5, "BounceEffect"

    const v6, 0x7fffffff

    if-eq v3, v6, :cond_bc

    iget v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoObreak:I

    if-ne v3, v6, :cond_2f

    goto/16 :goto_bc

    :cond_2f
    iget v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOcatch:I

    sub-int v3, v2, v3

    iget v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOclass:I

    sub-int v0, p2, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0x3e8

    if-gt v6, v7, :cond_9f

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v7, :cond_46

    goto :goto_9f

    :cond_46
    iget-object v5, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif$z1OoOdo;->z1OoOtry:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;

    iput v2, v5, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOcatch:I

    iput p2, v5, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOclass:I

    iget-object p2, v5, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;

    const/4 v2, 0x0

    if-eq p2, p3, :cond_59

    iget-object p2, v5, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;

    if-ne p2, p3, :cond_56

    goto :goto_59

    :cond_56
    iput-boolean v1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOfor:Z

    goto :goto_8d

    :cond_59
    :goto_59
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-le p2, p3, :cond_74

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOdo:F

    int-to-float p1, v3

    iput p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOif:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_71

    move v1, v4

    :cond_71
    iput-boolean v1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOint:Z

    return v4

    :cond_74
    iget-boolean p2, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOfor:Z

    if-nez p2, :cond_8d

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget-object p3, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif$z1OoOdo;->z1OoOtry:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;

    iget p3, p3, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOconst:I

    if-le p2, p3, :cond_8d

    if-eqz v3, :cond_8d

    if-gez v3, :cond_88

    const/4 p2, -0x1

    goto :goto_89

    :cond_88
    move p2, v4

    :goto_89
    mul-int v3, p3, p2

    iput-boolean v4, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOfor:Z

    :cond_8d
    :goto_8d
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOdo:F

    int-to-float p1, v3

    iput p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOif:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_9b

    goto :goto_9c

    :cond_9b
    move v4, v1

    :goto_9c
    iput-boolean v4, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOint:Z

    return v1

    :cond_9f
    :goto_9f
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

    :goto_b8
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_bc
    :goto_bc
    iput v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOcatch:I

    iput v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOvoid:I

    iput p2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOclass:I

    iput p2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoObreak:I

    iput-boolean v1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOfor:Z

    const-string p0, "touch move but not down yet"

    goto :goto_b8
.end method
