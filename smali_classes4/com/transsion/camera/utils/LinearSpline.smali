.class public Lcom/transsion/camera/utils/LinearSpline;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mM:[F

.field private final mX:[I

.field private final mY:[I


# direct methods
.method public constructor <init>([I[I)V
    .registers 10

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_36

    if-eqz p2, :cond_36

    .line 20
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_36

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_36

    .line 24
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 25
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/transsion/camera/utils/LinearSpline;->mM:[F

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_31

    .line 27
    iget-object v2, p0, Lcom/transsion/camera/utils/LinearSpline;->mM:[F

    add-int/lit8 v3, v1, 0x1

    aget v4, p2, v3

    aget v5, p2, v1

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    aget v5, p1, v3

    aget v6, p1, v1

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, v2, v1

    move v1, v3

    goto :goto_17

    .line 29
    :cond_31
    iput-object p1, p0, Lcom/transsion/camera/utils/LinearSpline;->mX:[I

    .line 30
    iput-object p2, p0, Lcom/transsion/camera/utils/LinearSpline;->mY:[I

    return-void

    .line 21
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "There must be at least two control points and the arrays must be of equal length."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public interpolate(I)I
    .registers 6

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/utils/LinearSpline;->mX:[I

    array-length v1, v0

    const/4 v2, 0x0

    .line 39
    aget v3, v0, v2

    if-gt p1, v3, :cond_d

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/utils/LinearSpline;->mY:[I

    aget p0, p0, v2

    return p0

    :cond_d
    add-int/lit8 v1, v1, -0x1

    .line 42
    aget v0, v0, v1

    if-lt p1, v0, :cond_18

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/utils/LinearSpline;->mY:[I

    aget p0, p0, v1

    return p0

    .line 49
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/transsion/camera/utils/LinearSpline;->mX:[I

    add-int/lit8 v1, v2, 0x1

    aget v3, v0, v1

    if-lt p1, v3, :cond_29

    if-ne p1, v3, :cond_27

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/utils/LinearSpline;->mY:[I

    aget p0, p0, v1

    return p0

    :cond_27
    move v2, v1

    goto :goto_18

    .line 55
    :cond_29
    iget-object v1, p0, Lcom/transsion/camera/utils/LinearSpline;->mY:[I

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object p0, p0, Lcom/transsion/camera/utils/LinearSpline;->mM:[F

    aget p0, p0, v2

    aget v0, v0, v2

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    float-to-int p0, v1

    return p0
.end method
