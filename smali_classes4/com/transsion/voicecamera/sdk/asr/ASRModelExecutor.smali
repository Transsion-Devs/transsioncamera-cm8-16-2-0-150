.class public Lcom/transsion/voicecamera/sdk/asr/ASRModelExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static asrPointer:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native asrEngineDestroy(J)Z
.end method

.method public static native asrEngineInit(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public static native asrEngineRunFromBuffer(J[FI[I)Lcom/transsion/voicecamera/sdk/asr/ASRResult;
.end method
