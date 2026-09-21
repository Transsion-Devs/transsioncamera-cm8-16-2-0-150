.class public Lcom/ss/android/vesdk/filterparam/HslParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final VEHSLColorType_BLUE:I = 0x5

.field public static final VEHSLColorType_CYAN:I = 0x4

.field public static final VEHSLColorType_GREEN:I = 0x3

.field public static final VEHSLColorType_MAGENTA:I = 0x7

.field public static final VEHSLColorType_ORANGE:I = 0x1

.field public static final VEHSLColorType_PURPLE:I = 0x6

.field public static final VEHSLColorType_RED:I = 0x0

.field public static final VEHSLColorType_YELLOW:I = 0x2


# instance fields
.field public colorType:I

.field public hslValue:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/ss/android/vesdk/filterparam/HslParam;->colorType:I

    .line 21
    filled-new-array {v0, v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/HslParam;->hslValue:[I

    return-void
.end method


# virtual methods
.method public getColorType()I
    .registers 1

    .line 33
    iget p0, p0, Lcom/ss/android/vesdk/filterparam/HslParam;->colorType:I

    return p0
.end method

.method public getHslValue()[I
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/ss/android/vesdk/filterparam/HslParam;->hslValue:[I

    return-object p0
.end method

.method public setColorType(I)V
    .registers 2

    .line 25
    iput p1, p0, Lcom/ss/android/vesdk/filterparam/HslParam;->colorType:I

    return-void
.end method

.method public setHsl([I)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/ss/android/vesdk/filterparam/HslParam;->hslValue:[I

    return-void
.end method
