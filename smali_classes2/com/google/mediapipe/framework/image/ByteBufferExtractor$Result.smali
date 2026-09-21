.class abstract Lcom/google/mediapipe/framework/image/ByteBufferExtractor$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/framework/image/ByteBufferExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Result"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Ljava/nio/ByteBuffer;I)Lcom/google/mediapipe/framework/image/ByteBufferExtractor$Result;
    .registers 3

    .line 128
    new-instance v0, Lcom/google/mediapipe/framework/image/AutoValue_ByteBufferExtractor_Result;

    invoke-direct {v0, p0, p1}, Lcom/google/mediapipe/framework/image/AutoValue_ByteBufferExtractor_Result;-><init>(Ljava/nio/ByteBuffer;I)V

    return-object v0
.end method


# virtual methods
.method public abstract buffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract format()I
.end method
