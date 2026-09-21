.class public Lcom/ss/android/ttve/nativePort/TESpeechTest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private handle:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/ss/android/ttve/nativePort/TESpeechTest;
    .registers 3

    .line 16
    new-instance v0, Lcom/ss/android/ttve/nativePort/TESpeechTest;

    invoke-direct {v0}, Lcom/ss/android/ttve/nativePort/TESpeechTest;-><init>()V

    .line 17
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TESpeechTest;->createSpeechUtils()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/android/ttve/nativePort/TESpeechTest;->handle:J

    return-object v0
.end method

.method private static native createSpeechUtils()J
.end method

.method private static native init(J)V
.end method

.method private static native process(J[SI)I
.end method

.method private static native stop(J)I
.end method


# virtual methods
.method public init()V
    .registers 3

    .line 22
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TESpeechTest;->handle:J

    invoke-static {v0, v1}, Lcom/ss/android/ttve/nativePort/TESpeechTest;->init(J)V

    return-void
.end method

.method public process([SI)I
    .registers 5

    .line 26
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TESpeechTest;->handle:J

    invoke-static {v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TESpeechTest;->process(J[SI)I

    move-result p0

    return p0
.end method

.method public stop()I
    .registers 3

    .line 30
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TESpeechTest;->handle:J

    invoke-static {v0, v1}, Lcom/ss/android/ttve/nativePort/TESpeechTest;->stop(J)I

    move-result p0

    return p0
.end method
