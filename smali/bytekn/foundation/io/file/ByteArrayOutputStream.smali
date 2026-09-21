.class public Lbytekn/foundation/io/file/ByteArrayOutputStream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbytekn/foundation/io/file/ByteArrayOutputStream$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lbytekn/foundation/io/file/ByteArrayOutputStream$Companion;

# The value of this static final field might be set in the static constructor
.field private static final MAX_ARRAY_SIZE:I = 0x7ffffff7


# instance fields
.field private buf:[B

.field private count:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lbytekn/foundation/io/file/ByteArrayOutputStream$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbytekn/foundation/io/file/ByteArrayOutputStream$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbytekn/foundation/io/file/ByteArrayOutputStream;->Companion:Lbytekn/foundation/io/file/ByteArrayOutputStream$Companion;

    const v0, 0x7ffffff7

    .line 206
    sput v0, Lbytekn/foundation/io/file/ByteArrayOutputStream;->MAX_ARRAY_SIZE:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_f

    .line 66
    new-array p1, p1, [B

    iput-object p1, p0, Lbytekn/foundation/io/file/ByteArrayOutputStream;->buf:[B

    return-void

    .line 65
    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Negative initial size: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    const/16 p1, 0x20

    .line 52
    :cond_6
    invoke-direct {p0, p1}, Lbytekn/foundation/io/file/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$getMAX_ARRAY_SIZE$cp()I
    .registers 1

    .line 52
    sget v0, Lbytekn/foundation/io/file/ByteArrayOutputStream;->MAX_ARRAY_SIZE:I

    return v0
.end method

.method private final ensureCapacity(I)V
    .registers 3

    .line 82
    iget-object v0, p0, Lbytekn/foundation/io/file/ByteArrayOutputStream;->buf:[B

    array-length v0, v0

    sub-int v0, p1, v0

    if-lez v0, :cond_a

    .line 83
    invoke-direct {p0, p1}, Lbytekn/foundation/io/file/ByteArrayOutputStream;->grow(I)V

    :cond_a
    return-void
.end method

.method private final grow(I)V
    .registers 4

    .line 94
    iget-object v0, p0, Lbytekn/foundation/io/file/ByteArrayOutputStream;->buf:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    sub-int v1, v0, p1

    if-gez v1, :cond_a

    move v0, p1

    .line 98
    :cond_a
    sget v1, Lbytekn/foundation/io/file/ByteArrayOutputStream;->MAX_ARRAY_SIZE:I

    sub-int v1, v0, v1

    if-lez v1, :cond_16

    .line 99
    sget-object v0, Lbytekn/foundation/io/file/ByteArrayOutputStream;->Companion:Lbytekn/foundation/io/file/ByteArrayOutputStream$Companion;

    # invokes: Lbytekn/foundation/io/file/ByteArrayOutputStream$Companion;->hugeCapacity(I)I
    invoke-static {v0, p1}, Lbytekn/foundation/io/file/ByteArrayOutputStream$Companion;->access$hugeCapacity(Lbytekn/foundation/io/file/ByteArrayOutputStream$Companion;I)I

    move-result v0

    .line 100
    :cond_16
    iget-object p1, p0, Lbytekn/foundation/io/file/ByteArrayOutputStream;->buf:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v0, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lbytekn/foundation/io/file/ByteArrayOutputStream;->buf:[B

    return-void
.end method


# virtual methods
.method protected final getBuf()[B
    .registers 1

    .line 57
    iget-object p0, p0, Lbytekn/foundation/io/file/ByteArrayOutputStream;->buf:[B

    return-object p0
.end method

.method protected final getCount()I
    .registers 1

    .line 62
    iget p0, p0, Lbytekn/foundation/io/file/ByteArrayOutputStream;->count:I

    return p0
.end method

.method public final toByteArray()[B
    .registers 2

    .line 165
    iget-object v0, p0, Lbytekn/foundation/io/file/ByteArrayOutputStream;->buf:[B

    iget p0, p0, Lbytekn/foundation/io/file/ByteArrayOutputStream;->count:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v0, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 194
    iget-object p0, p0, Lbytekn/foundation/io/file/ByteArrayOutputStream;->buf:[B

    invoke-virtual {p0}, [B->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final write([BII)V
    .registers 7

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p2, :cond_26

    .line 124
    array-length v0, p1

    if-gt p2, v0, :cond_26

    if-ltz p3, :cond_26

    add-int v0, p2, p3

    array-length v1, p1

    sub-int v1, v0, v1

    if-gtz v1, :cond_26

    .line 127
    iget v1, p0, Lbytekn/foundation/io/file/ByteArrayOutputStream;->count:I

    add-int/2addr v1, p3

    invoke-direct {p0, v1}, Lbytekn/foundation/io/file/ByteArrayOutputStream;->ensureCapacity(I)V

    .line 128
    iget-object v1, p0, Lbytekn/foundation/io/file/ByteArrayOutputStream;->buf:[B

    iget v2, p0, Lbytekn/foundation/io/file/ByteArrayOutputStream;->count:I

    invoke-static {p1, v1, v2, p2, v0}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 129
    iget p1, p0, Lbytekn/foundation/io/file/ByteArrayOutputStream;->count:I

    add-int/2addr p1, p3

    iput p1, p0, Lbytekn/foundation/io/file/ByteArrayOutputStream;->count:I

    return-void

    .line 125
    :cond_26
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
