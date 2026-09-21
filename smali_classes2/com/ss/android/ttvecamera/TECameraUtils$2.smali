.class Lcom/ss/android/ttvecamera/TECameraUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraUtils;->getClosestFpsRangeFromRest([ILjava/util/List;)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[I>;"
    }
.end annotation


# static fields
.field private static final MAX_FPS_HIGH_DIFF_WEIGHT:I = 0x1

.field private static final MAX_FPS_LOW_DIFF_WEIGHT:I = 0x4

.field private static final MIN_FPS_HIGH_DIFF_WEIGHT:I = 0x3

.field private static final MIN_FPS_LOW_DIFF_WEIGHT:I = 0x2


# instance fields
.field final synthetic val$fpsRange:[I


# direct methods
.method constructor <init>([I)V
    .registers 2

    .line 221
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraUtils$2;->val$fpsRange:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private diff([I)I
    .registers 4

    .line 232
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraUtils$2;->val$fpsRange:[I

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v0, p1, v0

    if-le v1, v0, :cond_d

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    goto :goto_10

    :cond_d
    sub-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x3

    :goto_10
    const/4 v0, 0x1

    .line 234
    aget p0, p0, v0

    aget p1, p1, v0

    if-le p0, p1, :cond_1b

    sub-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x4

    goto :goto_1d

    :cond_1b
    sub-int p0, p1, p0

    :goto_1d
    add-int/2addr v1, p0

    return v1
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 221
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraUtils$2;->compare([I[I)I

    move-result p0

    return p0
.end method

.method public compare([I[I)I
    .registers 3

    .line 241
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraUtils$2;->diff([I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/ss/android/ttvecamera/TECameraUtils$2;->diff([I)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method
