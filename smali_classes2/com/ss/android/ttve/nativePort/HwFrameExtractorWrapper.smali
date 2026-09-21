.class public Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HwFrameExtractorWrapper"


# instance fields
.field private mExtractor:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

.field private mExtractorRange:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

.field private mNativeAddr:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;->mExtractor:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    .line 18
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;->mExtractorRange:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    .line 21
    iput-wide p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;->mNativeAddr:J

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;JLjava/nio/ByteBuffer;III)Z
    .registers 7

    .line 14
    invoke-direct/range {p0 .. p6}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;->nativeOnFrameAvailable(JLjava/nio/ByteBuffer;III)Z

    move-result p0

    return p0
.end method

.method public static create(J)Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;
    .registers 3

    .line 25
    new-instance v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;-><init>(J)V

    return-object v0
.end method

.method private native nativeOnFrameAvailable(JLjava/nio/ByteBuffer;III)Z
.end method


# virtual methods
.method public startExtractFrame(Ljava/lang/String;[IIIII)V
    .registers 18

    .line 29
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;->mNativeAddr:J

    .line 30
    new-instance v2, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    new-instance v10, Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper$1;

    invoke-direct {v10, p0, v0, v1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper$1;-><init>(Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;J)V

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;-><init>(Ljava/lang/String;[IIIZIILcom/ss/android/vesdk/VEFrameAvailableListener;)V

    iput-object v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;->mExtractor:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    .line 37
    invoke-virtual {v2}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->start()V

    return-void
.end method

.method public startExtractFrameForRangeTime(Ljava/lang/String;IIIII)V
    .registers 18

    .line 41
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;->mNativeAddr:J

    .line 42
    new-instance v2, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    new-instance v10, Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper$2;

    invoke-direct {v10, p0, v0, v1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper$2;-><init>(Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;J)V

    const/4 v8, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;-><init>(Ljava/lang/String;IIIIZILcom/ss/android/vesdk/VEFrameAvailableListener;)V

    iput-object v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;->mExtractorRange:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    return-void
.end method

.method public stop()V
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;->mExtractor:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 52
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->stopSync()V

    .line 53
    iput-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;->mExtractor:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    .line 56
    :cond_a
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;->mExtractorRange:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    if-eqz v0, :cond_13

    .line 57
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->stopSync()V

    .line 58
    iput-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;->mExtractorRange:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    :cond_13
    return-void
.end method
