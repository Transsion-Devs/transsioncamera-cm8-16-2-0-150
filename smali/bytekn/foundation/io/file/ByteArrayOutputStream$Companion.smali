.class public final Lbytekn/foundation/io/file/ByteArrayOutputStream$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbytekn/foundation/io/file/ByteArrayOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 198
    invoke-direct {p0}, Lbytekn/foundation/io/file/ByteArrayOutputStream$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$hugeCapacity(Lbytekn/foundation/io/file/ByteArrayOutputStream$Companion;I)I
    .registers 2

    .line 198
    invoke-direct {p0, p1}, Lbytekn/foundation/io/file/ByteArrayOutputStream$Companion;->hugeCapacity(I)I

    move-result p0

    return p0
.end method

.method private final hugeCapacity(I)I
    .registers 2

    if-ltz p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    if-eqz p0, :cond_16

    .line 212
    # getter for: Lbytekn/foundation/io/file/ByteArrayOutputStream;->MAX_ARRAY_SIZE:I
    invoke-static {}, Lbytekn/foundation/io/file/ByteArrayOutputStream;->access$getMAX_ARRAY_SIZE$cp()I

    move-result p0

    if-le p1, p0, :cond_11

    const p0, 0x7fffffff

    return p0

    .line 215
    :cond_11
    # getter for: Lbytekn/foundation/io/file/ByteArrayOutputStream;->MAX_ARRAY_SIZE:I
    invoke-static {}, Lbytekn/foundation/io/file/ByteArrayOutputStream;->access$getMAX_ARRAY_SIZE$cp()I

    move-result p0

    return p0

    .line 209
    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "out of memory!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
